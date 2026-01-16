python bench_moe_gemm_a8w4.py --shape 7168 4096 --experts 256 8 --op-regex .*swiglu.* 
find . -name "*moe_gemm_a8w4.amdgcn"

triton-opt -tritongpu-remove-layout-conversions tmp.moe.before.removelayout.mlir
