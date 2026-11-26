if [ -z "$1" ]; then
    if [ -z "$(find res/Kernels -mindepth 1 -maxdepth 1 2>/dev/null)" ];then
        echo "Kernels must be in res/Kernels or in a especified folder"
        exit 0
    fi
    KERNEL_PATH="res/Kernels"
else
    KERNEL_PATH="$1"
fi

/usr/bin/py tools/collectKernelFeatures.py -d "$KERNEL_PATH" -o res/data/full_results.csv -l extern/libclc/