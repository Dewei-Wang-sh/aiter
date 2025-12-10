
config={'BLOCK_SIZE_M': 256, 'BLOCK_SIZE_N': 256, 'BLOCK_SIZE_K': 32, 'GROUP_SIZE_M': 6, 'num_warps': 8, 'num_stages': 3, 'waves_per_eu': 2, 'matrix_instr_nonkdim': 16, 'cache_modifier': None, 'NUM_KSPLIT': 1, 'kpack': 1, 'SPLITK_BLOCK_SIZE': 4096}
bench_gemm_a16w16:
        M       N       K  TFLOPS (Throughput (TFLOPS))
0  4096.0  4096.0  4096.0                    936.225193


TRITON_HIP_USE_ASYNC_COPY=1 for triton kernel


for gluon kernel
export MY_DEBUG_LL=1
export MY_DEBUG=1
python bench_gemm_a16w16.py
triton-opt --convert-triton-amdgpu-to-llvm=arch=gfx950 tmp.beforellvm.manuallinear2.mlir -canonicalize -cse -o out.manual2.mlir

