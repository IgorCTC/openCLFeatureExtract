#include <string>
#include <memory>
#include <iostream>
#include <fstream>
#include <unordered_set>

#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Module.h>
#include <llvm/Bitcode/BitcodeReader.h>
#include <llvm/Support/MemoryBuffer.h>
#include <llvm/ADT/Twine.h>
#include <llvm/IR/Instructions.h>
#include <llvm/Support/Casting.h>
#include <llvm/Support/raw_ostream.h>

const std::unordered_set<std::string> BIN_OPS = {"add","fadd", "sub", "fsub", "mul", "fmul", "udiv", "sdif", "fdiv", "urem", "srem", "frem"};
const std::unordered_set<std::string> BITBIN_OPS = {"shl","lshr", "ashr", "and", "or", "xor"};
const std::unordered_set<std::string> VEC_OPS = {"extractelement","insertelement", "shufflevector"};
const std::unordered_set<std::string> AGG_OPS = {"extractvalue","insertvalue"};

const unsigned privateAddressSpace = 0;
const unsigned localAddressSpace = 1;
const unsigned globalAddressSpace = 2;

#ifndef FEATURE_STATS_H
#define FEATURE_STATS_H

class FeatureStats {
    
public:
    int bbcount = 0;
    int funcount = 0;
 
    int binOpsCount = 0;
    int bitbinOpsCount = 0;
    int vecOpsCount = 0;
    int aggOpsCount = 0;
    int loadOpsCount = 0;
    int storeOpsCount = 0;
    int otherOpsCount = 0;
    
    int globalMemAcc = 0;
    int localMemAcc = 0;
    int privateMemAcc = 0;

    // Global operator<< overload:
    friend llvm::raw_ostream &operator<<(llvm::raw_ostream &os, const FeatureStats &stats)
    {
        os << "\n###############################\n";
        os << "#Functions: " << stats.funcount << "\n";
        os << "#Basic Blocks: " << stats.bbcount << "\n";

        os << "\n#Bin Ops: " << stats.binOpsCount << "\n";
        os << "#Bit Bin Ops: " << stats.bitbinOpsCount << "\n";
        os << "#Vec Ops: " << stats.vecOpsCount << "\n";
        os << "#Agg Ops: " << stats.aggOpsCount << "\n";
        os << "#Load Ops: " << stats.loadOpsCount << "\n";
        os << "#Store Ops: " << stats.storeOpsCount << "\n";
        os << "#Other Ops: " << stats.otherOpsCount << "\n";
        
        os << "\n#Global Mem Access: " << stats.globalMemAcc << "\n";
        os << "#Local Mem Access: " << stats.localMemAcc << "\n";
        os << "#Private Mem Access: " << stats.privateMemAcc << "\n";
        os << "-------------------------------------------\n";
        os << "#Total Ops: " << stats.getTotalOpsCount();
        
        return os;
    }
    
    int getTotalOpsCount() const {
        return binOpsCount + bitbinOpsCount + 
                vecOpsCount + aggOpsCount + otherOpsCount +
                loadOpsCount + storeOpsCount;
    }
};

#endif