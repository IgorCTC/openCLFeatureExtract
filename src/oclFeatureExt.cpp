#include "../include/FeatureStats.h"
#include "../include/InputParser.h"

using namespace std;
using namespace llvm;

const string usage = "Usage:\n\t-h help\n\t-f <kernel bitcode file>\n\t-o <output file>\n\t-v verbose\n";

void evalInstruction(const Instruction &inst, FeatureStats &stats);
bool checkAddrSpace(const unsigned addrSpaceId, FeatureStats &stats);
void writeToCSV(const string &outFile, const FeatureStats &stats);

bool verbose = false;

int main(int argc, char* argv[]) {
    InputParser input(argc, argv);
    
    if(input.cmdOptionExists("-h")) {
        outs() << usage;
        exit(0);
    }
    if(input.cmdOptionExists("-v")) {
        verbose = true;
    }
    const string &fileName = input.getCmdOption("-f");
    if (fileName.empty()){
        outs() << usage;
        exit(1);
    }
    const string &outFile = input.getCmdOption("-o");
    if (outFile.empty()){
        outs() << usage;
        exit(1);
    }
    
    FeatureStats stats;

    ErrorOr<unique_ptr<MemoryBuffer>> fileBuffer = MemoryBuffer::getFile(fileName);
    if (error_code ec = fileBuffer.getError())
		errs() << "ERROR loading bitcode file: " << fileName << " -- " << ec.message() << "\n";
	else
		outs() << "Bitcode file loaded: " << fileName << "\n";  
    
    
    LLVMContext context;
    MemoryBufferRef memRef = (*fileBuffer)->getMemBufferRef();
    Expected<unique_ptr<Module>> bcModule = parseBitcodeFile(memRef, context);
    if (!bcModule)
            errs() << "ERROR parsing bitcode file" << bcModule.takeError() << "\n";
    else
            outs() << "Bitcode parsed successfully!"<< "\n";
    
       
    for (Module::const_iterator curFref = (*bcModule)->getFunctionList().begin(),
         endFref = (*bcModule)->getFunctionList().end();
         curFref != endFref; curFref++) {
        stats.funcount++;

        for (Function::const_iterator curBref = curFref->begin(), endBref = curFref->end();
         curBref != endBref; curBref++) {
            stats.bbcount++;
            for (BasicBlock::const_iterator curIref = curBref->begin(), endIref = curBref->end();
                 curIref != endIref; curIref++) {
                if(verbose) outs() << "Found an instruction: " << *curIref << "\n";        
                evalInstruction(*curIref, stats);               
            }
            
        }
    }
    
    outs() << stats << "\n\n";
    writeToCSV(outFile, stats);
}

void evalInstruction(const Instruction &inst, FeatureStats &stats) {

    string opName = inst.getOpcodeName();
    if(BIN_OPS.find(opName) != BIN_OPS.end()) {
        stats.binOpsCount++;
    }
    else if(BITBIN_OPS.find(opName) != BITBIN_OPS.end()) {
        stats.bitbinOpsCount++;
    }
    else if(AGG_OPS.find(opName) != AGG_OPS.end()) {
        stats.aggOpsCount++;
    }
    else if(VEC_OPS.find(opName) != VEC_OPS.end()) {
        stats.vecOpsCount++;
    } else if(const LoadInst *li = dyn_cast<LoadInst>(&inst)) {
        stats.loadOpsCount++;
        if (!checkAddrSpace(li->getPointerAddressSpace(), stats))
            li->print(outs());
    } else if (const StoreInst *si = dyn_cast<StoreInst>(&inst)) {
        stats.storeOpsCount++;
        if (!checkAddrSpace(si->getPointerAddressSpace(), stats))
            li->print(outs());
    } else {
        stats.otherOpsCount++;
    }
}

bool checkAddrSpace(const unsigned addrSpaceId, FeatureStats &stats) {
    if(addrSpaceId == localAddressSpace) {
        stats.localMemAcc++;
        return true;
    } else if(addrSpaceId == globalAddressSpace) {
        stats.globalMemAcc++;
        return true;
    } else if(addrSpaceId == privateAddressSpace) {
        stats.privateMemAcc++;
        return true;
    } else {
        errs() << "WARNING: unhandled address space id: " << addrSpaceId << "\n";
        return false;
    }
}

void writeToCSV(const string &outFile, const FeatureStats &stats) {
    outs() << "Writing to file: " << outFile << "\n";
    
    ofstream out;
    out.open (outFile);
    out << "functions,bbs,binOps,bitBinOps,vecOps,aggOps,loadOps,storeOps,otherOps,totalOps,gMemAcc,lMemAcc,pMemAcc" << endl;
    out << stats.funcount << "," <<
            stats.bbcount << "," <<
            stats.binOpsCount << "," <<
            stats.bitbinOpsCount << "," <<
            stats.vecOpsCount << "," <<
            stats.aggOpsCount << "," <<
            stats.loadOpsCount << "," <<
            stats.storeOpsCount << "," <<
            stats.otherOpsCount << "," <<
            stats.getTotalOpsCount() << "," <<
            stats.globalMemAcc << "," <<
            stats.localMemAcc << "," <<
            stats.privateMemAcc << endl;
    out.close();
}
