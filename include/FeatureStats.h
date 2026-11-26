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

#include <cstdint>
#include <iostream>

#ifndef FEATURE_STATS_H
#define FEATURE_STATS_H

class FeatureStats {
public:
    uint64_t problemDataSize = 0;      // 1. Problem Data Size
    uint64_t numReturnInsts = 0;       // 2. Return instructions
    uint64_t numBranchInsts = 0;       // 3. Branch Instructions
    uint64_t numMemAllocations = 0;    // 4. Memory Allocations (alloca)
    uint64_t numMemLoads = 0;          // 5. Memory Loads
    uint64_t numMemStores = 0;         // 6. Memory Stores
    uint64_t numFloatMults = 0;        // 7. Float Multiplications
    uint64_t numIntMults = 0;          // 8. Integer Multiplications
    uint64_t numFloatDivs = 0;         // 9. Float Divisions
    uint64_t numIntDivs = 0;           // 10. Integer Divisions
    uint64_t numConditionChecks = 0;   // 11. Condition Checks (cmp)
    uint64_t numFloatAdds = 0;         // 12. Float Additions
    uint64_t numIntAdds = 0;           // 13. Integer Additions
    uint64_t numFloatSubs = 0;         // 14. Float Subtractions
    uint64_t numIntSubs = 0;           // 15. Integer Subtractions
    uint64_t numFunctionCalls = 0;     // 16. Function Calls
    uint64_t numFunctions = 0;         // 17. Functions
    uint64_t numBasicBlocks = 0;       // 18. Blocks of Instructions
    uint64_t numInstructions = 0;      // 19. Total Instructions
    uint64_t numFloatOps = 0;          // 20. Total Float Operations
    uint64_t numIntOps = 0;            // 21. Total Integer Operations
    uint64_t numLoopOps = 0;           // 22. Loop Operations
    uint64_t numLoops = 0;             // 23. Loops

    void reset() {
        problemDataSize = 0; numReturnInsts = 0; numBranchInsts = 0;
        numMemAllocations = 0; numMemLoads = 0; numMemStores = 0;
        numFloatMults = 0; numIntMults = 0; numFloatDivs = 0; numIntDivs = 0;
        numConditionChecks = 0; numFloatAdds = 0; numIntAdds = 0;
        numFloatSubs = 0; numIntSubs = 0; numFunctionCalls = 0;
        numFunctions = 0; numBasicBlocks = 0; numInstructions = 0;
        numFloatOps = 0; numIntOps = 0; numLoopOps = 0; numLoops = 0;
    }

    void printHeader(std::ostream &out) const {
        out << "Problem_Data_Size,Return_Instructions,Branch_Instructions,"
            << "Memory_Allocations,Memory_Loads,Memory_Stores,"
            << "Float_Multiplications,Integer_Multiplications,"
            << "Float_Divisions,Integer_Divisions,Condition_Checks,"
            << "Float_Additions,Integer_Additions,Float_Subtractions,Integer_Subtractions,"
            << "Function_Calls,Functions,Blocks_of_Instructions,Instructions,"
            << "Float_Operations,Integer_Operations,Loop_Operation,Loops\n";
    }

    void toCSV(std::ostream &out) const {
        out << problemDataSize << "," << numReturnInsts << "," << numBranchInsts << ","
            << numMemAllocations << "," << numMemLoads << "," << numMemStores << ","
            << numFloatMults << "," << numIntMults << "," << numFloatDivs << "," << numIntDivs << ","
            << numConditionChecks << "," << numFloatAdds << "," << numIntAdds << ","
            << numFloatSubs << "," << numIntSubs << "," << numFunctionCalls << ","
            << numFunctions << "," << numBasicBlocks << "," << numInstructions << ","
            << numFloatOps << "," << numIntOps << "," << numLoopOps << "," << numLoops << "\n";
    }
};

#endif