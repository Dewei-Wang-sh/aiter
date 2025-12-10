// -----// IR Dump Before ConvertTritonAMDGPUToLLVM (convert-triton-amdgpu-to-llvm) ('builtin.module' operation) //----- //
#blocked = #ttg.blocked<{sizePerThread = [8, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>
//#blocked1 = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [8, 8], warpsPerCTA = [8, 1], order = [1, 0]}>
//#blocked1 = #ttg.linear<{register = [[0, 1], [0, 2], [0, 4], [64, 0], [128, 0]], lane = [[0, 8], [0, 16], [0, 32], [1, 8], [2, 16], [4, 32]], warp = [[8, 0], [16, 0], [32, 0]], block = []}>
#blocked1 = #ttg.linear<{register = [[0,1], [0,2], [0,4], [8,32], [128,0] ], lane=[[0,8],[0,16],[0,32],[1,0],[2,8], [4,16]], warp=[[16,0], [32,0], [64,0]], block=[]}>
#blocked2 = #ttg.linear<{register = [[0,0], [0,0], [0,0], [8,0], [128,0] ],  lane=[[0,0],[0,0],[0,0],[1,0],[2,0], [4,0]], warp=[[16,0], [32,0], [64,0]], block=[]}>
#blocked3 = #ttg.linear<{register = [[0,1], [0,2], [0,4], [0,32], [0,0] ],   lane=[[0,8],[0,16],[0,32],[0,0],[0,8], [0,16]], warp=[[0,0], [0,0], [0,0]], block=[]}>
#mma = #ttg.amd_mfma<{version = 4, warpsPerCTA = [2, 4], instrShape = [16, 16, 32], isTransposed = true}>
#shared = #ttg.swizzled_shared<{vec = 8, perPhase = 2, maxPhase = 8, order = [1, 0]}>
#shared1 = #ttg.swizzled_shared<{vec = 8, perPhase = 2, maxPhase = 8, order = [0, 1]}>
#smem = #ttg.shared_memory
module attributes {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 8 : i32, ttg.shared = 65536 : i32, ttg.target = "hip:gfx950", "ttg.threads-per-warp" = 64 : i32} {
  tt.func public @_gemm_a16_w16_kernel(%a_ptr: !tt.ptr<bf16> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32} loc("a_ptr"), %b_ptr: !tt.ptr<bf16> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32} loc("b_ptr"), %c_ptr: !tt.ptr<bf16> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32} loc("c_ptr"), %M: i32 {tt.divisibility = 16 : i32} loc("M"), %N: i32 {tt.divisibility = 16 : i32} loc("N"), %K: i32 {tt.divisibility = 16 : i32} loc("K"), %stride_am: i32 {tt.divisibility = 16 : i32} loc("stride_am"), %stride_bn: i32 {tt.divisibility = 16 : i32} loc("stride_bn"), %stride_ck: i32 {tt.divisibility = 16 : i32} loc("stride_ck"), %stride_cm: i32 {tt.divisibility = 16 : i32} loc("stride_cm")) attributes {noinline = false} {
    %c31_i32 = arith.constant 31 : i32
    %c1_i32 = arith.constant 1 : i32
    %c2_i32 = arith.constant 2 : i32
    %cst = arith.constant dense<64> : tensor<64x256xi32, #blocked>
    %cst_0 = arith.constant dense<64> : tensor<256x64xi32, #blocked1>
    %c64_i32 = arith.constant 64 : i32
    %c63_i32 = arith.constant 63 : i32
    %c4096_i32 = arith.constant 4096 : i32
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<256x256xf32, #mma>
    %c16_i32 = arith.constant 16 : i32
    %c256_i32 = arith.constant 256 : i32
    %c255_i32 = arith.constant 255 : i32
    %c8_i32 = arith.constant 8 : i32
    %c32_i32 = arith.constant 32 : i32
    %true = arith.constant true
    %c0_i32 = arith.constant 0 : i32
    %0 = arith.cmpi sgt, %stride_am, %c0_i32 : i32
    llvm.intr.assume %0 : i1
    llvm.intr.assume %true : i1
    llvm.intr.assume %true : i1
    %1 = arith.cmpi sgt, %stride_bn, %c0_i32 : i32
    llvm.intr.assume %1 : i1
    %2 = arith.cmpi sgt, %stride_ck, %c0_i32 : i32
    llvm.intr.assume %2 : i1
    %3 = arith.cmpi sgt, %stride_cm, %c0_i32 : i32
    llvm.intr.assume %3 : i1
    llvm.intr.assume %true : i1
    %4 = tt.get_program_id x : i32
    %5 = arith.remsi %4, %c8_i32 : i32
    %6 = arith.divsi %4, %c8_i32 : i32
    %7 = arith.cmpi slt, %5, %c8_i32 : i32
    cf.cond_br %7, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %8 = arith.muli %5, %c32_i32 : i32
    %pid = arith.addi %8, %6 : i32
    cf.br ^bb3(%pid : i32)
  ^bb2:  // pred: ^bb0
    %9 = arith.subi %5, %c8_i32 : i32
    %10 = arith.muli %9, %c31_i32 : i32
    %11 = arith.addi %10, %c256_i32 : i32
    %pid_2 = arith.addi %11, %6 : i32
    cf.br ^bb3(%pid_2 : i32)
  ^bb3(%12: i32):  // 2 preds: ^bb1, ^bb2
    cf.br ^bb4
  ^bb4:  // pred: ^bb3
    %13 = arith.addi %M, %c255_i32 : i32
    %14 = arith.divsi %13, %c256_i32 : i32
    %15 = arith.addi %N, %c255_i32 : i32
    %16 = arith.divsi %15, %c256_i32 : i32
    %17 = arith.muli %16, %c16_i32 : i32
    %18 = arith.divsi %12, %17 : i32
    %19 = arith.muli %18, %c16_i32 : i32
    %20 = arith.subi %14, %19 : i32
    %21 = arith.minsi %20, %c16_i32 : i32
    %22 = arith.cmpi sge, %21, %c0_i32 : i32
    llvm.intr.assume %22 : i1
    %23 = arith.remsi %12, %21 : i32
    %24 = arith.addi %19, %23 : i32
    %25 = arith.remsi %12, %17 : i32
    %26 = arith.divsi %25, %21 : i32
    %27 = arith.cmpi sge, %24, %c0_i32 : i32
    llvm.intr.assume %27 : i1
    %28 = arith.cmpi sge, %26, %c0_i32 : i32
    llvm.intr.assume %28 : i1
    llvm.intr.assume %true : i1
    %29 = ttg.local_alloc {allocation.offset = 0 : i32} : () -> !ttg.memdesc<256x64xbf16, #shared, #smem, mutable>
    %30 = ttg.local_alloc {allocation.offset = 32768 : i32} : () -> !ttg.memdesc<64x256xbf16, #shared1, #smem, mutable>
    %31 = arith.cmpi sgt, %K, %c0_i32 : i32
    cf.cond_br %31, ^bb5, ^bb9
  ^bb5:  // pred: ^bb4
    %32 = tt.make_range {end = 64 : i32, start = 0 : i32} : tensor<64xi32, #ttg.slice<{dim = 0, parent = #blocked3}>>
    %33 = tt.make_range {end = 64 : i32, start = 0 : i32} : tensor<64xi32, #ttg.slice<{dim = 1, parent = #blocked}>>
    %34 = arith.muli %24, %c256_i32 : i32
    %35 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 1, parent = #blocked2}>>
    %36 = tt.splat %34 : i32 -> tensor<256xi32, #ttg.slice<{dim = 1, parent = #blocked2}>>
    %37 = arith.addi %36, %35 : tensor<256xi32, #ttg.slice<{dim = 1, parent = #blocked2}>>
    %38 = tt.splat %M : i32 -> tensor<256xi32, #ttg.slice<{dim = 1, parent = #blocked2}>>
    %39 = arith.remsi %37, %38 : tensor<256xi32, #ttg.slice<{dim = 1, parent = #blocked2}>>
    %40 = arith.muli %26, %c256_i32 : i32
    %41 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #blocked}>>
    %42 = tt.splat %40 : i32 -> tensor<256xi32, #ttg.slice<{dim = 0, parent = #blocked}>>
    %43 = arith.addi %42, %41 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #blocked}>>
    %44 = tt.splat %N : i32 -> tensor<256xi32, #ttg.slice<{dim = 0, parent = #blocked}>>
    %45 = arith.remsi %43, %44 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #blocked}>>
    %46 = tt.expand_dims %39 {axis = 1 : i32} : tensor<256xi32, #ttg.slice<{dim = 1, parent = #blocked2}>> -> tensor<256x1xi32, #blocked2>
    %47 = tt.splat %stride_am : i32 -> tensor<256x1xi32, #blocked2>
    %48 = arith.muli %46, %47 : tensor<256x1xi32, #blocked2>
    %49 = tt.expand_dims %32 {axis = 0 : i32} : tensor<64xi32, #ttg.slice<{dim = 0, parent = #blocked3}>> -> tensor<1x64xi32, #blocked3>
    %50 = tt.broadcast %48 : tensor<256x1xi32, #blocked2> -> tensor<256x64xi32, #blocked1>
    %51 = tt.broadcast %49 : tensor<1x64xi32, #blocked3> -> tensor<256x64xi32, #blocked1>
    %52 = arith.addi %50, %51 : tensor<256x64xi32, #blocked1>
    %53 = tt.expand_dims %33 {axis = 1 : i32} : tensor<64xi32, #ttg.slice<{dim = 1, parent = #blocked}>> -> tensor<64x1xi32, #blocked>
    %54 = tt.expand_dims %45 {axis = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #blocked}>> -> tensor<1x256xi32, #blocked>
    %55 = tt.splat %stride_bn : i32 -> tensor<1x256xi32, #blocked>
    %56 = arith.muli %54, %55 : tensor<1x256xi32, #blocked>
    %57 = tt.broadcast %53 : tensor<64x1xi32, #blocked> -> tensor<64x256xi32, #blocked>
    %58 = tt.broadcast %56 : tensor<1x256xi32, #blocked> -> tensor<64x256xi32, #blocked>
    %59 = arith.addi %57, %58 : tensor<64x256xi32, #blocked>
    %60 = arith.minsi %K, %c4096_i32 : i32
    %61 = arith.addi %60, %c63_i32 : i32
    %62 = arith.divsi %61, %c64_i32 : i32
    %63 = amdg.buffer_load_to_local %a_ptr[%52] into %29 : <bf16>[tensor<256x64xi32, #blocked1>]  -> <256x64xbf16, #shared, #smem, mutable>
    %64 = amdg.buffer_load_to_local %b_ptr[%59] into %30 : <bf16>[tensor<64x256xi32, #blocked>]  -> <64x256xbf16, #shared1, #smem, mutable>
    %65 = ttg.async_commit_group
    %66 = arith.addi %52, %cst_0 : tensor<256x64xi32, #blocked1>
    %67 = arith.addi %59, %cst : tensor<64x256xi32, #blocked>
    %68 = arith.cmpi sgt, %62, %c2_i32 : i32
    llvm.intr.assume %68 : i1
    %69 = arith.subi %62, %c1_i32 : i32
    cf.br ^bb6(%c0_i32, %66, %67, %cst_1 : i32, tensor<256x64xi32, #blocked1>, tensor<64x256xi32, #blocked>, tensor<256x256xf32, #mma>)
  ^bb6(%k: i32 loc("k"), %a_offs: tensor<256x64xi32, #blocked1> loc("a_offs"), %b_offs: tensor<64x256xi32, #blocked> loc("b_offs"), %accumulator: tensor<256x256xf32, #mma> loc("accumulator")):  // 2 preds: ^bb5, ^bb7
    %accumulator_3 = arith.cmpi slt, %k, %69 : i32
    cf.cond_br %accumulator_3, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    %70 = amdg.async_wait {num_inst = 0 : i32}
    rocdl.iglp.opt 1
    %71 = ttg.local_load %29 : !ttg.memdesc<256x64xbf16, #shared, #smem, mutable> -> tensor<256x64xbf16, #ttg.dot_op<{opIdx = 0, parent = #mma, kWidth = 8}>>
    %72 = ttg.local_load %30 : !ttg.memdesc<64x256xbf16, #shared1, #smem, mutable> -> tensor<64x256xbf16, #ttg.dot_op<{opIdx = 1, parent = #mma, kWidth = 8}>>
    %73 = tt.dot %71, %72, %accumulator : tensor<256x64xbf16, #ttg.dot_op<{opIdx = 0, parent = #mma, kWidth = 8}>> * tensor<64x256xbf16, #ttg.dot_op<{opIdx = 1, parent = #mma, kWidth = 8}>> -> tensor<256x256xf32, #mma>
    %74 = amdg.buffer_load_to_local %a_ptr[%a_offs] into %29 : <bf16>[tensor<256x64xi32, #blocked1>]  -> <256x64xbf16, #shared, #smem, mutable>
    %75 = amdg.buffer_load_to_local %b_ptr[%b_offs] into %30 : <bf16>[tensor<64x256xi32, #blocked>]  -> <64x256xbf16, #shared1, #smem, mutable>
    %76 = ttg.async_commit_group
    %77 = arith.addi %a_offs, %cst_0 : tensor<256x64xi32, #blocked1>
    %78 = arith.addi %b_offs, %cst : tensor<64x256xi32, #blocked>
    %accumulator_4 = arith.addi %k, %c1_i32 : i32
    cf.br ^bb6(%accumulator_4, %77, %78, %73 : i32, tensor<256x64xi32, #blocked1>, tensor<64x256xi32, #blocked>, tensor<256x256xf32, #mma>)
  ^bb8:  // pred: ^bb6
    %79 = amdg.async_wait {num_inst = 0 : i32}
    %80 = ttg.local_load %29 : !ttg.memdesc<256x64xbf16, #shared, #smem, mutable> -> tensor<256x64xbf16, #ttg.dot_op<{opIdx = 0, parent = #mma, kWidth = 8}>>
    %81 = ttg.local_load %30 : !ttg.memdesc<64x256xbf16, #shared1, #smem, mutable> -> tensor<64x256xbf16, #ttg.dot_op<{opIdx = 1, parent = #mma, kWidth = 8}>>
    %82 = tt.dot %80, %81, %accumulator : tensor<256x64xbf16, #ttg.dot_op<{opIdx = 0, parent = #mma, kWidth = 8}>> * tensor<64x256xbf16, #ttg.dot_op<{opIdx = 1, parent = #mma, kWidth = 8}>> -> tensor<256x256xf32, #mma>
    %83 = arith.truncf %82 : tensor<256x256xf32, #mma> to tensor<256x256xbf16, #mma>
    %84 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 1, parent = #mma}>>
    %85 = tt.splat %34 : i32 -> tensor<256xi32, #ttg.slice<{dim = 1, parent = #mma}>>
    %86 = arith.addi %85, %84 : tensor<256xi32, #ttg.slice<{dim = 1, parent = #mma}>>
    %87 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #mma}>>
    %88 = tt.splat %40 : i32 -> tensor<256xi32, #ttg.slice<{dim = 0, parent = #mma}>>
    %89 = arith.addi %88, %87 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #mma}>>
    %90 = tt.expand_dims %86 {axis = 1 : i32} : tensor<256xi32, #ttg.slice<{dim = 1, parent = #mma}>> -> tensor<256x1xi32, #mma>
    %91 = tt.splat %stride_cm : i32 -> tensor<256x1xi32, #mma>
    %92 = arith.muli %91, %90 : tensor<256x1xi32, #mma>
    %93 = tt.expand_dims %89 {axis = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #mma}>> -> tensor<1x256xi32, #mma>
    %94 = tt.broadcast %92 : tensor<256x1xi32, #mma> -> tensor<256x256xi32, #mma>
    %95 = tt.broadcast %93 : tensor<1x256xi32, #mma> -> tensor<256x256xi32, #mma>
    %96 = arith.addi %94, %95 : tensor<256x256xi32, #mma>
    %97 = tt.splat %M : i32 -> tensor<256x1xi32, #mma>
    %98 = arith.cmpi slt, %90, %97 : tensor<256x1xi32, #mma>
    %99 = tt.splat %N : i32 -> tensor<1x256xi32, #mma>
    %100 = arith.cmpi slt, %93, %99 : tensor<1x256xi32, #mma>
    %101 = tt.broadcast %98 : tensor<256x1xi1, #mma> -> tensor<256x256xi1, #mma>
    %102 = tt.broadcast %100 : tensor<1x256xi1, #mma> -> tensor<256x256xi1, #mma>
    %103 = arith.andi %101, %102 : tensor<256x256xi1, #mma>
    amdg.buffer_store %83, %c_ptr[%96], %103 : tensor<256x256xbf16, #mma>
    cf.br ^bb10
  ^bb9:  // pred: ^bb4
    cf.br ^bb10
  ^bb10:  // 2 preds: ^bb8, ^bb9
    tt.return
  }
}
