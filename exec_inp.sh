#!/bin/bash
read -p "File name: " FILE_NAME

if [ -z "$FILE_NAME" ]; then
    echo "Erro: Nome do arquivo não pode estar vazio."
    exit 1
fi

mkdir res/Kernels/bc
mkdir res/Kernels/ll

OPENCL_INCLUDE="extern/libclc/generic/include/clc/clc.h"
LIBDIR="extern/libclc/generic/include/"
INPUT_PATH="res/Kernels/${FILE_NAME}.cl"
BC_PATH="res/Kernels/bc/${FILE_NAME}.bc"
LL_PATH="res/Kernels/ll/${FILE_NAME}.ll"

clang -include "$OPENCL_INCLUDE" \
      -I "$LIBDIR" \
      -DBLOCK_SIZE=16 \
      -Dcl_clang_storage_class_specifiers \
      "$INPUT_PATH" \
      -o "$BC_PATH" \
      -emit-llvm -c -O3 -x cl

clang -include "$OPENCL_INCLUDE" \
      -I "$LIBDIR" \
      -DBLOCK_SIZE=16 \
      -Dcl_clang_storage_class_specifiers \
      "$INPUT_PATH" \
      -o "$LL_PATH" \
      -emit-llvm -S -O3 -x cl

make
./oclFeatureExt.out -f ./"$BC_PATH" -o features.csv
