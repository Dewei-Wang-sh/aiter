python bench_moe_gemm_a8w4.py --shape 3072 6144 --experts 128 4 --op-regex .*swiglu.* --act-dtype fp8 > triton.ttgir
python bench_moe_gemm_a8w4_gluon.py --shape 3072 6144 --experts 128 4 --op-regex .*gluon.* --act-dtype fp8


python bench_moe_gemm_a8w4.py --shape 7168 4096 --experts 256 8 --op-regex .*swiglu.*
find . -name "*moe_gemm_a8w4.amdgcn"
llc -O3  -mtriple=amdgcn-amd-amdhsa -mcpu=gfx950 -amdgpu-use-amdgpu-trackers --greedy-reverse-local-assignment=1  _moe_gemm_a8w4.llir
