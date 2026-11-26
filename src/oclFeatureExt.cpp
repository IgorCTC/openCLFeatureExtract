#include "../include/Extractor.h"
#include <unistd.h>

using namespace std;
using namespace llvm;

const string usage = "Usage:\n\t-h help\n\t-f <kernel bitcode file>\n\t-o <output file>\n\t-v verbose\n";
bool verbose = false;

int main(int argc, char **argv) {
    string inputFilename = "";
    string outputFilename = "";
    uint64_t problemSize = 1024;

    int opt;
    while ((opt = getopt(argc, argv, "f:o:d:")) != -1) {
        switch (opt) {
            case 'f':
                inputFilename = optarg;
                break;
            case 'o':
                outputFilename = optarg;
                break;
            case 'd':
                try {
                    problemSize = stoull(optarg);
                } catch (const std::exception &e) {
                    cerr << "Erro: O valor para a flag -d ('" << optarg << "') deve ser um numero valido.\n";
                    return 1;
                }
                break;
            default:
                cerr << "Uso: " << argv[0] << " -f <input.bc> -o <output.csv> [-d <problem_size>]\n";
                return 1;
        }
    }

    if (inputFilename.empty() || outputFilename.empty()) {
        cerr << "Erro: As flags -f e -o sao obrigatorias.\n";
        return 1;
    }

    LLVMContext context;
    SMDiagnostic error;
    unique_ptr<Module> module = parseIRFile(inputFilename, error, context);

    if (!module) {
        cerr << "Erro ao carregar o arquivo de Bitcode LLVM: " << inputFilename << "\n";
        error.print(argv[0], errs());
        return 1;
    }

    FeatureExtractor visitor;
    visitor.stats.reset();
    visitor.stats.problemDataSize = problemSize;

    for (Function &F : *module) {
        if (F.isDeclaration()) continue;
        visitor.visitFunction(F);

        for (BasicBlock &BB : F) {
            visitor.visitBasicBlock(BB);

            for (Instruction &I : BB) {
                visitor.visit(I);
            }
        }
    }

    ofstream outFile(outputFilename);
    if (!outFile.is_open()) {
        cerr << "Erro ao abrir o arquivo de saida: " << outputFilename << "\n";
        return 1;
    }

    visitor.stats.printHeader(outFile);
    visitor.stats.toCSV(outFile);
    outFile.close();

    cout << "Features salvas em: " << outputFilename << "\n";

    return 0;
}