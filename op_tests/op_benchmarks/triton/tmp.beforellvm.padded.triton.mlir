// -----// IR Dump Before ConvertTritonAMDGPUToLLVM (convert-triton-amdgpu-to-llvm) ('builtin.module' operation) //----- //
#linear = #ttg.linear<{register = [[0, 1], [0, 2], [0, 4], [8, 0], [128, 0]], lane = [[0, 8], [0, 16], [0, 32], [16, 0], [32, 0], [64, 0]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>
#linear1 = #ttg.linear<{register = [[1, 0], [2, 0], [4, 0], [0, 8], [0, 128]], lane = [[8, 0], [16, 0], [32, 0], [0, 16], [0, 32], [0, 64]], warp = [[0, 1], [0, 2], [0, 4]], block = []}>
#mma = #ttg.amd_mfma<{version = 4, warpsPerCTA = [2, 4], instrShape = [16, 16, 32], isTransposed = true}>
#shared = #ttg.padded_shared<[512:+16] {offset = [[0, 1], [0, 2], [0, 4], [0, 8], [0, 16], [0, 32], [16, 0], [32, 0], [64, 0], [1, 0], [2, 0], [4, 0], [8, 0], [128, 0]], block = []}>
#shared1 = #ttg.padded_shared<[512:+16] {offset = [[1, 0], [2, 0], [4, 0], [8, 0], [16, 0], [32, 0], [0, 16], [0, 32], [0, 64], [0, 1], [0, 2], [0, 4], [0, 8], [0, 128]], block = []}>
#smem = #ttg.shared_memory
module attributes {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 8 : i32, ttg.shared = 135104 : i32, ttg.target = "hip:gfx950", "ttg.threads-per-warp" = 64 : i32} {
  tt.func public @_gemm_a16_w16_kernel_BLOCK_SIZE_M_256_BLOCK_SIZE_N_256_BLOCK_SIZE_K_64_GROUP_SIZE_M_16_NUM_KSPLIT_1_SPLITK_BLOCK_SIZE_4096_EVEN_K_1_GRID_MN_256_cache_modifier_NONE_activation_NONE_use_activation_0_ADD_BIAS_0_SKIP_REDUCE_0(%a_ptr: !tt.ptr<bf16> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32} loc("a_ptr"), %b_ptr: !tt.ptr<bf16> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32} loc("b_ptr"), %c_ptr: !tt.ptr<bf16> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32} loc("c_ptr"), %M: i32 {tt.divisibility = 16 : i32} loc("M"), %N: i32 {tt.divisibility = 16 : i32} loc("N"), %K: i32 {tt.divisibility = 16 : i32} loc("K"), %stride_am: i32 {tt.divisibility = 16 : i32} loc("stride_am"), %stride_bn: i32 {tt.divisibility = 16 : i32} loc("stride_bn"), %stride_ck: i32 {tt.divisibility = 16 : i32} loc("stride_ck"), %stride_cm: i32 {tt.divisibility = 16 : i32} loc("stride_cm")) attributes {noinline = false} {
    %cst = arith.constant dense<0.000000e+00> : tensor<256x256xf32, #mma>
    %c0_i32 = arith.constant 0 : i32
    %true = arith.constant true
    %c256_i32 = arith.constant 256 : i32
    %c63_i32 = arith.constant 63 : i32
    %c64_i32 = arith.constant 64 : i32
    %c16_i32 = arith.constant 16 : i32
    %c255_i32 = arith.constant 255 : i32
    %c32_i32 = arith.constant 32 : i32
    %c8_i32 = arith.constant 8 : i32
    %c1_i32 = arith.constant 1 : i32
    %c4096_i32 = arith.constant 4096 : i32
    %c256_i64 = arith.constant 256 : i64
    %c2_i32 = arith.constant 2 : i32
    %cst_0 = arith.constant dense<64> : tensor<256x64xi32, #linear>
    %cst_1 = arith.constant dense<64> : tensor<64x256xi32, #linear1>
    llvm.intr.assume %true : i1
    llvm.intr.assume %true : i1
    llvm.intr.assume %true : i1
    llvm.intr.assume %true : i1
    llvm.intr.assume %true : i1
    llvm.intr.assume %true : i1
    llvm.intr.assume %true : i1
    %0 = tt.get_program_id x : i32
    %1 = arith.remsi %0, %c8_i32 : i32
    %2 = arith.divsi %0, %c8_i32 : i32
    %3 = arith.muli %1, %c32_i32 : i32
    %pid = arith.addi %3, %2 : i32
    %4 = arith.addi %M, %c255_i32 : i32
    %5 = arith.divsi %4, %c256_i32 : i32
    %6 = arith.addi %N, %c255_i32 : i32
    %7 = arith.divsi %6, %c256_i32 : i32
    %8 = arith.muli %7, %c16_i32 : i32
    %9 = arith.divsi %pid, %8 : i32
    %10 = arith.muli %9, %c16_i32 : i32
    %11 = arith.subi %5, %10 : i32
    %12 = arith.minsi %11, %c16_i32 : i32
    llvm.intr.assume %true : i1
    %13 = arith.remsi %pid, %12 : i32
    %14 = arith.addi %10, %13 : i32
    %15 = arith.remsi %pid, %8 : i32
    %16 = arith.divsi %15, %12 : i32
    llvm.intr.assume %true : i1
    llvm.intr.assume %true : i1
    llvm.intr.assume %true : i1
    %17 = arith.cmpi sgt, %K, %c0_i32 : i32
    cf.cond_br %17, ^bb1, ^bb9
  ^bb1:  // pred: ^bb0
    %18 = arith.muli %14, %c256_i32 : i32
    %19 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 1, parent = #linear}>>
    %20 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 1, parent = #mma}>>
    %21 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #linear1}>>
    %22 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #mma}>>
    %23 = tt.splat %18 : i32 -> tensor<256xi32, #ttg.slice<{dim = 1, parent = #linear}>>
    %24 = arith.addi %23, %19 : tensor<256xi32, #ttg.slice<{dim = 1, parent = #linear}>>
    %25 = tt.splat %M : i32 -> tensor<256xi32, #ttg.slice<{dim = 1, parent = #linear}>>
    %26 = arith.remsi %24, %25 : tensor<256xi32, #ttg.slice<{dim = 1, parent = #linear}>>
    %27 = arith.muli %16, %c256_i32 : i32
    %28 = tt.splat %27 : i32 -> tensor<256xi32, #ttg.slice<{dim = 0, parent = #linear1}>>
    %29 = arith.addi %28, %21 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #linear1}>>
    %30 = tt.splat %N : i32 -> tensor<256xi32, #ttg.slice<{dim = 0, parent = #linear1}>>
    %31 = arith.remsi %29, %30 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #linear1}>>
    %32 = tt.make_range {end = 64 : i32, start = 0 : i32} : tensor<64xi32, #ttg.slice<{dim = 0, parent = #linear}>>
    %33 = tt.expand_dims %26 {axis = 1 : i32} : tensor<256xi32, #ttg.slice<{dim = 1, parent = #linear}>> -> tensor<256x1xi32, #linear>
    %34 = tt.splat %stride_am : i32 -> tensor<256x1xi32, #linear>
    %35 = arith.muli %33, %34 : tensor<256x1xi32, #linear>
    %36 = tt.broadcast %35 : tensor<256x1xi32, #linear> -> tensor<256x64xi32, #linear>
    %37 = tt.expand_dims %32 {axis = 0 : i32} : tensor<64xi32, #ttg.slice<{dim = 0, parent = #linear}>> -> tensor<1x64xi32, #linear>
    %38 = tt.broadcast %37 : tensor<1x64xi32, #linear> -> tensor<256x64xi32, #linear>
    %39 = arith.addi %36, %38 : tensor<256x64xi32, #linear>
    %40 = tt.make_range {end = 64 : i32, start = 0 : i32} : tensor<64xi32, #ttg.slice<{dim = 1, parent = #linear1}>>
    %41 = tt.expand_dims %40 {axis = 1 : i32} : tensor<64xi32, #ttg.slice<{dim = 1, parent = #linear1}>> -> tensor<64x1xi32, #linear1>
    %42 = tt.broadcast %41 : tensor<64x1xi32, #linear1> -> tensor<64x256xi32, #linear1>
    %43 = tt.expand_dims %31 {axis = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #linear1}>> -> tensor<1x256xi32, #linear1>
    %44 = tt.splat %stride_bn : i32 -> tensor<1x256xi32, #linear1>
    %45 = arith.muli %43, %44 : tensor<1x256xi32, #linear1>
    %46 = tt.broadcast %45 : tensor<1x256xi32, #linear1> -> tensor<64x256xi32, #linear1>
    %47 = arith.addi %42, %46 : tensor<64x256xi32, #linear1>
    %48 = arith.minsi %K, %c4096_i32 : i32
    %49 = arith.addi %48, %c63_i32 : i32
    %50 = arith.divsi %49, %c64_i32 : i32
    %51 = ttg.local_alloc {allocation.offset = 0 : i32} : () -> !ttg.memdesc<2x256x64xbf16, #shared, #smem, mutable>
    %52 = ttg.local_alloc {allocation.offset = 67552 : i32} : () -> !ttg.memdesc<2x64x256xbf16, #shared1, #smem, mutable>
    %accumulator = arith.cmpi sgt, %50, %c0_i32 : i32
    %53 = ttg.memdesc_index %51[%c0_i32] : !ttg.memdesc<2x256x64xbf16, #shared, #smem, mutable> -> !ttg.memdesc<256x64xbf16, #shared, #smem, mutable>
    %54 = tt.splat %accumulator : i1 -> tensor<256x64xi1, #linear>
    %55 = amdg.buffer_load_to_local %a_ptr[%39] mask = %54 stride = %stride_am into %53 : <bf16>[tensor<256x64xi32, #linear>]  -> <256x64xbf16, #shared, #smem, mutable>
    %56 = ttg.async_commit_group tokens %55
    %57 = ttg.memdesc_index %52[%c0_i32] : !ttg.memdesc<2x64x256xbf16, #shared1, #smem, mutable> -> !ttg.memdesc<64x256xbf16, #shared1, #smem, mutable>
    %58 = tt.splat %accumulator : i1 -> tensor<64x256xi1, #linear1>
    %59 = amdg.buffer_load_to_local %b_ptr[%47] mask = %58 stride = %stride_bn into %57 : <bf16>[tensor<64x256xi32, #linear1>]  -> <64x256xbf16, #shared1, #smem, mutable>
    %60 = ttg.async_commit_group tokens %59
    %accumulator_2 = arith.subi %50, %c1_i32 : i32
    cf.br ^bb2(%c0_i32, %cst, %c0_i32, %56, %60, %53, %57, %39, %47 : i32, tensor<256x256xf32, #mma>, i32, !ttg.async.token, !ttg.async.token, !ttg.memdesc<256x64xbf16, #shared, #smem, mutable>, !ttg.memdesc<64x256xbf16, #shared1, #smem, mutable>, tensor<256x64xi32, #linear>, tensor<64x256xi32, #linear1>)
  ^bb2(%accumulator_3: i32 loc("accumulator"(#loc13)), %61: tensor<256x256xf32, #mma>, %62: i32, %63: !ttg.async.token, %64: !ttg.async.token, %65: !ttg.memdesc<256x64xbf16, #shared, #smem, mutable>, %66: !ttg.memdesc<64x256xbf16, #shared1, #smem, mutable>, %67: tensor<256x64xi32, #linear>, %68: tensor<64x256xi32, #linear1>):  // 2 preds: ^bb1, ^bb3
    %accumulator_4 = arith.cmpi slt, %accumulator_3, %accumulator_2 : i32
    cf.cond_br %accumulator_4, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %69 = amdg.async_wait %63, %64 {num_inst = 0 : i32}
    %70 = arith.addi %67, %cst_0 : tensor<256x64xi32, #linear>
    %71 = arith.addi %68, %cst_1 : tensor<64x256xi32, #linear1>
    %accumulator_5 = arith.addi %62, %c1_i32 : i32
    %accumulator_6 = arith.cmpi slt, %accumulator_5, %c2_i32 : i32
    %accumulator_7 = arith.select %accumulator_6, %accumulator_5, %c0_i32 : i32
    %72 = ttg.memdesc_index %51[%accumulator_7] : !ttg.memdesc<2x256x64xbf16, #shared, #smem, mutable> -> !ttg.memdesc<256x64xbf16, #shared, #smem, mutable>
    %73 = amdg.buffer_load_to_local %a_ptr[%70] into %72 : <bf16>[tensor<256x64xi32, #linear>]  -> <256x64xbf16, #shared, #smem, mutable>
    %74 = ttg.async_commit_group tokens %73
    %75 = ttg.local_load %65 token %69 : !ttg.memdesc<256x64xbf16, #shared, #smem, mutable> -> tensor<256x64xbf16, #ttg.dot_op<{opIdx = 0, parent = #mma, kWidth = 8}>>
    %76 = ttg.memdesc_index %52[%accumulator_7] : !ttg.memdesc<2x64x256xbf16, #shared1, #smem, mutable> -> !ttg.memdesc<64x256xbf16, #shared1, #smem, mutable>
    %77 = amdg.buffer_load_to_local %b_ptr[%71] into %76 : <bf16>[tensor<64x256xi32, #linear1>]  -> <64x256xbf16, #shared1, #smem, mutable>
    %78 = ttg.async_commit_group tokens %77
    %79 = ttg.local_load %66 token %69 : !ttg.memdesc<64x256xbf16, #shared1, #smem, mutable> -> tensor<64x256xbf16, #ttg.dot_op<{opIdx = 1, parent = #mma, kWidth = 8}>>
    %80 = tt.dot %75, %79, %61 : tensor<256x64xbf16, #ttg.dot_op<{opIdx = 0, parent = #mma, kWidth = 8}>> * tensor<64x256xbf16, #ttg.dot_op<{opIdx = 1, parent = #mma, kWidth = 8}>> -> tensor<256x256xf32, #mma>
    %accumulator_8 = arith.addi %accumulator_3, %c1_i32 : i32
    cf.br ^bb2(%accumulator_8, %80, %accumulator_7, %74, %78, %72, %76, %70, %71 : i32, tensor<256x256xf32, #mma>, i32, !ttg.async.token, !ttg.async.token, !ttg.memdesc<256x64xbf16, #shared, #smem, mutable>, !ttg.memdesc<64x256xbf16, #shared1, #smem, mutable>, tensor<256x64xi32, #linear>, tensor<64x256xi32, #linear1>)
  ^bb4:  // pred: ^bb2
    %accumulator_9 = arith.cmpi sge, %50, %c1_i32 : i32
    %81 = amdg.async_wait %63, %64 {num_inst = 0 : i32}
    %82 = ttg.local_load %65 token %81 : !ttg.memdesc<256x64xbf16, #shared, #smem, mutable> -> tensor<256x64xbf16, #ttg.dot_op<{opIdx = 0, parent = #mma, kWidth = 8}>>
    %83 = ttg.local_load %66 token %81 : !ttg.memdesc<64x256xbf16, #shared1, #smem, mutable> -> tensor<64x256xbf16, #ttg.dot_op<{opIdx = 1, parent = #mma, kWidth = 8}>>
    cf.cond_br %accumulator_9, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %84 = tt.dot %82, %83, %61 : tensor<256x64xbf16, #ttg.dot_op<{opIdx = 0, parent = #mma, kWidth = 8}>> * tensor<64x256xbf16, #ttg.dot_op<{opIdx = 1, parent = #mma, kWidth = 8}>> -> tensor<256x256xf32, #mma>
    cf.br ^bb7(%84 : tensor<256x256xf32, #mma>)
  ^bb6:  // pred: ^bb4
    cf.br ^bb7(%61 : tensor<256x256xf32, #mma>)
  ^bb7(%85: tensor<256x256xf32, #mma>):  // 2 preds: ^bb5, ^bb6
    cf.br ^bb8
  ^bb8:  // pred: ^bb7
    %accumulator_10 = arith.select %accumulator_9, %85, %61 : tensor<256x256xf32, #mma>
    ttg.local_dealloc %52 : !ttg.memdesc<2x64x256xbf16, #shared1, #smem, mutable>
    ttg.local_dealloc %51 : !ttg.memdesc<2x256x64xbf16, #shared, #smem, mutable>
    %86 = arith.truncf %accumulator_10 : tensor<256x256xf32, #mma> to tensor<256x256xbf16, #mma>
    %87 = arith.extsi %14 : i32 to i64
    %88 = arith.muli %87, %c256_i64 : i64
    %89 = arith.extsi %20 : tensor<256xi32, #ttg.slice<{dim = 1, parent = #mma}>> to tensor<256xi64, #ttg.slice<{dim = 1, parent = #mma}>>
    %90 = arith.extsi %22 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #mma}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #mma}>>
    %91 = tt.splat %88 : i64 -> tensor<256xi64, #ttg.slice<{dim = 1, parent = #mma}>>
    %92 = arith.addi %91, %89 : tensor<256xi64, #ttg.slice<{dim = 1, parent = #mma}>>
    %93 = arith.extsi %16 : i32 to i64
    %94 = arith.muli %93, %c256_i64 : i64
    %95 = tt.splat %94 : i64 -> tensor<256xi64, #ttg.slice<{dim = 0, parent = #mma}>>
    %96 = arith.addi %95, %90 : tensor<256xi64, #ttg.slice<{dim = 0, parent = #mma}>>
    %97 = tt.expand_dims %92 {axis = 1 : i32} : tensor<256xi64, #ttg.slice<{dim = 1, parent = #mma}>> -> tensor<256x1xi64, #mma>
    %98 = arith.extsi %stride_cm : i32 to i64
    %99 = tt.expand_dims %89 {axis = 1 : i32} : tensor<256xi64, #ttg.slice<{dim = 1, parent = #mma}>> -> tensor<256x1xi64, #mma>
    %100 = arith.muli %98, %88 : i64
    %101 = tt.splat %98 : i64 -> tensor<256x1xi64, #mma>
    %102 = arith.muli %101, %99 : tensor<256x1xi64, #mma>
    %103 = tt.splat %100 : i64 -> tensor<256x1xi64, #mma>
    %104 = arith.addi %103, %102 : tensor<256x1xi64, #mma>
    %105 = arith.trunci %104 : tensor<256x1xi64, #mma> to tensor<256x1xi32, #mma>
    %106 = tt.expand_dims %96 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #mma}>> -> tensor<1x256xi64, #mma>
    %107 = tt.broadcast %105 : tensor<256x1xi32, #mma> -> tensor<256x256xi32, #mma>
    %108 = tt.expand_dims %90 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #mma}>> -> tensor<1x256xi64, #mma>
    %109 = tt.broadcast %108 : tensor<1x256xi64, #mma> -> tensor<256x256xi64, #mma>
    %110 = arith.extsi %107 : tensor<256x256xi32, #mma> to tensor<256x256xi64, #mma>
    %111 = arith.addi %110, %109 : tensor<256x256xi64, #mma>
    %112 = tt.splat %94 : i64 -> tensor<256x256xi64, #mma>
    %113 = arith.addi %112, %111 : tensor<256x256xi64, #mma>
    %114 = arith.trunci %113 : tensor<256x256xi64, #mma> to tensor<256x256xi32, #mma>
    %115 = arith.extsi %M : i32 to i64
    %116 = tt.splat %115 : i64 -> tensor<256x1xi64, #mma>
    %117 = arith.cmpi slt, %97, %116 : tensor<256x1xi64, #mma>
    %118 = arith.extsi %N : i32 to i64
    %119 = tt.splat %118 : i64 -> tensor<1x256xi64, #mma>
    %120 = arith.cmpi slt, %106, %119 : tensor<1x256xi64, #mma>
    %121 = tt.broadcast %117 : tensor<256x1xi1, #mma> -> tensor<256x256xi1, #mma>
    %122 = tt.broadcast %120 : tensor<1x256xi1, #mma> -> tensor<256x256xi1, #mma>
    %123 = arith.andi %121, %122 : tensor<256x256xi1, #mma>
    amdg.buffer_store %86, %c_ptr[%114], %123 : tensor<256x256xbf16, #mma>
    cf.br ^bb9
  ^bb9:  // 2 preds: ^bb0, ^bb8
    tt.return
  }
}
