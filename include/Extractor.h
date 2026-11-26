#include "FeatureStats.h"
#include "llvm/IR/InstVisitor.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Type.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/raw_ostream.h"


using namespace llvm;

class FeatureExtractor : public InstVisitor<FeatureExtractor> {
public:
    FeatureStats stats;
    LoopInfo *LI = nullptr;

    void setLoopInfo(LoopInfo *loopInfo) { LI = loopInfo; }

    void visitFunction(Function &F) {
        if (!F.isDeclaration()) {
            stats.numFunctions++;
        }
    }

    void visitBasicBlock(BasicBlock &BB) {
        stats.numBasicBlocks++;
    }

    void visitInstruction(Instruction &I) {
        stats.numInstructions++;
        if (LI && LI->getLoopFor(I.getParent())) {
            stats.numLoopOps++;
        }

        Type *t = I.getType();
        if (t->isFloatingPointTy() || t->isFPOrFPVectorTy()) {
            stats.numFloatOps++;
        } else if (t->isIntegerTy() || t->isIntOrIntVectorTy()) {
            stats.numIntOps++;
        }
    }

    void visitReturnInst(ReturnInst &I) { stats.numReturnInsts++; }
    void visitBranchInst(BranchInst &I) { stats.numBranchInsts++; }
    void visitAllocaInst(AllocaInst &I) { stats.numMemAllocations++; }
    void visitLoadInst(LoadInst &I)     { stats.numMemLoads++; }
    void visitStoreInst(StoreInst &I)   { stats.numMemStores++; }

    void visitCmpInst(CmpInst &I) {
        stats.numConditionChecks++;
    }

    void visitCallInst(CallInst &I) {
        stats.numFunctionCalls++;
    }

    void visitBinaryOperator(BinaryOperator &I) {
        switch (I.getOpcode()) {
            case Instruction::Add:  stats.numIntAdds++; stats.numIntOps++; break;
            case Instruction::FAdd: stats.numFloatAdds++; stats.numFloatOps++; break;
            case Instruction::Sub:  stats.numIntSubs++; stats.numIntOps++; break;
            case Instruction::FSub: stats.numFloatSubs++; stats.numFloatOps++; break;
            case Instruction::Mul:  stats.numIntMults++; stats.numIntOps++; break;
            case Instruction::FMul: stats.numFloatMults++; stats.numFloatOps++; break;
            case Instruction::UDiv:
            case Instruction::SDiv: stats.numIntDivs++; stats.numIntOps++; break;
            case Instruction::FDiv: stats.numFloatDivs++; stats.numFloatOps++; break;
            default: break;
        }
    }
};