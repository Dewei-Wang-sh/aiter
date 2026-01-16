#blocked = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>
#blocked1 = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>
#blocked2 = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>
#blocked3 = #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>
#blocked4 = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>
#linear = #ttg.linear<{register = [[0, 4], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[0, 0], [0, 0], [0, 0]], block = []}>
#linear1 = #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>
#linear2 = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>
#linear3 = #ttg.linear<{register = [[0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 1, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 0, 1, 0, 0, 0], [0, 0, 0, 2, 0, 0, 0], [0, 0, 0, 4, 0, 0, 0], [0, 0, 0, 8, 0, 0, 0], [0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>
#linear4 = #ttg.linear<{register = [[0, 1, 0, 0, 0, 0, 0], [0, 0, 0, 0, 1, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0], [0, 0, 4, 0, 0, 0, 0], [0, 0, 8, 0, 0, 0, 0], [0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 0, 2, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>
#linear5 = #ttg.linear<{register = [[16, 0], [0, 4], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>
#linear6 = #ttg.linear<{register = [[0, 0, 1], [0, 1, 0], [0, 8, 0], [0, 128, 0], [16, 0, 0], [32, 0, 0], [64, 0, 0]], lane = [[1, 0, 0], [2, 0, 0], [4, 0, 0], [8, 0, 0], [0, 2, 0], [0, 4, 0]], warp = [[0, 16, 0], [0, 32, 0], [0, 64, 0]], block = []}>
#mma = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>
module attributes {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 8 : i32, ttg.target = "hip:gfx950", "ttg.threads-per-warp" = 64 : i32} {
  tt.func public @_moe_gemm_a8w4(%arg0: !tt.ptr<f8E4M3FN> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg1: i32 {tt.divisibility = 16 : i32}, %arg2: i32 {tt.divisibility = 16 : i32}, %arg3: !tt.ptr<f8E4M3FN> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg4: i32 {tt.divisibility = 16 : i32}, %arg5: i32 {tt.divisibility = 16 : i32}, %arg6: i32 {tt.divisibility = 16 : i32}, %arg7: !tt.ptr<i8> {tt.divisibility = 16 : i32}, %arg8: i32 {tt.divisibility = 16 : i32}, %arg9: i32 {tt.divisibility = 16 : i32}, %arg10: !tt.ptr<i8> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg11: i32 {tt.divisibility = 16 : i32}, %arg12: i32 {tt.divisibility = 16 : i32}, %arg13: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg14: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg15: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg16: i32 {tt.divisibility = 16 : i32}, %arg17: i32 {tt.divisibility = 16 : i32}, %arg18: i32 {tt.divisibility = 16 : i32}, %arg19: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg20: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg21: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg22: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg23: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg24: i32, %arg25: i32, %arg26: f32, %arg27: f32) attributes {noinline = false} {
    %cst = arith.constant dense<127> : tensor<128x8xi8, #linear>
    %cst_0 = arith.constant dense<8> : tensor<128xi32, #ttg.slice<{dim = 1, parent = #blocked}>>
    %cst_1 = arith.constant dense<256> : tensor<16x256xi32, #blocked1>
    %cst_2 = arith.constant dense<256> : tensor<128x256xi32, #blocked>
    %cst_3 = arith.constant dense<128> : tensor<128x512xi32, #blocked2>
    %cst_4 = arith.constant -1.44269502 : f32
    %cst_5 = arith.constant 0.000000e+00 : f32
    %c0_i32 = arith.constant 0 : i32
    %true = arith.constant true
    %c2_i32 = arith.constant 2 : i32
    %c-1_i32 = arith.constant -1 : i32
    %c65535_i32 = arith.constant 65535 : i32
    %c16_i32 = arith.constant 16 : i32
    %c128_i64 = arith.constant 128 : i64
    %c256_i64 = arith.constant 256 : i64
    %c16_i64 = arith.constant 16 : i64
    %c512_i64 = arith.constant 512 : i64
    %c1_i32 = arith.constant 1 : i32
    %cst_6 = arith.constant dense<0.000000e+00> : tensor<512xf32, #blocked3>
    %c8_i32 = arith.constant 8 : i32
    %c4_i32 = arith.constant 4 : i32
    %c256_i32 = arith.constant 256 : i32
    %c255_i32 = arith.constant 255 : i32
    %cst_7 = arith.constant dense<0.000000e+00> : tensor<128x512xf32, #mma>
    %cst_8 = arith.constant dense<1.000000e+00> : tensor<128x256xf32, #linear1>
    %0 = arith.cmpi sge, %arg1, %c0_i32 : i32
    llvm.intr.assume %0 : i1
    %1 = arith.cmpi sge, %arg2, %c0_i32 : i32
    llvm.intr.assume %1 : i1
    llvm.intr.assume %true : i1
    %2 = arith.cmpi sge, %arg4, %c0_i32 : i32
    llvm.intr.assume %2 : i1
    llvm.intr.assume %true : i1
    %3 = arith.cmpi sge, %arg8, %c0_i32 : i32
    llvm.intr.assume %3 : i1
    llvm.intr.assume %true : i1
    %4 = arith.cmpi sge, %arg9, %c0_i32 : i32
    llvm.intr.assume %4 : i1
    %5 = arith.cmpi sge, %arg5, %c0_i32 : i32
    llvm.intr.assume %5 : i1
    %6 = arith.cmpi sge, %arg6, %c0_i32 : i32
    llvm.intr.assume %6 : i1
    %7 = arith.cmpi sge, %arg11, %c0_i32 : i32
    llvm.intr.assume %7 : i1
    llvm.intr.assume %true : i1
    %8 = arith.cmpi sge, %arg12, %c0_i32 : i32
    llvm.intr.assume %8 : i1
    %9 = arith.cmpi sge, %arg16, %c0_i32 : i32
    llvm.intr.assume %9 : i1
    %10 = arith.cmpi sge, %arg24, %c0_i32 : i32
    llvm.intr.assume %10 : i1
    %11 = arith.cmpi sge, %arg25, %c0_i32 : i32
    llvm.intr.assume %11 : i1
    %12 = arith.divsi %arg17, %c2_i32 : i32
    %13 = tt.get_program_id x : i32
    %14 = tt.load %arg22 : !tt.ptr<i32>
    %15 = arith.subi %arg24, %14 : i32
    %16 = arith.subi %arg24, %15 : i32
    %17 = arith.cmpi sge, %16, %c0_i32 : i32
    llvm.intr.assume %17 : i1
    %18 = arith.muli %16, %arg25 : i32
    %19 = arith.cmpi sgt, %15, %c0_i32 : i32
    %20 = arith.cmpi sge, %13, %18 : i32
    %21 = arith.andi %19, %20 : i1
    cf.cond_br %21, ^bb1, ^bb2
  ^bb1:  // 2 preds: ^bb0, ^bb2
    tt.return
  ^bb2:  // pred: ^bb0
    %22 = arith.divsi %18, %c8_i32 : i32
    %23 = arith.remsi %18, %c8_i32 : i32
    %24 = arith.remsi %13, %c8_i32 : i32
    %25 = arith.divsi %13, %c8_i32 : i32
    %26 = arith.muli %24, %22 : i32
    %27 = arith.minsi %24, %23 : i32
    %28 = arith.addi %26, %27 : i32
    %29 = arith.addi %28, %25 : i32
    %30 = arith.remsi %29, %18 : i32
    %31 = arith.muli %arg25, %c4_i32 : i32
    %32 = arith.divsi %30, %31 : i32
    %33 = arith.muli %32, %c4_i32 : i32
    %34 = arith.subi %16, %33 : i32
    %35 = arith.minsi %34, %c4_i32 : i32
    %36 = arith.cmpi sge, %35, %c0_i32 : i32
    llvm.intr.assume %36 : i1
    %37 = arith.remsi %30, %35 : i32
    %38 = arith.addi %33, %37 : i32
    %39 = arith.remsi %30, %31 : i32
    %40 = arith.divsi %39, %35 : i32
    %41 = tt.addptr %arg23, %38 : !tt.ptr<i32>, i32
    %42 = tt.load %41 : !tt.ptr<i32>
    %43 = arith.cmpi eq, %42, %c-1_i32 : i32
    cf.cond_br %43, ^bb1, ^bb3
  ^bb3:  // pred: ^bb2
    %44 = arith.andi %42, %c65535_i32 : i32
    %45 = arith.shrsi %42, %c16_i32 : i32
    %46 = tt.addptr %arg20, %44 : !tt.ptr<i32>, i32
    %47 = tt.load %46 : !tt.ptr<i32>
    %48 = tt.addptr %arg21, %44 : !tt.ptr<i32>, i32
    %49 = tt.load %48 : !tt.ptr<i32>
    %50 = arith.extsi %44 : i32 to i64
    %51 = arith.extsi %45 : i32 to i64
    %52 = arith.extsi %49 : i32 to i64
    %53 = arith.extsi %40 : i32 to i64
    %54 = arith.muli %51, %c128_i64 : i64
    %55 = tt.make_range {end = 128 : i32, start = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 1, parent = #blocked}>>
    %56 = tt.make_range {end = 128 : i32, start = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 1, parent = #blocked2}>>
    %57 = arith.extsi %55 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #blocked}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #blocked}>>
    %58 = arith.extsi %56 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #blocked2}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #blocked2}>>
    %59 = tt.splat %54 : i64 -> tensor<128xi64, #ttg.slice<{dim = 1, parent = #blocked}>>
    %60 = arith.addi %59, %57 : tensor<128xi64, #ttg.slice<{dim = 1, parent = #blocked}>>
    %61 = arith.extsi %47 : i32 to i64
    %62 = tt.splat %61 : i64 -> tensor<128xi64, #ttg.slice<{dim = 1, parent = #blocked}>>
    %63 = arith.remsi %60, %62 {tt.contiguity = dense<128> : tensor<1xi32>, tt.divisibility = dense<128> : tensor<1xi32>} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #blocked}>>
    %64 = tt.addptr %arg19, %52 : !tt.ptr<i32>, i64
    %65 = tt.splat %64 : !tt.ptr<i32> -> tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #blocked}>>
    %66 = tt.addptr %65, %63 : tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #blocked}>>, tensor<128xi64, #ttg.slice<{dim = 1, parent = #blocked}>>
    %67 = tt.load %66 : tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #blocked}>>
    %68 = arith.divsi %67, %cst_0 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #blocked}>>
    %69 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #blocked}>>
    %70 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #blocked1}>>
    %71 = arith.extsi %69 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #blocked}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #blocked}>>
    %72 = arith.extsi %70 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #blocked1}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #blocked1}>>
    %73 = arith.extsi %68 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #blocked}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #blocked}>>
    %74 = tt.expand_dims %73 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #blocked}>> -> tensor<128x1xi64, #blocked>
    %75 = arith.extsi %arg4 : i32 to i64
    %76 = tt.splat %75 : i64 -> tensor<128x1xi64, #blocked>
    %77 = arith.muli %74, %76 : tensor<128x1xi64, #blocked>
    %78 = tt.splat %arg3 : !tt.ptr<f8E4M3FN> -> tensor<128x1x!tt.ptr<f8E4M3FN>, #blocked>
    %79 = tt.addptr %78, %77 : tensor<128x1x!tt.ptr<f8E4M3FN>, #blocked>, tensor<128x1xi64, #blocked>
    %80 = tt.expand_dims %71 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #blocked}>> -> tensor<1x256xi64, #blocked>
    %81 = tt.expand_dims %72 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #blocked1}>> -> tensor<1x256xi64, #blocked1>
    %82 = tt.broadcast %79 : tensor<128x1x!tt.ptr<f8E4M3FN>, #blocked> -> tensor<128x256x!tt.ptr<f8E4M3FN>, #blocked>
    %83 = tt.broadcast %80 : tensor<1x256xi64, #blocked> -> tensor<128x256xi64, #blocked>
    %84 = tt.addptr %82, %83 : tensor<128x256x!tt.ptr<f8E4M3FN>, #blocked>, tensor<128x256xi64, #blocked>
    %85 = arith.extsi %arg11 : i32 to i64
    %86 = arith.muli %50, %85 : i64
    %87 = tt.addptr %arg10, %86 : !tt.ptr<i8>, i64
    %88 = arith.muli %53, %c16_i64 : i64
    %89 = tt.make_range {end = 16 : i32, start = 0 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #blocked1}>>
    %90 = arith.extsi %89 : tensor<16xi32, #ttg.slice<{dim = 1, parent = #blocked1}>> to tensor<16xi64, #ttg.slice<{dim = 1, parent = #blocked1}>>
    %91 = tt.splat %88 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #blocked1}>>
    %92 = arith.addi %91, %90 : tensor<16xi64, #ttg.slice<{dim = 1, parent = #blocked1}>>
    %93 = arith.extsi %arg17 : i32 to i64
    %94 = tt.splat %93 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #blocked1}>>
    %95 = arith.remsi %92, %94 {tt.contiguity = dense<16> : tensor<1xi32>, tt.divisibility = dense<16> : tensor<1xi32>} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #blocked1}>>
    %96 = tt.splat %87 : !tt.ptr<i8> -> tensor<1x256x!tt.ptr<i8>, #blocked1>
    %97 = tt.addptr %96, %81 : tensor<1x256x!tt.ptr<i8>, #blocked1>, tensor<1x256xi64, #blocked1>
    %98 = tt.expand_dims %95 {axis = 1 : i32} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #blocked1}>> -> tensor<16x1xi64, #blocked1>
    %99 = arith.extsi %arg12 : i32 to i64
    %100 = tt.splat %99 : i64 -> tensor<16x1xi64, #blocked1>
    %101 = arith.muli %98, %100 : tensor<16x1xi64, #blocked1>
    %102 = tt.broadcast %97 : tensor<1x256x!tt.ptr<i8>, #blocked1> -> tensor<16x256x!tt.ptr<i8>, #blocked1>
    %103 = tt.broadcast %101 : tensor<16x1xi64, #blocked1> -> tensor<16x256xi64, #blocked1>
    %104 = tt.addptr %102, %103 : tensor<16x256x!tt.ptr<i8>, #blocked1>, tensor<16x256xi64, #blocked1>
    %105 = arith.muli %53, %c512_i64 : i64
    %106 = tt.make_range {end = 512 : i32, start = 0 : i32} : tensor<512xi32, #ttg.slice<{dim = 0, parent = #blocked2}>>
    %107 = tt.make_range {end = 512 : i32, start = 0 : i32} : tensor<512xi32, #blocked3>
    %108 = arith.extsi %106 : tensor<512xi32, #ttg.slice<{dim = 0, parent = #blocked2}>> to tensor<512xi64, #ttg.slice<{dim = 0, parent = #blocked2}>>
    %109 = arith.extsi %107 : tensor<512xi32, #blocked3> to tensor<512xi64, #blocked3>
    %110 = tt.splat %105 : i64 -> tensor<512xi64, #ttg.slice<{dim = 0, parent = #blocked2}>>
    %111 = tt.splat %105 : i64 -> tensor<512xi64, #blocked3>
    %112 = arith.addi %110, %108 : tensor<512xi64, #ttg.slice<{dim = 0, parent = #blocked2}>>
    %113 = arith.addi %111, %109 : tensor<512xi64, #blocked3>
    %114 = tt.splat %93 : i64 -> tensor<512xi64, #ttg.slice<{dim = 0, parent = #blocked2}>>
    %115 = tt.splat %93 : i64 -> tensor<512xi64, #blocked3>
    %116 = arith.remsi %112, %114 {tt.contiguity = dense<512> : tensor<1xi32>, tt.divisibility = dense<512> : tensor<1xi32>} : tensor<512xi64, #ttg.slice<{dim = 0, parent = #blocked2}>>
    %117 = arith.extsi %arg8 : i32 to i64
    %118 = arith.muli %50, %117 : i64
    %119 = tt.addptr %arg7, %118 : !tt.ptr<i8>, i64
    %120 = tt.expand_dims %58 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #blocked2}>> -> tensor<128x1xi64, #blocked2>
    %121 = tt.expand_dims %116 {axis = 0 : i32} : tensor<512xi64, #ttg.slice<{dim = 0, parent = #blocked2}>> -> tensor<1x512xi64, #blocked2>
    %122 = arith.extsi %arg9 : i32 to i64
    %123 = tt.splat %122 : i64 -> tensor<1x512xi64, #blocked2>
    %124 = arith.muli %121, %123 : tensor<1x512xi64, #blocked2>
    %125 = tt.broadcast %120 : tensor<128x1xi64, #blocked2> -> tensor<128x512xi64, #blocked2>
    %126 = tt.broadcast %124 : tensor<1x512xi64, #blocked2> -> tensor<128x512xi64, #blocked2>
    %127 = arith.addi %125, %126 : tensor<128x512xi64, #blocked2>
    %128 = tt.splat %119 : !tt.ptr<i8> -> tensor<128x512x!tt.ptr<i8>, #blocked2>
    %129 = tt.addptr %128, %127 : tensor<128x512x!tt.ptr<i8>, #blocked2>, tensor<128x512xi64, #blocked2>
    %130 = arith.addi %arg18, %c255_i32 : i32
    %131 = arith.divsi %130, %c256_i32 : i32
    %132:4 = scf.for %arg28 = %c0_i32 to %131 step %c1_i32 iter_args(%arg29 = %cst_7, %arg30 = %84, %arg31 = %129, %arg32 = %104) -> (tensor<128x512xf32, #mma>, tensor<128x256x!tt.ptr<f8E4M3FN>, #blocked>, tensor<128x512x!tt.ptr<i8>, #blocked2>, tensor<16x256x!tt.ptr<i8>, #blocked1>)  : i32 {
      %192 = tt.load %arg30 : tensor<128x256x!tt.ptr<f8E4M3FN>, #blocked>
      %193 = tt.load %arg31 : tensor<128x512x!tt.ptr<i8>, #blocked2>
      %194 = tt.load %arg32 : tensor<16x256x!tt.ptr<i8>, #blocked1>
      %195 = ttg.convert_layout %194 : tensor<16x256xi8, #blocked1> -> tensor<16x256xi8, #linear2>
      %196 = tt.reshape %195 : tensor<16x256xi8, #linear2> -> tensor<16x1x4x16x2x2x1xi8, #linear3>
      %197 = tt.trans %196 {order = array<i32: 0, 5, 3, 1, 4, 2, 6>} : tensor<16x1x4x16x2x2x1xi8, #linear3> -> tensor<16x2x16x1x2x4x1xi8, #linear4>
      %198 = tt.reshape %197 : tensor<16x2x16x1x2x4x1xi8, #linear4> -> tensor<512x8xi8, #linear5>
      %199 = ttg.convert_layout %192 : tensor<128x256xf8E4M3FN, #blocked> -> tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #mma, kWidth = 16}>>
      %200 = ttg.convert_layout %193 : tensor<128x512xi8, #blocked2> -> tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #mma, kWidth = 16}>>
      %201 = tt.dot_scaled %199 scale %cst, %200 scale %198, %arg29 lhs = e4m3 rhs = e2m1 {fastMath = true} : tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #mma, kWidth = 16}>>, tensor<128x8xi8, #linear> * tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #mma, kWidth = 16}>>, tensor<512x8xi8, #linear5> -> tensor<128x512xf32, #mma>
      %202 = tt.addptr %arg32, %cst_1 : tensor<16x256x!tt.ptr<i8>, #blocked1>, tensor<16x256xi32, #blocked1>
      %203 = tt.addptr %arg30, %cst_2 : tensor<128x256x!tt.ptr<f8E4M3FN>, #blocked>, tensor<128x256xi32, #blocked>
      %204 = tt.addptr %arg31, %cst_3 : tensor<128x512x!tt.ptr<i8>, #blocked2>, tensor<128x512xi32, #blocked2>
      scf.yield %201, %203, %204, %202 : tensor<128x512xf32, #mma>, tensor<128x256x!tt.ptr<f8E4M3FN>, #blocked>, tensor<128x512x!tt.ptr<i8>, #blocked2>, tensor<16x256x!tt.ptr<i8>, #blocked1>
    }
    %133 = tt.load %arg13 : !tt.ptr<f32>
    %134 = tt.splat %133 : f32 -> tensor<128x512xf32, #mma>
    %135 = arith.mulf %132#0, %134 : tensor<128x512xf32, #mma>
    %136 = arith.cmpi slt, %60, %62 : tensor<128xi64, #ttg.slice<{dim = 1, parent = #blocked}>>
    %137 = arith.cmpi slt, %113, %115 : tensor<512xi64, #blocked3>
    %138 = arith.extsi %arg16 : i32 to i64
    %139 = arith.muli %50, %138 : i64
    %140 = tt.addptr %arg15, %139 : !tt.ptr<f32>, i64
    %141 = tt.splat %140 : !tt.ptr<f32> -> tensor<512x!tt.ptr<f32>, #blocked3>
    %142 = tt.addptr %141, %113 : tensor<512x!tt.ptr<f32>, #blocked3>, tensor<512xi64, #blocked3>
    %143 = tt.load %142, %137, %cst_6 : tensor<512x!tt.ptr<f32>, #blocked3>
    %144 = ttg.convert_layout %143 : tensor<512xf32, #blocked3> -> tensor<512xf32, #ttg.slice<{dim = 0, parent = #blocked4}>>
    %145 = tt.expand_dims %144 {axis = 0 : i32} : tensor<512xf32, #ttg.slice<{dim = 0, parent = #blocked4}>> -> tensor<1x512xf32, #blocked4>
    %146 = ttg.convert_layout %145 : tensor<1x512xf32, #blocked4> -> tensor<1x512xf32, #mma>
    %147 = tt.broadcast %146 : tensor<1x512xf32, #mma> -> tensor<128x512xf32, #mma>
    %148 = arith.addf %135, %147 : tensor<128x512xf32, #mma>
    %149 = tt.reshape %148 : tensor<128x512xf32, #mma> -> tensor<128x256x2xf32, #linear6>
    %outLHS, %outRHS = tt.split %149 : tensor<128x256x2xf32, #linear6> -> tensor<128x256xf32, #linear1>
    %150 = tt.splat %arg27 : f32 -> tensor<128x256xf32, #linear1>
    %151 = tt.splat %arg27 : f32 -> tensor<128x256xf32, #linear1>
    %152 = arith.minnumf %outLHS, %151 : tensor<128x256xf32, #linear1>
    %153 = arith.minnumf %outRHS, %150 : tensor<128x256xf32, #linear1>
    %154 = arith.subf %cst_5, %arg27 : f32
    %155 = tt.splat %154 : f32 -> tensor<128x256xf32, #linear1>
    %156 = arith.maxnumf %155, %153 : tensor<128x256xf32, #linear1>
    %157 = arith.mulf %arg26, %cst_4 : f32
    %158 = tt.splat %157 : f32 -> tensor<128x256xf32, #linear1>
    %159 = arith.mulf %158, %152 : tensor<128x256xf32, #linear1>
    %160 = math.exp2 %159 : tensor<128x256xf32, #linear1>
    %161 = arith.addf %160, %cst_8 : tensor<128x256xf32, #linear1>
    %162 = arith.divf %152, %161 : tensor<128x256xf32, #linear1>
    %163 = math.fma %162, %156, %162 : tensor<128x256xf32, #linear1>
    %164 = arith.muli %53, %c256_i64 : i64
    %165 = tt.splat %164 : i64 -> tensor<256xi64, #ttg.slice<{dim = 0, parent = #blocked}>>
    %166 = arith.addi %165, %71 : tensor<256xi64, #ttg.slice<{dim = 0, parent = #blocked}>>
    %167 = arith.extsi %12 : i32 to i64
    %168 = tt.splat %167 : i64 -> tensor<256xi64, #ttg.slice<{dim = 0, parent = #blocked}>>
    %169 = arith.cmpi slt, %166, %168 : tensor<256xi64, #ttg.slice<{dim = 0, parent = #blocked}>>
    %170 = tt.load %arg14 : !tt.ptr<f32>
    %171 = tt.splat %170 : f32 -> tensor<128x256xf32, #linear1>
    %172 = arith.divf %163, %171 : tensor<128x256xf32, #linear1>
    %173 = tt.fp_to_fp %172, rounding = rtne : tensor<128x256xf32, #linear1> -> tensor<128x256xf8E4M3FN, #linear1>
    %174 = ttg.convert_layout %173 : tensor<128x256xf8E4M3FN, #linear1> -> tensor<128x256xf8E4M3FN, #blocked>
    %175 = arith.extsi %arg2 : i32 to i64
    %176 = arith.muli %52, %175 : i64
    %177 = tt.addptr %arg0, %176 : !tt.ptr<f8E4M3FN>, i64
    %178 = tt.expand_dims %60 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #blocked}>> -> tensor<128x1xi64, #blocked>
    %179 = tt.splat %175 : i64 -> tensor<128x1xi64, #blocked>
    %180 = arith.muli %178, %179 : tensor<128x1xi64, #blocked>
    %181 = tt.splat %177 : !tt.ptr<f8E4M3FN> -> tensor<128x1x!tt.ptr<f8E4M3FN>, #blocked>
    %182 = tt.addptr %181, %180 : tensor<128x1x!tt.ptr<f8E4M3FN>, #blocked>, tensor<128x1xi64, #blocked>
    %183 = tt.expand_dims %166 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #blocked}>> -> tensor<1x256xi64, #blocked>
    %184 = tt.broadcast %182 : tensor<128x1x!tt.ptr<f8E4M3FN>, #blocked> -> tensor<128x256x!tt.ptr<f8E4M3FN>, #blocked>
    %185 = tt.broadcast %183 : tensor<1x256xi64, #blocked> -> tensor<128x256xi64, #blocked>
    %186 = tt.addptr %184, %185 : tensor<128x256x!tt.ptr<f8E4M3FN>, #blocked>, tensor<128x256xi64, #blocked>
    %187 = tt.expand_dims %136 {axis = 1 : i32} : tensor<128xi1, #ttg.slice<{dim = 1, parent = #blocked}>> -> tensor<128x1xi1, #blocked>
    %188 = tt.expand_dims %169 {axis = 0 : i32} : tensor<256xi1, #ttg.slice<{dim = 0, parent = #blocked}>> -> tensor<1x256xi1, #blocked>
    %189 = tt.broadcast %187 : tensor<128x1xi1, #blocked> -> tensor<128x256xi1, #blocked>
    %190 = tt.broadcast %188 : tensor<1x256xi1, #blocked> -> tensor<128x256xi1, #blocked>
    %191 = arith.andi %189, %190 : tensor<128x256xi1, #blocked>
    tt.store %186, %174, %191 : tensor<128x256x!tt.ptr<f8E4M3FN>, #blocked>
    tt.return
  }
}

