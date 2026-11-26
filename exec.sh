#!/bin/bash
set -x # Opcional: mostra cada comando executado para debug

if [ -z "$(find extern/libclc -mindepth 1 -maxdepth 1 2>/dev/null)" ]; then
    mkdir -p extern
    cd extern
    git clone https://github.com/llvm-mirror/libclc.git
    cd ../
fi

if [ -z "$1" ]; then
    echo "Uso: $0 <nome_do_arquivo> [MACRO_DEP] [TIPO_REAL]"
    echo "Exemplo: $0 tor_ord OPENCL_VERSION float"
    exit 1
fi

FILE_NAME="$1"
MACRO_DEP="$2"
DREAL_TYPE="$3"

OPENCL_INCLUDE="extern/libclc/generic/include/clc/clc.h"
LIBDIR="extern/libclc/generic/include/"

mkdir -p "res/extraction"
FILE_PATH="res/Kernels/$FILE_NAME"
EXT_PATH="res/extraction/$FILE_NAME"
OUTPUT_PATH=res/data/"$FILE_NAME"

mkdir -p "$EXT_PATH/bc" "$EXT_PATH/ll"

INPUT_PATH="res/Kernels/${FILE_NAME}.cl"
BC_PATH="$EXT_PATH/bc/${FILE_NAME}.bc"
LL_PATH="$EXT_PATH/ll/${FILE_NAME}.ll"

EXTRA_FLAGS=()
if [ -n "$MACRO_DEP" ]; then
    EXTRA_FLAGS+=("-D$MACRO_DEP")
fi
if [ -n "$DREAL_TYPE" ]; then
    EXTRA_FLAGS+=("-DREAL=$DREAL_TYPE")
fi
EXTRA_FLAGS+=("-I" "$FILE_PATH")

clang -x cl \
      -include "$OPENCL_INCLUDE" \
      -I "$LIBDIR" \
      -DBLOCK_SIZE=16 \
      -Dcl_clang_storage_class_specifiers \
      "${EXTRA_FLAGS[@]}" \
      "$INPUT_PATH" \
      -o "$BC_PATH" \
      -emit-llvm -c -O3 -x cl

clang -x cl \
      -include "$OPENCL_INCLUDE" \
      -I "$LIBDIR" \
      -DBLOCK_SIZE=16 \
      -Dcl_clang_storage_class_specifiers \
      "${EXTRA_FLAGS[@]}" \
      "$INPUT_PATH" \
      -o "$LL_PATH" \
      -emit-llvm -S -O3

make
mkdir -p "$OUTPUT_PATH"
./oclFeatureExt.out -f ./"$BC_PATH" -o "$OUTPUT_PATH"/features.csv
