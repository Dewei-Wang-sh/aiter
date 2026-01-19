[tritongpu-remove-layout-conversions]: propagateLayout considering %143 = tt.load %142, %137, %cst_0 : tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>, which has 1 candidate encoding(s):
[tritongpu-remove-layout-conversions]:   #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>
[tritongpu-remove-layout-conversions]: changed: 1
[tritongpu-remove-layout-conversions]: propagateLayout considering %144 = ttg.convert_layout %143 : tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> -> tensor<512xf32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>>, which has 1 candidate encoding(s):
[tritongpu-remove-layout-conversions]:   #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>
[tritongpu-remove-layout-conversions]: changed: 0
[tritongpu-remove-layout-conversions]: propagateLayout considering %204 = tt.dot_scaled %200 scale %202, %201 scale %203, %199 lhs = e4m3 rhs = e2m1 {fastMath = true} : tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>, tensor<128x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[0, 0], [0, 0], [0, 0]], block = []}>> * tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>, tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>> -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, which has 1 candidate encoding(s):
[tritongpu-remove-layout-conversions]:   #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>
[tritongpu-remove-layout-conversions]: changed: 1
[tritongpu-remove-layout-conversions]: propagateLayout considering %205 = ttg.convert_layout %204 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>> -> tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>>, which has 1 candidate encoding(s):
[tritongpu-remove-layout-conversions]:   #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>
[tritongpu-remove-layout-conversions]: changed: 2
[tritongpu-remove-layout-conversions]: propagateLayout considering <block argument> of type 'tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>>' at index: 1, which has 1 candidate encoding(s):
[tritongpu-remove-layout-conversions]:   #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>
[tritongpu-remove-layout-conversions]: changed: 1
[tritongpu-remove-layout-conversions]: propagateLayout considering %199 = ttg.convert_layout %arg29 : tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, which has 1 candidate encoding(s):
[tritongpu-remove-layout-conversions]:   #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>
[tritongpu-remove-layout-conversions]: changed: 0
[tritongpu-remove-layout-conversions]: propagateLayout considering %132:4 = scf.for %arg28 = %c0_i32 to %131 step %c1_i32 iter_args(%arg29 = %cst_1, %arg30 = %84, %arg31 = %129, %arg32 = %104) -> (tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>>, tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>)  : i32 {
  %190 = tt.load %arg30 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
  %191 = ttg.convert_layout %190 : tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [2, 4], order = [1, 0]}>>
  %192 = tt.load %arg31 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
  %193 = ttg.convert_layout %192 : tensor<128x512xi8, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi8, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>>
  %194 = tt.load %arg32 {cheap = true} : tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
  %195 = tt.reshape %194 : tensor<16x256xi8, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<16x1x4x16x2x2x1xi8, #ttg.blocked<{sizePerThread = [1, 1, 1, 2, 2, 2, 1], threadsPerWarp = [2, 1, 4, 8, 1, 1, 1], warpsPerCTA = [8, 1, 1, 1, 1, 1, 1], order = [6, 5, 4, 3, 2, 1, 0]}>>
  %196 = tt.trans %195 {order = array<i32: 0, 4, 3, 1, 5, 2, 6>} : tensor<16x1x4x16x2x2x1xi8, #ttg.blocked<{sizePerThread = [1, 1, 1, 2, 2, 2, 1], threadsPerWarp = [2, 1, 4, 8, 1, 1, 1], warpsPerCTA = [8, 1, 1, 1, 1, 1, 1], order = [6, 5, 4, 3, 2, 1, 0]}>> -> tensor<16x2x16x1x2x4x1xi8, #ttg.blocked<{sizePerThread = [1, 2, 2, 1, 2, 1, 1], threadsPerWarp = [2, 1, 8, 1, 1, 4, 1], warpsPerCTA = [8, 1, 1, 1, 1, 1, 1], order = [6, 4, 1, 2, 5, 3, 0]}>>
  %197 = tt.reshape %196 : tensor<16x2x16x1x2x4x1xi8, #ttg.blocked<{sizePerThread = [1, 2, 2, 1, 2, 1, 1], threadsPerWarp = [2, 1, 8, 1, 1, 4, 1], warpsPerCTA = [8, 1, 1, 1, 1, 1, 1], order = [6, 4, 1, 2, 5, 3, 0]}>> -> tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [1, 0]], lane = [[2, 0], [4, 0], [8, 0], [0, 1], [0, 2], [32, 0]], warp = [[64, 0], [128, 0], [256, 0]], block = []}>>
  %198 = ttg.convert_layout %197 : tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [1, 0]], lane = [[2, 0], [4, 0], [8, 0], [0, 1], [0, 2], [32, 0]], warp = [[64, 0], [128, 0], [256, 0]], block = []}>> -> tensor<512x8xi8, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [8, 8], warpsPerCTA = [8, 1], order = [1, 0]}>>
  %199 = ttg.convert_layout %arg29 : tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
  %200 = ttg.convert_layout %191 : tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [2, 4], order = [1, 0]}>> -> tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
  %201 = ttg.convert_layout %193 : tensor<128x512xi8, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> -> tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
  %202 = ttg.convert_layout %cst : tensor<128x8xi8, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [8, 8], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[0, 0], [0, 0], [0, 0]], block = []}>>
  %203 = ttg.convert_layout %198 : tensor<512x8xi8, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [8, 8], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>>
  %204 = tt.dot_scaled %200 scale %202, %201 scale %203, %199 lhs = e4m3 rhs = e2m1 {fastMath = true} : tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>, tensor<128x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[0, 0], [0, 0], [0, 0]], block = []}>> * tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>, tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>> -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
  %205 = ttg.convert_layout %204 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>> -> tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>>
  %206 = tt.addptr %arg32, %cst_7 : tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256xi32, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
  %207 = tt.addptr %arg30, %cst_6 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
  %208 = tt.addptr %arg31, %cst_5 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<128x512xi32, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
  scf.yield %205, %207, %208, %206 : tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>>, tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
}, which has 1 candidate encoding(s):
[tritongpu-remove-layout-conversions]:   #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>
[tritongpu-remove-layout-conversions]: changed: 1
[tritongpu-remove-layout-conversions]: propagateLayout considering %135 = arith.mulf %132#0, %134 : tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>>, which has 1 candidate encoding(s):
[tritongpu-remove-layout-conversions]:   #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>
[tritongpu-remove-layout-conversions]: changed: 1
[tritongpu-remove-layout-conversions]: propagateLayout considering %147 = arith.addf %135, %146 : tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>>, which has 1 candidate encoding(s):
[tritongpu-remove-layout-conversions]:   #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>
[tritongpu-remove-layout-conversions]: changed: 1
[tritongpu-remove-layout-conversions]: propagateLayout considering %148 = tt.reshape %147 : tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> -> tensor<128x256x2xf32, #ttg.blocked<{sizePerThread = [1, 1, 1], threadsPerWarp = [1, 32, 2], warpsPerCTA = [1, 8, 1], order = [2, 1, 0]}>>, which has 1 candidate encoding(s):
[tritongpu-remove-layout-conversions]:   #ttg.linear<{register = [[0, 0, 1], [0, 1, 0], [0, 8, 0], [0, 128, 0], [16, 0, 0], [32, 0, 0], [64, 0, 0]], lane = [[1, 0, 0], [2, 0, 0], [4, 0, 0], [8, 0, 0], [0, 2, 0], [0, 4, 0]], warp = [[0, 16, 0], [0, 32, 0], [0, 64, 0]], block = []}>
[tritongpu-remove-layout-conversions]: changed: 1
[tritongpu-remove-layout-conversions]: propagateLayout considering %149 = ttg.convert_layout %148 : tensor<128x256x2xf32, #ttg.blocked<{sizePerThread = [1, 1, 1], threadsPerWarp = [1, 32, 2], warpsPerCTA = [1, 8, 1], order = [2, 1, 0]}>> -> tensor<128x256x2xf32, #ttg.blocked<{sizePerThread = [1, 16, 2], threadsPerWarp = [4, 16, 1], warpsPerCTA = [8, 1, 1], order = [2, 1, 0]}>>, which has 1 candidate encoding(s):
[tritongpu-remove-layout-conversions]:   #ttg.linear<{register = [[0, 0, 1], [0, 1, 0], [0, 8, 0], [0, 128, 0], [16, 0, 0], [32, 0, 0], [64, 0, 0]], lane = [[1, 0, 0], [2, 0, 0], [4, 0, 0], [8, 0, 0], [0, 2, 0], [0, 4, 0]], warp = [[0, 16, 0], [0, 32, 0], [0, 64, 0]], block = []}>
[tritongpu-remove-layout-conversions]: changed: 2
[tritongpu-remove-layout-conversions]: propagateLayout considering %outLHS, %outRHS = tt.split %149 : tensor<128x256x2xf32, #ttg.blocked<{sizePerThread = [1, 16, 2], threadsPerWarp = [4, 16, 1], warpsPerCTA = [8, 1, 1], order = [2, 1, 0]}>> -> tensor<128x256xf32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, which has 1 candidate encoding(s):
[tritongpu-remove-layout-conversions]:   #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>
[tritongpu-remove-layout-conversions]: changed: 1
[tritongpu-remove-layout-conversions]: propagateLayout considering %152 = arith.minnumf %outRHS, %150 : tensor<128x256xf32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, which has 1 candidate encoding(s):
[tritongpu-remove-layout-conversions]:   #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>
[tritongpu-remove-layout-conversions]: changed: 1
[tritongpu-remove-layout-conversions]: propagateLayout considering %155 = arith.maxnumf %154, %152 : tensor<128x256xf32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, which has 1 candidate encoding(s):
[tritongpu-remove-layout-conversions]:   #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>
[tritongpu-remove-layout-conversions]: changed: 1
[tritongpu-remove-layout-conversions]: propagateLayout considering %162 = math.fma %161, %155, %161 : tensor<128x256xf32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, which has 1 candidate encoding(s):
[tritongpu-remove-layout-conversions]:   #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>
[tritongpu-remove-layout-conversions]: changed: 1
[tritongpu-remove-layout-conversions]: propagateLayout considering %171 = arith.divf %162, %170 : tensor<128x256xf32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, which has 1 candidate encoding(s):
[tritongpu-remove-layout-conversions]:   #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>
[tritongpu-remove-layout-conversions]: changed: 1
[tritongpu-remove-layout-conversions]: propagateLayout considering %172 = tt.fp_to_fp %171, rounding = rtne : tensor<128x256xf32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, which has 1 candidate encoding(s):
[tritongpu-remove-layout-conversions]:   #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>
[tritongpu-remove-layout-conversions]: changed: 0
[tritongpu-remove-layout-conversions]: propagateLayout considering %outLHS, %outRHS = tt.split %149 : tensor<128x256x2xf32, #ttg.blocked<{sizePerThread = [1, 16, 2], threadsPerWarp = [4, 16, 1], warpsPerCTA = [8, 1, 1], order = [2, 1, 0]}>> -> tensor<128x256xf32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, which has 1 candidate encoding(s):
[tritongpu-remove-layout-conversions]:   #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>
[tritongpu-remove-layout-conversions]: changed: 1
[tritongpu-remove-layout-conversions]: propagateLayout considering %151 = arith.minnumf %outLHS, %150 : tensor<128x256xf32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, which has 1 candidate encoding(s):
[tritongpu-remove-layout-conversions]:   #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>
[tritongpu-remove-layout-conversions]: changed: 2
[tritongpu-remove-layout-conversions]: propagateLayout considering %158 = arith.mulf %157, %151 : tensor<128x256xf32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, which has 1 candidate encoding(s):
[tritongpu-remove-layout-conversions]:   #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>
[tritongpu-remove-layout-conversions]: changed: 1
[tritongpu-remove-layout-conversions]: propagateLayout considering %159 = math.exp2 %158 : tensor<128x256xf32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, which has 1 candidate encoding(s):
[tritongpu-remove-layout-conversions]:   #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>
[tritongpu-remove-layout-conversions]: changed: 1
[tritongpu-remove-layout-conversions]: propagateLayout considering %160 = arith.addf %159, %cst_4 : tensor<128x256xf32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, which has 1 candidate encoding(s):
[tritongpu-remove-layout-conversions]:   #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>
[tritongpu-remove-layout-conversions]: changed: 0
[tritongpu-remove-layout-conversions]: propagateLayout considering %161 = arith.divf %151, %160 : tensor<128x256xf32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, which has 1 candidate encoding(s):
[tritongpu-remove-layout-conversions]:   #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>
[tritongpu-remove-layout-conversions]: changed: 0
[tritongpu-remove-layout-conversions]: propagateLayout considering %192 = tt.load %arg31 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, which has 1 candidate encoding(s):
[tritongpu-remove-layout-conversions]:   #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>
[tritongpu-remove-layout-conversions]: changed: 1
[tritongpu-remove-layout-conversions]: propagateLayout considering %193 = ttg.convert_layout %192 : tensor<128x512xi8, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi8, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>>, which has 1 candidate encoding(s):
[tritongpu-remove-layout-conversions]:   #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>
[tritongpu-remove-layout-conversions]: changed: 1
[tritongpu-remove-layout-conversions]: propagateLayout considering %201 = ttg.convert_layout %193 : tensor<128x512xi8, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> -> tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>, which has 1 candidate encoding(s):
[tritongpu-remove-layout-conversions]:   #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>
[tritongpu-remove-layout-conversions]: changed: 0
[tritongpu-remove-layout-conversions]: propagateLayout considering %190 = tt.load %arg30 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, which has 1 candidate encoding(s):
[tritongpu-remove-layout-conversions]:   #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>
[tritongpu-remove-layout-conversions]: changed: 1
[tritongpu-remove-layout-conversions]: propagateLayout considering %191 = ttg.convert_layout %190 : tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [2, 4], order = [1, 0]}>>, which has 1 candidate encoding(s):
[tritongpu-remove-layout-conversions]:   #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>
[tritongpu-remove-layout-conversions]: changed: 1
[tritongpu-remove-layout-conversions]: propagateLayout considering %200 = ttg.convert_layout %191 : tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [2, 4], order = [1, 0]}>> -> tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>, which has 1 candidate encoding(s):
[tritongpu-remove-layout-conversions]:   #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>
[tritongpu-remove-layout-conversions]: changed: 0
[tritongpu-remove-layout-conversions]: Module after propagating layouts forward:
module attributes {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 8 : i32, ttg.target = "hip:gfx950", "ttg.threads-per-warp" = 64 : i32} {
  tt.func public @_moe_gemm_a8w4(%arg0: !tt.ptr<f8E4M3FN> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg1: i32 {tt.divisibility = 16 : i32}, %arg2: i32 {tt.divisibility = 16 : i32}, %arg3: !tt.ptr<f8E4M3FN> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg4: i32 {tt.divisibility = 16 : i32}, %arg5: i32 {tt.divisibility = 16 : i32}, %arg6: i32 {tt.divisibility = 16 : i32}, %arg7: !tt.ptr<i8> {tt.divisibility = 16 : i32}, %arg8: i32 {tt.divisibility = 16 : i32}, %arg9: i32 {tt.divisibility = 16 : i32}, %arg10: !tt.ptr<i8> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg11: i32 {tt.divisibility = 16 : i32}, %arg12: i32 {tt.divisibility = 16 : i32}, %arg13: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg14: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg15: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg16: i32 {tt.divisibility = 16 : i32}, %arg17: i32 {tt.divisibility = 16 : i32}, %arg18: i32 {tt.divisibility = 16 : i32}, %arg19: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg20: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg21: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg22: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg23: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg24: i32, %arg25: i32, %arg26: f32, %arg27: f32) attributes {noinline = false} {
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
    %cst = arith.constant dense<127> : tensor<128x8xi8, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [8, 8], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %c1_i32 = arith.constant 1 : i32
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %c8_i32 = arith.constant 8 : i32
    %c4_i32 = arith.constant 4 : i32
    %c256_i32 = arith.constant 256 : i32
    %c255_i32 = arith.constant 255 : i32
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>>
    %0 = ttg.convert_layout %cst_1 : tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %cst_2 = arith.constant 0.000000e+00 : f32
    %cst_3 = arith.constant -1.44269502 : f32
    %cst_4 = arith.constant dense<1.000000e+00> : tensor<128x256xf32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %1 = ttg.convert_layout %cst_4 : tensor<128x256xf32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %cst_5 = arith.constant dense<128> : tensor<128x512xi32, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %cst_6 = arith.constant dense<256> : tensor<128x256xi32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %cst_7 = arith.constant dense<256> : tensor<16x256xi32, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %cst_8 = arith.constant dense<8> : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %2 = arith.cmpi sge, %arg1, %c0_i32 : i32
    llvm.intr.assume %2 : i1
    %3 = arith.cmpi sge, %arg2, %c0_i32 : i32
    llvm.intr.assume %3 : i1
    llvm.intr.assume %true : i1
    %4 = arith.cmpi sge, %arg4, %c0_i32 : i32
    llvm.intr.assume %4 : i1
    llvm.intr.assume %true : i1
    %5 = arith.cmpi sge, %arg8, %c0_i32 : i32
    llvm.intr.assume %5 : i1
    llvm.intr.assume %true : i1
    %6 = arith.cmpi sge, %arg9, %c0_i32 : i32
    llvm.intr.assume %6 : i1
    %7 = arith.cmpi sge, %arg5, %c0_i32 : i32
    llvm.intr.assume %7 : i1
    %8 = arith.cmpi sge, %arg6, %c0_i32 : i32
    llvm.intr.assume %8 : i1
    %9 = arith.cmpi sge, %arg11, %c0_i32 : i32
    llvm.intr.assume %9 : i1
    llvm.intr.assume %true : i1
    %10 = arith.cmpi sge, %arg12, %c0_i32 : i32
    llvm.intr.assume %10 : i1
    %11 = arith.cmpi sge, %arg16, %c0_i32 : i32
    llvm.intr.assume %11 : i1
    %12 = arith.cmpi sge, %arg24, %c0_i32 : i32
    llvm.intr.assume %12 : i1
    %13 = arith.cmpi sge, %arg25, %c0_i32 : i32
    llvm.intr.assume %13 : i1
    %14 = arith.divsi %arg17, %c2_i32 : i32
    %15 = tt.get_program_id x : i32
    %16 = tt.load %arg22 : !tt.ptr<i32>
    %17 = arith.subi %arg24, %16 : i32
    %18 = arith.subi %arg24, %17 : i32
    %19 = arith.cmpi sge, %18, %c0_i32 : i32
    llvm.intr.assume %19 : i1
    %20 = arith.muli %18, %arg25 : i32
    %21 = arith.cmpi sgt, %17, %c0_i32 : i32
    %22 = arith.cmpi sge, %15, %20 : i32
    %23 = arith.andi %21, %22 : i1
    cf.cond_br %23, ^bb1, ^bb2
  ^bb1:  // 2 preds: ^bb0, ^bb2
    tt.return
  ^bb2:  // pred: ^bb0
    %24 = arith.divsi %20, %c8_i32 : i32
    %25 = arith.remsi %20, %c8_i32 : i32
    %26 = arith.remsi %15, %c8_i32 : i32
    %27 = arith.divsi %15, %c8_i32 : i32
    %28 = arith.muli %26, %24 : i32
    %29 = arith.minsi %26, %25 : i32
    %30 = arith.addi %28, %29 : i32
    %31 = arith.addi %30, %27 : i32
    %32 = arith.remsi %31, %20 : i32
    %33 = arith.muli %arg25, %c4_i32 : i32
    %34 = arith.divsi %32, %33 : i32
    %35 = arith.muli %34, %c4_i32 : i32
    %36 = arith.subi %18, %35 : i32
    %37 = arith.minsi %36, %c4_i32 : i32
    %38 = arith.cmpi sge, %37, %c0_i32 : i32
    llvm.intr.assume %38 : i1
    %39 = arith.remsi %32, %37 : i32
    %40 = arith.addi %35, %39 : i32
    %41 = arith.remsi %32, %33 : i32
    %42 = arith.divsi %41, %37 : i32
    %43 = tt.addptr %arg23, %40 : !tt.ptr<i32>, i32
    %44 = tt.load %43 : !tt.ptr<i32>
    %45 = arith.cmpi eq, %44, %c-1_i32 : i32
    cf.cond_br %45, ^bb1, ^bb3
  ^bb3:  // pred: ^bb2
    %46 = arith.andi %44, %c65535_i32 : i32
    %47 = arith.shrsi %44, %c16_i32 : i32
    %48 = tt.addptr %arg20, %46 : !tt.ptr<i32>, i32
    %49 = tt.load %48 : !tt.ptr<i32>
    %50 = tt.addptr %arg21, %46 : !tt.ptr<i32>, i32
    %51 = tt.load %50 : !tt.ptr<i32>
    %52 = arith.extsi %46 : i32 to i64
    %53 = arith.extsi %47 : i32 to i64
    %54 = arith.extsi %51 : i32 to i64
    %55 = arith.extsi %42 : i32 to i64
    %56 = arith.muli %53, %c128_i64 : i64
    %57 = tt.make_range {end = 128 : i32, start = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %58 = tt.make_range {end = 128 : i32, start = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %59 = arith.extsi %57 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %60 = arith.extsi %58 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %61 = tt.splat %56 : i64 -> tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %62 = arith.addi %61, %59 : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %63 = arith.extsi %49 : i32 to i64
    %64 = tt.splat %63 : i64 -> tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %65 = arith.remsi %62, %64 {tt.contiguity = dense<128> : tensor<1xi32>, tt.divisibility = dense<128> : tensor<1xi32>} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %66 = tt.addptr %arg19, %54 : !tt.ptr<i32>, i64
    %67 = tt.splat %66 : !tt.ptr<i32> -> tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %68 = tt.addptr %67, %65 : tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>, tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %69 = tt.load %68 : tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %70 = arith.divsi %69, %cst_8 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %71 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %72 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %73 = arith.extsi %71 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %74 = arith.extsi %72 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %75 = arith.extsi %70 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %76 = tt.expand_dims %75 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %77 = arith.extsi %arg4 : i32 to i64
    %78 = tt.splat %77 : i64 -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %79 = arith.muli %76, %78 : tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %80 = tt.splat %arg3 : !tt.ptr<f8E4M3FN> -> tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %81 = tt.addptr %80, %79 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %82 = tt.expand_dims %73 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %83 = tt.expand_dims %74 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %84 = tt.broadcast %81 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %85 = tt.broadcast %82 : tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %86 = tt.addptr %84, %85 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %87 = arith.extsi %arg11 : i32 to i64
    %88 = arith.muli %52, %87 : i64
    %89 = tt.addptr %arg10, %88 : !tt.ptr<i8>, i64
    %90 = arith.muli %55, %c16_i64 : i64
    %91 = tt.make_range {end = 16 : i32, start = 0 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %92 = arith.extsi %91 : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %93 = tt.splat %90 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %94 = arith.addi %93, %92 : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %95 = arith.extsi %arg17 : i32 to i64
    %96 = tt.splat %95 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %97 = arith.remsi %94, %96 {tt.contiguity = dense<16> : tensor<1xi32>, tt.divisibility = dense<16> : tensor<1xi32>} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %98 = tt.splat %89 : !tt.ptr<i8> -> tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %99 = tt.addptr %98, %83 : tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %100 = tt.expand_dims %97 {axis = 1 : i32} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %101 = arith.extsi %arg12 : i32 to i64
    %102 = tt.splat %101 : i64 -> tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %103 = arith.muli %100, %102 : tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %104 = tt.broadcast %99 : tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %105 = tt.broadcast %103 : tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<16x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %106 = tt.addptr %104, %105 : tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %107 = arith.muli %55, %c512_i64 : i64
    %108 = tt.make_range {end = 512 : i32, start = 0 : i32} : tensor<512xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %109 = tt.make_range {end = 512 : i32, start = 0 : i32} : tensor<512xi32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %110 = arith.extsi %108 : tensor<512xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> to tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %111 = arith.extsi %109 : tensor<512xi32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> to tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %112 = tt.splat %107 : i64 -> tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %113 = tt.splat %107 : i64 -> tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %114 = arith.addi %112, %110 : tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %115 = arith.addi %113, %111 : tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %116 = tt.splat %95 : i64 -> tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %117 = tt.splat %95 : i64 -> tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %118 = arith.remsi %114, %116 {tt.contiguity = dense<512> : tensor<1xi32>, tt.divisibility = dense<512> : tensor<1xi32>} : tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %119 = arith.extsi %arg8 : i32 to i64
    %120 = arith.muli %52, %119 : i64
    %121 = tt.addptr %arg7, %120 : !tt.ptr<i8>, i64
    %122 = tt.expand_dims %60 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %123 = tt.expand_dims %118 {axis = 0 : i32} : tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> -> tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %124 = arith.extsi %arg9 : i32 to i64
    %125 = tt.splat %124 : i64 -> tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %126 = arith.muli %123, %125 : tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %127 = tt.broadcast %122 : tensor<128x1xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %128 = tt.broadcast %126 : tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %129 = arith.addi %127, %128 : tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %130 = tt.splat %121 : !tt.ptr<i8> -> tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %131 = tt.addptr %130, %129 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %132 = arith.addi %arg18, %c255_i32 : i32
    %133 = arith.divsi %132, %c256_i32 : i32
    %134:4 = scf.for %arg28 = %c0_i32 to %133 step %c1_i32 iter_args(%arg29 = %0, %arg30 = %86, %arg31 = %131, %arg32 = %106) -> (tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>)  : i32 {
      %201 = ttg.convert_layout %arg29 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>> -> tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>>
      %202 = tt.load %arg30 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %203 = ttg.convert_layout %202 : tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %204 = tt.load %arg31 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
      %205 = ttg.convert_layout %204 : tensor<128x512xi8, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi8, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
      %206 = tt.load %arg32 {cheap = true} : tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %207 = tt.reshape %206 : tensor<16x256xi8, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<16x1x4x16x2x2x1xi8, #ttg.blocked<{sizePerThread = [1, 1, 1, 2, 2, 2, 1], threadsPerWarp = [2, 1, 4, 8, 1, 1, 1], warpsPerCTA = [8, 1, 1, 1, 1, 1, 1], order = [6, 5, 4, 3, 2, 1, 0]}>>
      %208 = tt.trans %207 {order = array<i32: 0, 4, 3, 1, 5, 2, 6>} : tensor<16x1x4x16x2x2x1xi8, #ttg.blocked<{sizePerThread = [1, 1, 1, 2, 2, 2, 1], threadsPerWarp = [2, 1, 4, 8, 1, 1, 1], warpsPerCTA = [8, 1, 1, 1, 1, 1, 1], order = [6, 5, 4, 3, 2, 1, 0]}>> -> tensor<16x2x16x1x2x4x1xi8, #ttg.blocked<{sizePerThread = [1, 2, 2, 1, 2, 1, 1], threadsPerWarp = [2, 1, 8, 1, 1, 4, 1], warpsPerCTA = [8, 1, 1, 1, 1, 1, 1], order = [6, 4, 1, 2, 5, 3, 0]}>>
      %209 = tt.reshape %208 : tensor<16x2x16x1x2x4x1xi8, #ttg.blocked<{sizePerThread = [1, 2, 2, 1, 2, 1, 1], threadsPerWarp = [2, 1, 8, 1, 1, 4, 1], warpsPerCTA = [8, 1, 1, 1, 1, 1, 1], order = [6, 4, 1, 2, 5, 3, 0]}>> -> tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [1, 0]], lane = [[2, 0], [4, 0], [8, 0], [0, 1], [0, 2], [32, 0]], warp = [[64, 0], [128, 0], [256, 0]], block = []}>>
      %210 = ttg.convert_layout %209 : tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [1, 0]], lane = [[2, 0], [4, 0], [8, 0], [0, 1], [0, 2], [32, 0]], warp = [[64, 0], [128, 0], [256, 0]], block = []}>> -> tensor<512x8xi8, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [8, 8], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %211 = ttg.convert_layout %201 : tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
      %212 = ttg.convert_layout %203 : tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %213 = ttg.convert_layout %212 : tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
      %214 = ttg.convert_layout %205 : tensor<128x512xi8, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi8, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
      %215 = ttg.convert_layout %214 : tensor<128x512xi8, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
      %216 = ttg.convert_layout %cst : tensor<128x8xi8, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [8, 8], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[0, 0], [0, 0], [0, 0]], block = []}>>
      %217 = ttg.convert_layout %210 : tensor<512x8xi8, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [8, 8], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>>
      %218 = tt.dot_scaled %213 scale %216, %215 scale %217, %211 lhs = e4m3 rhs = e2m1 {fastMath = true} : tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>, tensor<128x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[0, 0], [0, 0], [0, 0]], block = []}>> * tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>, tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>> -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
      %219 = ttg.convert_layout %218 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>> -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
      %220 = tt.addptr %arg32, %cst_7 : tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256xi32, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %221 = tt.addptr %arg30, %cst_6 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %222 = tt.addptr %arg31, %cst_5 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<128x512xi32, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
      scf.yield %219, %221, %222, %220 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    }
    %135 = tt.load %arg13 : !tt.ptr<f32>
    %136 = tt.splat %135 : f32 -> tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>>
    %137 = ttg.convert_layout %136 : tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %138 = arith.mulf %134#0, %137 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %139 = arith.cmpi slt, %62, %64 : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %140 = arith.cmpi slt, %115, %117 : tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %141 = arith.extsi %arg16 : i32 to i64
    %142 = arith.muli %52, %141 : i64
    %143 = tt.addptr %arg15, %142 : !tt.ptr<f32>, i64
    %144 = tt.splat %143 : !tt.ptr<f32> -> tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %145 = tt.addptr %144, %115 : tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>, tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %146 = tt.load %145, %140, %cst_0 : tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %147 = ttg.convert_layout %146 : tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> -> tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %148 = ttg.convert_layout %147 : tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> -> tensor<512xf32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>>
    %149 = tt.expand_dims %148 {axis = 0 : i32} : tensor<512xf32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>> -> tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>>
    %150 = tt.broadcast %149 : tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> -> tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>>
    %151 = ttg.convert_layout %150 : tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %152 = arith.addf %138, %151 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %153 = tt.reshape %152 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>> -> tensor<128x256x2xf32, #ttg.linear<{register = [[0, 0, 1], [0, 1, 0], [0, 8, 0], [0, 128, 0], [16, 0, 0], [32, 0, 0], [64, 0, 0]], lane = [[1, 0, 0], [2, 0, 0], [4, 0, 0], [8, 0, 0], [0, 2, 0], [0, 4, 0]], warp = [[0, 16, 0], [0, 32, 0], [0, 64, 0]], block = []}>>
    %154 = ttg.convert_layout %153 : tensor<128x256x2xf32, #ttg.linear<{register = [[0, 0, 1], [0, 1, 0], [0, 8, 0], [0, 128, 0], [16, 0, 0], [32, 0, 0], [64, 0, 0]], lane = [[1, 0, 0], [2, 0, 0], [4, 0, 0], [8, 0, 0], [0, 2, 0], [0, 4, 0]], warp = [[0, 16, 0], [0, 32, 0], [0, 64, 0]], block = []}>> -> tensor<128x256x2xf32, #ttg.linear<{register = [[0, 0, 1], [0, 1, 0], [0, 8, 0], [0, 128, 0], [16, 0, 0], [32, 0, 0], [64, 0, 0]], lane = [[1, 0, 0], [2, 0, 0], [4, 0, 0], [8, 0, 0], [0, 2, 0], [0, 4, 0]], warp = [[0, 16, 0], [0, 32, 0], [0, 64, 0]], block = []}>>
    %outLHS, %outRHS = tt.split %154 : tensor<128x256x2xf32, #ttg.linear<{register = [[0, 0, 1], [0, 1, 0], [0, 8, 0], [0, 128, 0], [16, 0, 0], [32, 0, 0], [64, 0, 0]], lane = [[1, 0, 0], [2, 0, 0], [4, 0, 0], [8, 0, 0], [0, 2, 0], [0, 4, 0]], warp = [[0, 16, 0], [0, 32, 0], [0, 64, 0]], block = []}>> -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %155 = tt.splat %arg27 : f32 -> tensor<128x256xf32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %156 = ttg.convert_layout %155 : tensor<128x256xf32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %157 = ttg.convert_layout %155 : tensor<128x256xf32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %158 = arith.minnumf %outLHS, %157 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %159 = arith.minnumf %outRHS, %156 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %160 = arith.subf %cst_2, %arg27 : f32
    %161 = tt.splat %160 : f32 -> tensor<128x256xf32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %162 = ttg.convert_layout %161 : tensor<128x256xf32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %163 = arith.maxnumf %162, %159 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %164 = arith.mulf %arg26, %cst_3 : f32
    %165 = tt.splat %164 : f32 -> tensor<128x256xf32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %166 = ttg.convert_layout %165 : tensor<128x256xf32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %167 = arith.mulf %166, %158 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %168 = math.exp2 %167 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %169 = arith.addf %168, %1 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %170 = arith.divf %158, %169 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %171 = math.fma %170, %163, %170 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %172 = arith.muli %55, %c256_i64 : i64
    %173 = tt.splat %172 : i64 -> tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %174 = arith.addi %173, %73 : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %175 = arith.extsi %14 : i32 to i64
    %176 = tt.splat %175 : i64 -> tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %177 = arith.cmpi slt, %174, %176 : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %178 = tt.load %arg14 : !tt.ptr<f32>
    %179 = tt.splat %178 : f32 -> tensor<128x256xf32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %180 = ttg.convert_layout %179 : tensor<128x256xf32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %181 = arith.divf %171, %180 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %182 = tt.fp_to_fp %181, rounding = rtne : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %183 = ttg.convert_layout %182 : tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %184 = arith.extsi %arg2 : i32 to i64
    %185 = arith.muli %54, %184 : i64
    %186 = tt.addptr %arg0, %185 : !tt.ptr<f8E4M3FN>, i64
    %187 = tt.expand_dims %62 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %188 = tt.splat %184 : i64 -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %189 = arith.muli %187, %188 : tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %190 = tt.splat %186 : !tt.ptr<f8E4M3FN> -> tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %191 = tt.addptr %190, %189 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %192 = tt.expand_dims %174 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %193 = tt.broadcast %191 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %194 = tt.broadcast %192 : tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %195 = tt.addptr %193, %194 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %196 = tt.expand_dims %139 {axis = 1 : i32} : tensor<128xi1, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<128x1xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %197 = tt.expand_dims %177 {axis = 0 : i32} : tensor<256xi1, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %198 = tt.broadcast %196 : tensor<128x1xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %199 = tt.broadcast %197 : tensor<1x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %200 = arith.andi %198, %199 : tensor<128x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    tt.store %195, %183, %200 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    tt.return
  }
}
[tritongpu-remove-layout-conversions]: Module after canonicalizing:
module attributes {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 8 : i32, ttg.target = "hip:gfx950", "ttg.threads-per-warp" = 64 : i32} {
  tt.func public @_moe_gemm_a8w4(%arg0: !tt.ptr<f8E4M3FN> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg1: i32 {tt.divisibility = 16 : i32}, %arg2: i32 {tt.divisibility = 16 : i32}, %arg3: !tt.ptr<f8E4M3FN> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg4: i32 {tt.divisibility = 16 : i32}, %arg5: i32 {tt.divisibility = 16 : i32}, %arg6: i32 {tt.divisibility = 16 : i32}, %arg7: !tt.ptr<i8> {tt.divisibility = 16 : i32}, %arg8: i32 {tt.divisibility = 16 : i32}, %arg9: i32 {tt.divisibility = 16 : i32}, %arg10: !tt.ptr<i8> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg11: i32 {tt.divisibility = 16 : i32}, %arg12: i32 {tt.divisibility = 16 : i32}, %arg13: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg14: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg15: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg16: i32 {tt.divisibility = 16 : i32}, %arg17: i32 {tt.divisibility = 16 : i32}, %arg18: i32 {tt.divisibility = 16 : i32}, %arg19: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg20: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg21: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg22: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg23: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg24: i32, %arg25: i32, %arg26: f32, %arg27: f32) attributes {noinline = false} {
    %cst = arith.constant dense<127> : tensor<128x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[0, 0], [0, 0], [0, 0]], block = []}>>
    %cst_0 = arith.constant dense<8> : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %cst_1 = arith.constant dense<256> : tensor<16x256xi32, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %cst_2 = arith.constant dense<256> : tensor<128x256xi32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %cst_3 = arith.constant dense<128> : tensor<128x512xi32, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
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
    %cst_6 = arith.constant dense<0.000000e+00> : tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %c8_i32 = arith.constant 8 : i32
    %c4_i32 = arith.constant 4 : i32
    %c256_i32 = arith.constant 256 : i32
    %c255_i32 = arith.constant 255 : i32
    %cst_7 = arith.constant dense<0.000000e+00> : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %cst_8 = arith.constant dense<1.000000e+00> : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
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
    %55 = tt.make_range {end = 128 : i32, start = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %56 = tt.make_range {end = 128 : i32, start = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %57 = arith.extsi %55 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %58 = arith.extsi %56 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %59 = tt.splat %54 : i64 -> tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %60 = arith.addi %59, %57 : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %61 = arith.extsi %47 : i32 to i64
    %62 = tt.splat %61 : i64 -> tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %63 = arith.remsi %60, %62 {tt.contiguity = dense<128> : tensor<1xi32>, tt.divisibility = dense<128> : tensor<1xi32>} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %64 = tt.addptr %arg19, %52 : !tt.ptr<i32>, i64
    %65 = tt.splat %64 : !tt.ptr<i32> -> tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %66 = tt.addptr %65, %63 : tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>, tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %67 = tt.load %66 : tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %68 = arith.divsi %67, %cst_0 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %69 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %70 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %71 = arith.extsi %69 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %72 = arith.extsi %70 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %73 = arith.extsi %68 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %74 = tt.expand_dims %73 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %75 = arith.extsi %arg4 : i32 to i64
    %76 = tt.splat %75 : i64 -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %77 = arith.muli %74, %76 : tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %78 = tt.splat %arg3 : !tt.ptr<f8E4M3FN> -> tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %79 = tt.addptr %78, %77 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %80 = tt.expand_dims %71 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %81 = tt.expand_dims %72 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %82 = tt.broadcast %79 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %83 = tt.broadcast %80 : tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %84 = tt.addptr %82, %83 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %85 = arith.extsi %arg11 : i32 to i64
    %86 = arith.muli %50, %85 : i64
    %87 = tt.addptr %arg10, %86 : !tt.ptr<i8>, i64
    %88 = arith.muli %53, %c16_i64 : i64
    %89 = tt.make_range {end = 16 : i32, start = 0 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %90 = arith.extsi %89 : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %91 = tt.splat %88 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %92 = arith.addi %91, %90 : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %93 = arith.extsi %arg17 : i32 to i64
    %94 = tt.splat %93 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %95 = arith.remsi %92, %94 {tt.contiguity = dense<16> : tensor<1xi32>, tt.divisibility = dense<16> : tensor<1xi32>} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %96 = tt.splat %87 : !tt.ptr<i8> -> tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %97 = tt.addptr %96, %81 : tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %98 = tt.expand_dims %95 {axis = 1 : i32} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %99 = arith.extsi %arg12 : i32 to i64
    %100 = tt.splat %99 : i64 -> tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %101 = arith.muli %98, %100 : tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %102 = tt.broadcast %97 : tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %103 = tt.broadcast %101 : tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<16x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %104 = tt.addptr %102, %103 : tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %105 = arith.muli %53, %c512_i64 : i64
    %106 = tt.make_range {end = 512 : i32, start = 0 : i32} : tensor<512xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %107 = tt.make_range {end = 512 : i32, start = 0 : i32} : tensor<512xi32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %108 = arith.extsi %106 : tensor<512xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> to tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %109 = arith.extsi %107 : tensor<512xi32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> to tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %110 = tt.splat %105 : i64 -> tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %111 = tt.splat %105 : i64 -> tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %112 = arith.addi %110, %108 : tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %113 = arith.addi %111, %109 : tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %114 = tt.splat %93 : i64 -> tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %115 = tt.splat %93 : i64 -> tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %116 = arith.remsi %112, %114 {tt.contiguity = dense<512> : tensor<1xi32>, tt.divisibility = dense<512> : tensor<1xi32>} : tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %117 = arith.extsi %arg8 : i32 to i64
    %118 = arith.muli %50, %117 : i64
    %119 = tt.addptr %arg7, %118 : !tt.ptr<i8>, i64
    %120 = tt.expand_dims %58 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %121 = tt.expand_dims %116 {axis = 0 : i32} : tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> -> tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %122 = arith.extsi %arg9 : i32 to i64
    %123 = tt.splat %122 : i64 -> tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %124 = arith.muli %121, %123 : tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %125 = tt.broadcast %120 : tensor<128x1xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %126 = tt.broadcast %124 : tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %127 = arith.addi %125, %126 : tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %128 = tt.splat %119 : !tt.ptr<i8> -> tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %129 = tt.addptr %128, %127 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %130 = arith.addi %arg18, %c255_i32 : i32
    %131 = arith.divsi %130, %c256_i32 : i32
    %132:4 = scf.for %arg28 = %c0_i32 to %131 step %c1_i32 iter_args(%arg29 = %cst_7, %arg30 = %84, %arg31 = %129, %arg32 = %104) -> (tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>)  : i32 {
      %192 = tt.load %arg30 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %193 = tt.load %arg31 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
      %194 = tt.load %arg32 {cheap = true} : tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %195 = tt.reshape %194 : tensor<16x256xi8, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<16x1x4x16x2x2x1xi8, #ttg.blocked<{sizePerThread = [1, 1, 1, 2, 2, 2, 1], threadsPerWarp = [2, 1, 4, 8, 1, 1, 1], warpsPerCTA = [8, 1, 1, 1, 1, 1, 1], order = [6, 5, 4, 3, 2, 1, 0]}>>
      %196 = tt.trans %195 {order = array<i32: 0, 4, 3, 1, 5, 2, 6>} : tensor<16x1x4x16x2x2x1xi8, #ttg.blocked<{sizePerThread = [1, 1, 1, 2, 2, 2, 1], threadsPerWarp = [2, 1, 4, 8, 1, 1, 1], warpsPerCTA = [8, 1, 1, 1, 1, 1, 1], order = [6, 5, 4, 3, 2, 1, 0]}>> -> tensor<16x2x16x1x2x4x1xi8, #ttg.blocked<{sizePerThread = [1, 2, 2, 1, 2, 1, 1], threadsPerWarp = [2, 1, 8, 1, 1, 4, 1], warpsPerCTA = [8, 1, 1, 1, 1, 1, 1], order = [6, 4, 1, 2, 5, 3, 0]}>>
      %197 = tt.reshape %196 : tensor<16x2x16x1x2x4x1xi8, #ttg.blocked<{sizePerThread = [1, 2, 2, 1, 2, 1, 1], threadsPerWarp = [2, 1, 8, 1, 1, 4, 1], warpsPerCTA = [8, 1, 1, 1, 1, 1, 1], order = [6, 4, 1, 2, 5, 3, 0]}>> -> tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [1, 0]], lane = [[2, 0], [4, 0], [8, 0], [0, 1], [0, 2], [32, 0]], warp = [[64, 0], [128, 0], [256, 0]], block = []}>>
      %198 = ttg.convert_layout %192 : tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
      %199 = ttg.convert_layout %193 : tensor<128x512xi8, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
      %200 = ttg.convert_layout %197 : tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [1, 0]], lane = [[2, 0], [4, 0], [8, 0], [0, 1], [0, 2], [32, 0]], warp = [[64, 0], [128, 0], [256, 0]], block = []}>> -> tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>>
      %201 = tt.dot_scaled %198 scale %cst, %199 scale %200, %arg29 lhs = e4m3 rhs = e2m1 {fastMath = true} : tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>, tensor<128x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[0, 0], [0, 0], [0, 0]], block = []}>> * tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>, tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>> -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
      %202 = tt.addptr %arg32, %cst_1 : tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256xi32, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %203 = tt.addptr %arg30, %cst_2 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %204 = tt.addptr %arg31, %cst_3 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<128x512xi32, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
      scf.yield %201, %203, %204, %202 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    }
    %133 = tt.load %arg13 : !tt.ptr<f32>
    %134 = tt.splat %133 : f32 -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %135 = arith.mulf %132#0, %134 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %136 = arith.cmpi slt, %60, %62 : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %137 = arith.cmpi slt, %113, %115 : tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %138 = arith.extsi %arg16 : i32 to i64
    %139 = arith.muli %50, %138 : i64
    %140 = tt.addptr %arg15, %139 : !tt.ptr<f32>, i64
    %141 = tt.splat %140 : !tt.ptr<f32> -> tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %142 = tt.addptr %141, %113 : tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>, tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %143 = tt.load %142, %137, %cst_6 : tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %144 = ttg.convert_layout %143 : tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> -> tensor<512xf32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>>
    %145 = tt.expand_dims %144 {axis = 0 : i32} : tensor<512xf32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>> -> tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>>
    %146 = tt.broadcast %145 : tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> -> tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>>
    %147 = ttg.convert_layout %146 : tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %148 = arith.addf %135, %147 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %149 = tt.reshape %148 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>> -> tensor<128x256x2xf32, #ttg.linear<{register = [[0, 0, 1], [0, 1, 0], [0, 8, 0], [0, 128, 0], [16, 0, 0], [32, 0, 0], [64, 0, 0]], lane = [[1, 0, 0], [2, 0, 0], [4, 0, 0], [8, 0, 0], [0, 2, 0], [0, 4, 0]], warp = [[0, 16, 0], [0, 32, 0], [0, 64, 0]], block = []}>>
    %outLHS, %outRHS = tt.split %149 : tensor<128x256x2xf32, #ttg.linear<{register = [[0, 0, 1], [0, 1, 0], [0, 8, 0], [0, 128, 0], [16, 0, 0], [32, 0, 0], [64, 0, 0]], lane = [[1, 0, 0], [2, 0, 0], [4, 0, 0], [8, 0, 0], [0, 2, 0], [0, 4, 0]], warp = [[0, 16, 0], [0, 32, 0], [0, 64, 0]], block = []}>> -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %150 = tt.splat %arg27 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %151 = tt.splat %arg27 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %152 = arith.minnumf %outLHS, %151 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %153 = arith.minnumf %outRHS, %150 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %154 = arith.subf %cst_5, %arg27 : f32
    %155 = tt.splat %154 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %156 = arith.maxnumf %155, %153 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %157 = arith.mulf %arg26, %cst_4 : f32
    %158 = tt.splat %157 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %159 = arith.mulf %158, %152 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %160 = math.exp2 %159 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %161 = arith.addf %160, %cst_8 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %162 = arith.divf %152, %161 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %163 = math.fma %162, %156, %162 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %164 = arith.muli %53, %c256_i64 : i64
    %165 = tt.splat %164 : i64 -> tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %166 = arith.addi %165, %71 : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %167 = arith.extsi %12 : i32 to i64
    %168 = tt.splat %167 : i64 -> tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %169 = arith.cmpi slt, %166, %168 : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %170 = tt.load %arg14 : !tt.ptr<f32>
    %171 = tt.splat %170 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %172 = arith.divf %163, %171 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %173 = tt.fp_to_fp %172, rounding = rtne : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %174 = ttg.convert_layout %173 : tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %175 = arith.extsi %arg2 : i32 to i64
    %176 = arith.muli %52, %175 : i64
    %177 = tt.addptr %arg0, %176 : !tt.ptr<f8E4M3FN>, i64
    %178 = tt.expand_dims %60 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %179 = tt.splat %175 : i64 -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %180 = arith.muli %178, %179 : tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %181 = tt.splat %177 : !tt.ptr<f8E4M3FN> -> tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %182 = tt.addptr %181, %180 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %183 = tt.expand_dims %166 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %184 = tt.broadcast %182 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %185 = tt.broadcast %183 : tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %186 = tt.addptr %184, %185 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %187 = tt.expand_dims %136 {axis = 1 : i32} : tensor<128xi1, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<128x1xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %188 = tt.expand_dims %169 {axis = 0 : i32} : tensor<256xi1, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %189 = tt.broadcast %187 : tensor<128x1xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %190 = tt.broadcast %188 : tensor<1x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %191 = arith.andi %189, %190 : tensor<128x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    tt.store %186, %174, %191 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    tt.return
  }
}
[tritongpu-remove-layout-conversions]: addRematValue %192 = tt.load %arg30 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> encoding #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}> %198 = ttg.convert_layout %192 : tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
[tritongpu-remove-layout-conversions]: addRematValue %193 = tt.load %arg31 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> encoding #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}> %199 = ttg.convert_layout %193 : tensor<128x512xi8, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
[tritongpu-remove-layout-conversions]: check backward remat with source %197 = tt.reshape %196 : tensor<16x2x16x1x2x4x1xi8, #ttg.blocked<{sizePerThread = [1, 2, 2, 1, 2, 1, 1], threadsPerWarp = [2, 1, 8, 1, 1, 4, 1], warpsPerCTA = [8, 1, 1, 1, 1, 1, 1], order = [6, 4, 1, 2, 5, 3, 0]}>> -> tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [1, 0]], lane = [[2, 0], [4, 0], [8, 0], [0, 1], [0, 2], [32, 0]], warp = [[64, 0], [128, 0], [256, 0]], block = []}>> encoding #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>
[tritongpu-remove-layout-conversions]:   convert layout cost: 524288
[tritongpu-remove-layout-conversions]:   rematerialisation cost: 2560
[tritongpu-remove-layout-conversions]:   remat convert op %200 = ttg.convert_layout %197 : tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [1, 0]], lane = [[2, 0], [4, 0], [8, 0], [0, 1], [0, 2], [32, 0]], warp = [[64, 0], [128, 0], [256, 0]], block = []}>> -> tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>>
[tritongpu-remove-layout-conversions]:     %197 = tt.reshape %196 : tensor<16x2x16x1x2x4x1xi8, #ttg.blocked<{sizePerThread = [1, 2, 2, 1, 2, 1, 1], threadsPerWarp = [2, 1, 8, 1, 1, 4, 1], warpsPerCTA = [8, 1, 1, 1, 1, 1, 1], order = [6, 4, 1, 2, 5, 3, 0]}>> -> tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [1, 0]], lane = [[2, 0], [4, 0], [8, 0], [0, 1], [0, 2], [32, 0]], warp = [[64, 0], [128, 0], [256, 0]], block = []}>>
[tritongpu-remove-layout-conversions]:     %196 = tt.trans %195 {order = array<i32: 0, 4, 3, 1, 5, 2, 6>} : tensor<16x1x4x16x2x2x1xi8, #ttg.blocked<{sizePerThread = [1, 1, 1, 2, 2, 2, 1], threadsPerWarp = [2, 1, 4, 8, 1, 1, 1], warpsPerCTA = [8, 1, 1, 1, 1, 1, 1], order = [6, 5, 4, 3, 2, 1, 0]}>> -> tensor<16x2x16x1x2x4x1xi8, #ttg.blocked<{sizePerThread = [1, 2, 2, 1, 2, 1, 1], threadsPerWarp = [2, 1, 8, 1, 1, 4, 1], warpsPerCTA = [8, 1, 1, 1, 1, 1, 1], order = [6, 4, 1, 2, 5, 3, 0]}>>
[tritongpu-remove-layout-conversions]:     %195 = tt.reshape %194 : tensor<16x256xi8, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<16x1x4x16x2x2x1xi8, #ttg.blocked<{sizePerThread = [1, 1, 1, 2, 2, 2, 1], threadsPerWarp = [2, 1, 4, 8, 1, 1, 1], warpsPerCTA = [8, 1, 1, 1, 1, 1, 1], order = [6, 5, 4, 3, 2, 1, 0]}>>
[tritongpu-remove-layout-conversions]:     %194 = tt.load %arg32 {cheap = true} : tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
[tritongpu-remove-layout-conversions]:     <block argument> of type 'tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>' at index: 4
[tritongpu-remove-layout-conversions]:     %202 = tt.addptr %arg32, %cst_1 : tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256xi32, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
[tritongpu-remove-layout-conversions]:     %cst_1 = arith.constant dense<256> : tensor<16x256xi32, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
[tritongpu-remove-layout-conversions]:     %104 = tt.addptr %102, %103 : tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
[tritongpu-remove-layout-conversions]:     %103 = tt.broadcast %101 : tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<16x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
[tritongpu-remove-layout-conversions]:     %101 = arith.muli %98, %100 : tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
[tritongpu-remove-layout-conversions]:     %100 = tt.splat %99 : i64 -> tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
[tritongpu-remove-layout-conversions]:     %98 = tt.expand_dims %95 {axis = 1 : i32} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
[tritongpu-remove-layout-conversions]:     %95 = arith.remsi %92, %94 {tt.contiguity = dense<16> : tensor<1xi32>, tt.divisibility = dense<16> : tensor<1xi32>} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
[tritongpu-remove-layout-conversions]:     %94 = tt.splat %93 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
[tritongpu-remove-layout-conversions]:     %92 = arith.addi %91, %90 : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
[tritongpu-remove-layout-conversions]:     %90 = arith.extsi %89 : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
[tritongpu-remove-layout-conversions]:     %89 = tt.make_range {end = 16 : i32, start = 0 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
[tritongpu-remove-layout-conversions]:     %91 = tt.splat %88 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
[tritongpu-remove-layout-conversions]:     %102 = tt.broadcast %97 : tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
[tritongpu-remove-layout-conversions]:     %97 = tt.addptr %96, %81 : tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
[tritongpu-remove-layout-conversions]:     %81 = tt.expand_dims %72 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
[tritongpu-remove-layout-conversions]:     %72 = arith.extsi %70 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
[tritongpu-remove-layout-conversions]:     %70 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
[tritongpu-remove-layout-conversions]:     %96 = tt.splat %87 : !tt.ptr<i8> -> tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
[tritongpu-remove-layout-conversions]: addRematValue %cst_2 = arith.constant dense<256> : tensor<16x256xi32, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> encoding #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}> %0 = ttg.convert_layout %cst_1 : tensor<16x256xi32, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<16x256xi32, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
[tritongpu-remove-layout-conversions]: addRematValue %72 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> encoding #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}> %71 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
[tritongpu-remove-layout-conversions]: addRematValue %75 = arith.extsi %72 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> encoding #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}> %74 = arith.extsi %71 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
[tritongpu-remove-layout-conversions]: addRematValue %85 = tt.expand_dims %75 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> encoding #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}> %84 = tt.expand_dims %74 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> -> tensor<1x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
[tritongpu-remove-layout-conversions]: addRematValue %94 = tt.make_range {end = 16 : i32, start = 0 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> encoding #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}> %93 = tt.make_range {end = 16 : i32, start = 0 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
[tritongpu-remove-layout-conversions]: addRematValue %96 = arith.extsi %94 : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> encoding #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}> %95 = arith.extsi %93 : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> to tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
[tritongpu-remove-layout-conversions]: addRematValue %98 = tt.splat %92 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> encoding #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}> %97 = tt.splat %92 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
[tritongpu-remove-layout-conversions]: addRematValue %100 = arith.addi %98, %96 : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> encoding #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}> %99 = arith.addi %97, %95 : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
[tritongpu-remove-layout-conversions]: addRematValue %103 = tt.splat %101 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> encoding #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}> %102 = tt.splat %101 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
[tritongpu-remove-layout-conversions]: addRematValue %105 = arith.remsi %100, %103 {tt.contiguity = dense<16> : tensor<1xi32>, tt.divisibility = dense<16> : tensor<1xi32>} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> encoding #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}> %104 = arith.remsi %99, %102 {tt.contiguity = dense<16> : tensor<1xi32>, tt.divisibility = dense<16> : tensor<1xi32>} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
[tritongpu-remove-layout-conversions]: addRematValue %107 = tt.splat %91 : !tt.ptr<i8> -> tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> encoding #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}> %106 = tt.splat %91 : !tt.ptr<i8> -> tensor<1x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
[tritongpu-remove-layout-conversions]: addRematValue %109 = tt.addptr %107, %85 : tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> encoding #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}> %108 = tt.addptr %106, %84 : tensor<1x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>, tensor<1x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
[tritongpu-remove-layout-conversions]: addRematValue %111 = tt.expand_dims %105 {axis = 1 : i32} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> encoding #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}> %110 = tt.expand_dims %104 {axis = 1 : i32} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> -> tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
[tritongpu-remove-layout-conversions]: addRematValue %114 = tt.splat %112 : i64 -> tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> encoding #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}> %113 = tt.splat %112 : i64 -> tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
[tritongpu-remove-layout-conversions]: addRematValue %116 = arith.muli %111, %114 : tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> encoding #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}> %115 = arith.muli %110, %113 : tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
[tritongpu-remove-layout-conversions]: addRematValue %118 = tt.broadcast %109 : tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> encoding #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}> %117 = tt.broadcast %108 : tensor<1x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>> -> tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
[tritongpu-remove-layout-conversions]: addRematValue %120 = tt.broadcast %116 : tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<16x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> encoding #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}> %119 = tt.broadcast %115 : tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>> -> tensor<16x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
[tritongpu-remove-layout-conversions]: addRematValue %122 = tt.addptr %118, %120 : tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> encoding #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}> %121 = tt.addptr %117, %119 : tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>, tensor<16x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
[tritongpu-remove-layout-conversions]: mapping forOp <block argument> of type 'tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>' at index: 4 to <block argument> of type 'tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>' at index: 5
[tritongpu-remove-layout-conversions]: addRematValue %176:5 = "scf.for"(%9, %175, %19, %25, %114, %173, %148, %147) ({
^bb0(%arg28: i32, %arg29: tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, %arg30: tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, %arg31: tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, %arg32: tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, %arg33: tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>):
  %238 = "tt.load"(%arg30) <{boundaryCheck = array<i32>, cache = 1 : i32, evict = 1 : i32, isVolatile = false, operandSegmentSizes = array<i32: 1, 0, 0>}> : (tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>) -> tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
  %239 = "tt.load"(%arg31) <{boundaryCheck = array<i32>, cache = 1 : i32, evict = 1 : i32, isVolatile = false, operandSegmentSizes = array<i32: 1, 0, 0>}> : (tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>) -> tensor<128x512xi8, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
  %240 = "tt.load"(%arg32) <{boundaryCheck = array<i32>, cache = 1 : i32, evict = 1 : i32, isVolatile = false, operandSegmentSizes = array<i32: 1, 0, 0>}> {cheap = true} : (tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>) -> tensor<16x256xi8, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
  %241 = "tt.reshape"(%240) : (tensor<16x256xi8, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>) -> tensor<16x1x4x16x2x2x1xi8, #ttg.blocked<{sizePerThread = [1, 1, 1, 2, 2, 2, 1], threadsPerWarp = [2, 1, 4, 8, 1, 1, 1], warpsPerCTA = [8, 1, 1, 1, 1, 1, 1], order = [6, 5, 4, 3, 2, 1, 0]}>>
  %242 = "tt.trans"(%241) <{order = array<i32: 0, 4, 3, 1, 5, 2, 6>}> : (tensor<16x1x4x16x2x2x1xi8, #ttg.blocked<{sizePerThread = [1, 1, 1, 2, 2, 2, 1], threadsPerWarp = [2, 1, 4, 8, 1, 1, 1], warpsPerCTA = [8, 1, 1, 1, 1, 1, 1], order = [6, 5, 4, 3, 2, 1, 0]}>>) -> tensor<16x2x16x1x2x4x1xi8, #ttg.blocked<{sizePerThread = [1, 2, 2, 1, 2, 1, 1], threadsPerWarp = [2, 1, 8, 1, 1, 4, 1], warpsPerCTA = [8, 1, 1, 1, 1, 1, 1], order = [6, 4, 1, 2, 5, 3, 0]}>>
  %243 = "tt.reshape"(%242) : (tensor<16x2x16x1x2x4x1xi8, #ttg.blocked<{sizePerThread = [1, 2, 2, 1, 2, 1, 1], threadsPerWarp = [2, 1, 8, 1, 1, 4, 1], warpsPerCTA = [8, 1, 1, 1, 1, 1, 1], order = [6, 4, 1, 2, 5, 3, 0]}>>) -> tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [1, 0]], lane = [[2, 0], [4, 0], [8, 0], [0, 1], [0, 2], [32, 0]], warp = [[64, 0], [128, 0], [256, 0]], block = []}>>
  %244 = "ttg.convert_layout"(%238) : (tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>) -> tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
  %245 = "ttg.convert_layout"(%239) : (tensor<128x512xi8, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>) -> tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
  %246 = "ttg.convert_layout"(%243) : (tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [1, 0]], lane = [[2, 0], [4, 0], [8, 0], [0, 1], [0, 2], [32, 0]], warp = [[64, 0], [128, 0], [256, 0]], block = []}>>) -> tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>>
  %247 = "tt.dot_scaled"(%244, %245, %arg29, %0, %246) <{a_elem_type = 0 : i32, b_elem_type = 4 : i32, fastMath = true, lhs_k_pack = true, operandSegmentSizes = array<i32: 1, 1, 1, 1, 1>, rhs_k_pack = true}> : (tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>, tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>, tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, tensor<128x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[0, 0], [0, 0], [0, 0]], block = []}>>, tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>>) -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
  %248 = "tt.addptr"(%arg32, %4) : (tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256xi32, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>) -> tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
  %249 = "tt.addptr"(%arg30, %5) : (tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>) -> tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
  %250 = "tt.addptr"(%arg31, %6) : (tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<128x512xi32, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>) -> tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
  "scf.yield"(%247, %249, %250, %248) : (tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>) -> ()
}) : (i32, i32, i32, tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>) -> (tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>) encoding #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}> %176:5 = "scf.for"(%9, %175, %19, %25, %114, %173, %148, %147) ({
^bb0(%arg28: i32, %arg29: tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, %arg30: tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, %arg31: tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, %arg32: tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, %arg33: tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>):
  %238 = "tt.load"(%arg30) <{boundaryCheck = array<i32>, cache = 1 : i32, evict = 1 : i32, isVolatile = false, operandSegmentSizes = array<i32: 1, 0, 0>}> : (tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>) -> tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
  %239 = "tt.load"(%arg31) <{boundaryCheck = array<i32>, cache = 1 : i32, evict = 1 : i32, isVolatile = false, operandSegmentSizes = array<i32: 1, 0, 0>}> : (tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>) -> tensor<128x512xi8, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
  %240 = "tt.load"(%arg32) <{boundaryCheck = array<i32>, cache = 1 : i32, evict = 1 : i32, isVolatile = false, operandSegmentSizes = array<i32: 1, 0, 0>}> {cheap = true} : (tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>) -> tensor<16x256xi8, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
  %241 = "tt.reshape"(%240) : (tensor<16x256xi8, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>) -> tensor<16x1x4x16x2x2x1xi8, #ttg.blocked<{sizePerThread = [1, 1, 1, 2, 2, 2, 1], threadsPerWarp = [2, 1, 4, 8, 1, 1, 1], warpsPerCTA = [8, 1, 1, 1, 1, 1, 1], order = [6, 5, 4, 3, 2, 1, 0]}>>
  %242 = "tt.trans"(%241) <{order = array<i32: 0, 4, 3, 1, 5, 2, 6>}> : (tensor<16x1x4x16x2x2x1xi8, #ttg.blocked<{sizePerThread = [1, 1, 1, 2, 2, 2, 1], threadsPerWarp = [2, 1, 4, 8, 1, 1, 1], warpsPerCTA = [8, 1, 1, 1, 1, 1, 1], order = [6, 5, 4, 3, 2, 1, 0]}>>) -> tensor<16x2x16x1x2x4x1xi8, #ttg.blocked<{sizePerThread = [1, 2, 2, 1, 2, 1, 1], threadsPerWarp = [2, 1, 8, 1, 1, 4, 1], warpsPerCTA = [8, 1, 1, 1, 1, 1, 1], order = [6, 4, 1, 2, 5, 3, 0]}>>
  %243 = "tt.reshape"(%242) : (tensor<16x2x16x1x2x4x1xi8, #ttg.blocked<{sizePerThread = [1, 2, 2, 1, 2, 1, 1], threadsPerWarp = [2, 1, 8, 1, 1, 4, 1], warpsPerCTA = [8, 1, 1, 1, 1, 1, 1], order = [6, 4, 1, 2, 5, 3, 0]}>>) -> tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [1, 0]], lane = [[2, 0], [4, 0], [8, 0], [0, 1], [0, 2], [32, 0]], warp = [[64, 0], [128, 0], [256, 0]], block = []}>>
  %244 = "ttg.convert_layout"(%238) : (tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>) -> tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
  %245 = "ttg.convert_layout"(%239) : (tensor<128x512xi8, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>) -> tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
  %246 = "ttg.convert_layout"(%243) : (tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [1, 0]], lane = [[2, 0], [4, 0], [8, 0], [0, 1], [0, 2], [32, 0]], warp = [[64, 0], [128, 0], [256, 0]], block = []}>>) -> tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>>
  %247 = "tt.dot_scaled"(%244, %245, %arg29, %0, %246) <{a_elem_type = 0 : i32, b_elem_type = 4 : i32, fastMath = true, lhs_k_pack = true, operandSegmentSizes = array<i32: 1, 1, 1, 1, 1>, rhs_k_pack = true}> : (tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>, tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>, tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, tensor<128x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[0, 0], [0, 0], [0, 0]], block = []}>>, tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>>) -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
  %248 = "tt.addptr"(%arg32, %4) : (tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256xi32, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>) -> tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
  %249 = "tt.addptr"(%arg30, %5) : (tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>) -> tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
  %250 = "tt.addptr"(%arg31, %6) : (tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<128x512xi32, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>) -> tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
  "scf.yield"(%247, %249, %250, %248) : (tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>) -> ()
}) : (i32, i32, i32, tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>) -> (tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>)
[tritongpu-remove-layout-conversions]: addRematValue <block argument> of type 'tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>' at index: 4 encoding #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}> <block argument> of type 'tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>' at index: 5
[tritongpu-remove-layout-conversions]: addRematValue %241 = "tt.load"(%arg32) <{boundaryCheck = array<i32>, cache = 1 : i32, evict = 1 : i32, isVolatile = false, operandSegmentSizes = array<i32: 1, 0, 0>}> {cheap = true} : (tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>) -> tensor<16x256xi8, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> encoding #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}> %240 = "tt.load"(%arg33) <{boundaryCheck = array<i32>, cache = 1 : i32, evict = 1 : i32, isVolatile = false, operandSegmentSizes = array<i32: 1, 0, 0>}> {cheap = true} : (tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>) -> tensor<16x256xi8, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
[tritongpu-remove-layout-conversions]: addRematValue %243 = "tt.reshape"(%241) : (tensor<16x256xi8, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>) -> tensor<16x1x4x16x2x2x1xi8, #ttg.blocked<{sizePerThread = [1, 1, 1, 2, 2, 2, 1], threadsPerWarp = [2, 1, 4, 8, 1, 1, 1], warpsPerCTA = [8, 1, 1, 1, 1, 1, 1], order = [6, 5, 4, 3, 2, 1, 0]}>> encoding #ttg.linear<{register = [[0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 1, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 0, 1, 0, 0, 0], [0, 0, 0, 2, 0, 0, 0], [0, 0, 0, 4, 0, 0, 0], [0, 0, 0, 8, 0, 0, 0], [0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}> %242 = "tt.reshape"(%240) : (tensor<16x256xi8, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>) -> tensor<16x1x4x16x2x2x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 1, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 0, 1, 0, 0, 0], [0, 0, 0, 2, 0, 0, 0], [0, 0, 0, 4, 0, 0, 0], [0, 0, 0, 8, 0, 0, 0], [0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>>
[tritongpu-remove-layout-conversions]: addRematValue %245 = "tt.trans"(%243) <{order = array<i32: 0, 4, 3, 1, 5, 2, 6>}> : (tensor<16x1x4x16x2x2x1xi8, #ttg.blocked<{sizePerThread = [1, 1, 1, 2, 2, 2, 1], threadsPerWarp = [2, 1, 4, 8, 1, 1, 1], warpsPerCTA = [8, 1, 1, 1, 1, 1, 1], order = [6, 5, 4, 3, 2, 1, 0]}>>) -> tensor<16x2x16x1x2x4x1xi8, #ttg.blocked<{sizePerThread = [1, 2, 2, 1, 2, 1, 1], threadsPerWarp = [2, 1, 8, 1, 1, 4, 1], warpsPerCTA = [8, 1, 1, 1, 1, 1, 1], order = [6, 4, 1, 2, 5, 3, 0]}>> encoding #ttg.linear<{register = [[0, 0, 0, 0, 1, 0, 0], [0, 1, 0, 0, 0, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0], [0, 0, 4, 0, 0, 0, 0], [0, 0, 8, 0, 0, 0, 0], [0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 0, 2, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}> %244 = "tt.trans"(%242) <{order = array<i32: 0, 4, 3, 1, 5, 2, 6>}> : (tensor<16x1x4x16x2x2x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 1, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 0, 1, 0, 0, 0], [0, 0, 0, 2, 0, 0, 0], [0, 0, 0, 4, 0, 0, 0], [0, 0, 0, 8, 0, 0, 0], [0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>>) -> tensor<16x2x16x1x2x4x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 1, 0, 0], [0, 1, 0, 0, 0, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0], [0, 0, 4, 0, 0, 0, 0], [0, 0, 8, 0, 0, 0, 0], [0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 0, 2, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>>
[tritongpu-remove-layout-conversions]: addRematValue %247 = "tt.reshape"(%245) : (tensor<16x2x16x1x2x4x1xi8, #ttg.blocked<{sizePerThread = [1, 2, 2, 1, 2, 1, 1], threadsPerWarp = [2, 1, 8, 1, 1, 4, 1], warpsPerCTA = [8, 1, 1, 1, 1, 1, 1], order = [6, 4, 1, 2, 5, 3, 0]}>>) -> tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [1, 0]], lane = [[2, 0], [4, 0], [8, 0], [0, 1], [0, 2], [32, 0]], warp = [[64, 0], [128, 0], [256, 0]], block = []}>> encoding #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}> %246 = "tt.reshape"(%244) : (tensor<16x2x16x1x2x4x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 1, 0, 0], [0, 1, 0, 0, 0, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0], [0, 0, 4, 0, 0, 0, 0], [0, 0, 8, 0, 0, 0, 0], [0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 0, 2, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>>) -> tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>>
[tritongpu-remove-layout-conversions]: addRematValue %253 = "tt.addptr"(%arg32, %4) : (tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256xi32, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>) -> tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> encoding #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}> %252 = "tt.addptr"(%arg33, %3) : (tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>, tensor<16x256xi32, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>) -> tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
[tritongpu-remove-layout-conversions]: check backward remat with source %188 = "tt.load"(%187, %182, %20) <{boundaryCheck = array<i32>, cache = 1 : i32, evict = 1 : i32, isVolatile = false, operandSegmentSizes = array<i32: 1, 1, 1>}> : (tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>, tensor<512xi1, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>, tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>) -> tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> encoding #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>
[tritongpu-remove-layout-conversions]:   getRematerializableSlice failed
[tritongpu-remove-layout-conversions]: addRematValue %188 = "tt.load"(%187, %182, %20) <{boundaryCheck = array<i32>, cache = 1 : i32, evict = 1 : i32, isVolatile = false, operandSegmentSizes = array<i32: 1, 1, 1>}> : (tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>, tensor<512xi1, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>, tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>) -> tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> encoding #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}> %189 = "ttg.convert_layout"(%188) : (tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>) -> tensor<512xf32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>>
[tritongpu-remove-layout-conversions]: check backward remat with source %191 = "tt.broadcast"(%190) : (tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>>) -> tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> encoding #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>
[tritongpu-remove-layout-conversions]:   getRematerializableSlice failed
[tritongpu-remove-layout-conversions]: addRematValue %191 = "tt.broadcast"(%190) : (tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>>) -> tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> encoding #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}> %192 = "ttg.convert_layout"(%191) : (tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>>) -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
[tritongpu-remove-layout-conversions]: check backward remat with source %219 = "tt.fp_to_fp"(%218) <{rounding = 1 : i32}> : (tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>) -> tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> encoding #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>
[tritongpu-remove-layout-conversions]:   getRematerializableSlice failed
[tritongpu-remove-layout-conversions]: addRematValue %219 = "tt.fp_to_fp"(%218) <{rounding = 1 : i32}> : (tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>) -> tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> encoding #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}> %220 = "ttg.convert_layout"(%219) : (tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>) -> tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
[tritongpu-remove-layout-conversions]: Module after backward remat:
module attributes {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 8 : i32, ttg.target = "hip:gfx950", "ttg.threads-per-warp" = 64 : i32} {
  tt.func public @_moe_gemm_a8w4(%arg0: !tt.ptr<f8E4M3FN> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg1: i32 {tt.divisibility = 16 : i32}, %arg2: i32 {tt.divisibility = 16 : i32}, %arg3: !tt.ptr<f8E4M3FN> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg4: i32 {tt.divisibility = 16 : i32}, %arg5: i32 {tt.divisibility = 16 : i32}, %arg6: i32 {tt.divisibility = 16 : i32}, %arg7: !tt.ptr<i8> {tt.divisibility = 16 : i32}, %arg8: i32 {tt.divisibility = 16 : i32}, %arg9: i32 {tt.divisibility = 16 : i32}, %arg10: !tt.ptr<i8> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg11: i32 {tt.divisibility = 16 : i32}, %arg12: i32 {tt.divisibility = 16 : i32}, %arg13: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg14: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg15: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg16: i32 {tt.divisibility = 16 : i32}, %arg17: i32 {tt.divisibility = 16 : i32}, %arg18: i32 {tt.divisibility = 16 : i32}, %arg19: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg20: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg21: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg22: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg23: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg24: i32, %arg25: i32, %arg26: f32, %arg27: f32) attributes {noinline = false} {
    %cst = arith.constant dense<127> : tensor<128x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[0, 0], [0, 0], [0, 0]], block = []}>>
    %cst_0 = arith.constant dense<8> : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %cst_1 = arith.constant dense<256> : tensor<16x256xi32, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %0 = ttg.convert_layout %cst_1 : tensor<16x256xi32, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<16x256xi32, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %cst_2 = arith.constant dense<256> : tensor<16x256xi32, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %cst_3 = arith.constant dense<256> : tensor<128x256xi32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %cst_4 = arith.constant dense<128> : tensor<128x512xi32, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %cst_5 = arith.constant -1.44269502 : f32
    %cst_6 = arith.constant 0.000000e+00 : f32
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
    %cst_7 = arith.constant dense<0.000000e+00> : tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %c8_i32 = arith.constant 8 : i32
    %c4_i32 = arith.constant 4 : i32
    %c256_i32 = arith.constant 256 : i32
    %c255_i32 = arith.constant 255 : i32
    %cst_8 = arith.constant dense<0.000000e+00> : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %cst_9 = arith.constant dense<1.000000e+00> : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %1 = arith.cmpi sge, %arg1, %c0_i32 : i32
    llvm.intr.assume %1 : i1
    %2 = arith.cmpi sge, %arg2, %c0_i32 : i32
    llvm.intr.assume %2 : i1
    llvm.intr.assume %true : i1
    %3 = arith.cmpi sge, %arg4, %c0_i32 : i32
    llvm.intr.assume %3 : i1
    llvm.intr.assume %true : i1
    %4 = arith.cmpi sge, %arg8, %c0_i32 : i32
    llvm.intr.assume %4 : i1
    llvm.intr.assume %true : i1
    %5 = arith.cmpi sge, %arg9, %c0_i32 : i32
    llvm.intr.assume %5 : i1
    %6 = arith.cmpi sge, %arg5, %c0_i32 : i32
    llvm.intr.assume %6 : i1
    %7 = arith.cmpi sge, %arg6, %c0_i32 : i32
    llvm.intr.assume %7 : i1
    %8 = arith.cmpi sge, %arg11, %c0_i32 : i32
    llvm.intr.assume %8 : i1
    llvm.intr.assume %true : i1
    %9 = arith.cmpi sge, %arg12, %c0_i32 : i32
    llvm.intr.assume %9 : i1
    %10 = arith.cmpi sge, %arg16, %c0_i32 : i32
    llvm.intr.assume %10 : i1
    %11 = arith.cmpi sge, %arg24, %c0_i32 : i32
    llvm.intr.assume %11 : i1
    %12 = arith.cmpi sge, %arg25, %c0_i32 : i32
    llvm.intr.assume %12 : i1
    %13 = arith.divsi %arg17, %c2_i32 : i32
    %14 = tt.get_program_id x : i32
    %15 = tt.load %arg22 : !tt.ptr<i32>
    %16 = arith.subi %arg24, %15 : i32
    %17 = arith.subi %arg24, %16 : i32
    %18 = arith.cmpi sge, %17, %c0_i32 : i32
    llvm.intr.assume %18 : i1
    %19 = arith.muli %17, %arg25 : i32
    %20 = arith.cmpi sgt, %16, %c0_i32 : i32
    %21 = arith.cmpi sge, %14, %19 : i32
    %22 = arith.andi %20, %21 : i1
    cf.cond_br %22, ^bb1, ^bb2
  ^bb1:  // 2 preds: ^bb0, ^bb2
    tt.return
  ^bb2:  // pred: ^bb0
    %23 = arith.divsi %19, %c8_i32 : i32
    %24 = arith.remsi %19, %c8_i32 : i32
    %25 = arith.remsi %14, %c8_i32 : i32
    %26 = arith.divsi %14, %c8_i32 : i32
    %27 = arith.muli %25, %23 : i32
    %28 = arith.minsi %25, %24 : i32
    %29 = arith.addi %27, %28 : i32
    %30 = arith.addi %29, %26 : i32
    %31 = arith.remsi %30, %19 : i32
    %32 = arith.muli %arg25, %c4_i32 : i32
    %33 = arith.divsi %31, %32 : i32
    %34 = arith.muli %33, %c4_i32 : i32
    %35 = arith.subi %17, %34 : i32
    %36 = arith.minsi %35, %c4_i32 : i32
    %37 = arith.cmpi sge, %36, %c0_i32 : i32
    llvm.intr.assume %37 : i1
    %38 = arith.remsi %31, %36 : i32
    %39 = arith.addi %34, %38 : i32
    %40 = arith.remsi %31, %32 : i32
    %41 = arith.divsi %40, %36 : i32
    %42 = tt.addptr %arg23, %39 : !tt.ptr<i32>, i32
    %43 = tt.load %42 : !tt.ptr<i32>
    %44 = arith.cmpi eq, %43, %c-1_i32 : i32
    cf.cond_br %44, ^bb1, ^bb3
  ^bb3:  // pred: ^bb2
    %45 = arith.andi %43, %c65535_i32 : i32
    %46 = arith.shrsi %43, %c16_i32 : i32
    %47 = tt.addptr %arg20, %45 : !tt.ptr<i32>, i32
    %48 = tt.load %47 : !tt.ptr<i32>
    %49 = tt.addptr %arg21, %45 : !tt.ptr<i32>, i32
    %50 = tt.load %49 : !tt.ptr<i32>
    %51 = arith.extsi %45 : i32 to i64
    %52 = arith.extsi %46 : i32 to i64
    %53 = arith.extsi %50 : i32 to i64
    %54 = arith.extsi %41 : i32 to i64
    %55 = arith.muli %52, %c128_i64 : i64
    %56 = tt.make_range {end = 128 : i32, start = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %57 = tt.make_range {end = 128 : i32, start = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %58 = arith.extsi %56 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %59 = arith.extsi %57 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %60 = tt.splat %55 : i64 -> tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %61 = arith.addi %60, %58 : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %62 = arith.extsi %48 : i32 to i64
    %63 = tt.splat %62 : i64 -> tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %64 = arith.remsi %61, %63 {tt.contiguity = dense<128> : tensor<1xi32>, tt.divisibility = dense<128> : tensor<1xi32>} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %65 = tt.addptr %arg19, %53 : !tt.ptr<i32>, i64
    %66 = tt.splat %65 : !tt.ptr<i32> -> tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %67 = tt.addptr %66, %64 : tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>, tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %68 = tt.load %67 : tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %69 = arith.divsi %68, %cst_0 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %70 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %71 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %72 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %73 = arith.extsi %70 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %74 = arith.extsi %71 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %75 = arith.extsi %72 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %76 = arith.extsi %69 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %77 = tt.expand_dims %76 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %78 = arith.extsi %arg4 : i32 to i64
    %79 = tt.splat %78 : i64 -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %80 = arith.muli %77, %79 : tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %81 = tt.splat %arg3 : !tt.ptr<f8E4M3FN> -> tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %82 = tt.addptr %81, %80 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %83 = tt.expand_dims %73 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %84 = tt.expand_dims %74 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> -> tensor<1x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %85 = tt.expand_dims %75 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %86 = tt.broadcast %82 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %87 = tt.broadcast %83 : tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %88 = tt.addptr %86, %87 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %89 = arith.extsi %arg11 : i32 to i64
    %90 = arith.muli %51, %89 : i64
    %91 = tt.addptr %arg10, %90 : !tt.ptr<i8>, i64
    %92 = arith.muli %54, %c16_i64 : i64
    %93 = tt.make_range {end = 16 : i32, start = 0 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %94 = tt.make_range {end = 16 : i32, start = 0 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %95 = arith.extsi %93 : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> to tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %96 = arith.extsi %94 : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %97 = tt.splat %92 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %98 = tt.splat %92 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %99 = arith.addi %97, %95 : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %100 = arith.addi %98, %96 : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %101 = arith.extsi %arg17 : i32 to i64
    %102 = tt.splat %101 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %103 = tt.splat %101 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %104 = arith.remsi %99, %102 {tt.contiguity = dense<16> : tensor<1xi32>, tt.divisibility = dense<16> : tensor<1xi32>} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %105 = arith.remsi %100, %103 {tt.contiguity = dense<16> : tensor<1xi32>, tt.divisibility = dense<16> : tensor<1xi32>} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %106 = tt.splat %91 : !tt.ptr<i8> -> tensor<1x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %107 = tt.splat %91 : !tt.ptr<i8> -> tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %108 = tt.addptr %106, %84 : tensor<1x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>, tensor<1x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %109 = tt.addptr %107, %85 : tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %110 = tt.expand_dims %104 {axis = 1 : i32} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> -> tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %111 = tt.expand_dims %105 {axis = 1 : i32} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %112 = arith.extsi %arg12 : i32 to i64
    %113 = tt.splat %112 : i64 -> tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %114 = tt.splat %112 : i64 -> tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %115 = arith.muli %110, %113 : tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %116 = arith.muli %111, %114 : tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %117 = tt.broadcast %108 : tensor<1x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>> -> tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %118 = tt.broadcast %109 : tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %119 = tt.broadcast %115 : tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>> -> tensor<16x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %120 = tt.broadcast %116 : tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<16x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %121 = tt.addptr %117, %119 : tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>, tensor<16x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %122 = tt.addptr %118, %120 : tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %123 = arith.muli %54, %c512_i64 : i64
    %124 = tt.make_range {end = 512 : i32, start = 0 : i32} : tensor<512xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %125 = tt.make_range {end = 512 : i32, start = 0 : i32} : tensor<512xi32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %126 = arith.extsi %124 : tensor<512xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> to tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %127 = arith.extsi %125 : tensor<512xi32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> to tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %128 = tt.splat %123 : i64 -> tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %129 = tt.splat %123 : i64 -> tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %130 = arith.addi %128, %126 : tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %131 = arith.addi %129, %127 : tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %132 = tt.splat %101 : i64 -> tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %133 = tt.splat %101 : i64 -> tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %134 = arith.remsi %130, %132 {tt.contiguity = dense<512> : tensor<1xi32>, tt.divisibility = dense<512> : tensor<1xi32>} : tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %135 = arith.extsi %arg8 : i32 to i64
    %136 = arith.muli %51, %135 : i64
    %137 = tt.addptr %arg7, %136 : !tt.ptr<i8>, i64
    %138 = tt.expand_dims %59 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %139 = tt.expand_dims %134 {axis = 0 : i32} : tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> -> tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %140 = arith.extsi %arg9 : i32 to i64
    %141 = tt.splat %140 : i64 -> tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %142 = arith.muli %139, %141 : tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %143 = tt.broadcast %138 : tensor<128x1xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %144 = tt.broadcast %142 : tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %145 = arith.addi %143, %144 : tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %146 = tt.splat %137 : !tt.ptr<i8> -> tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %147 = tt.addptr %146, %145 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %148 = arith.addi %arg18, %c255_i32 : i32
    %149 = arith.divsi %148, %c256_i32 : i32
    %150:5 = scf.for %arg28 = %c0_i32 to %149 step %c1_i32 iter_args(%arg29 = %cst_8, %arg30 = %88, %arg31 = %147, %arg32 = %122, %arg33 = %121) -> (tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>)  : i32 {
      %210 = tt.load %arg30 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %211 = tt.load %arg31 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
      %212 = tt.load %arg33 {cheap = true} : tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
      %213 = tt.load %arg32 {cheap = true} : tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %214 = tt.reshape %212 : tensor<16x256xi8, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>> -> tensor<16x1x4x16x2x2x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 1, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 0, 1, 0, 0, 0], [0, 0, 0, 2, 0, 0, 0], [0, 0, 0, 4, 0, 0, 0], [0, 0, 0, 8, 0, 0, 0], [0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>>
      %215 = tt.reshape %213 : tensor<16x256xi8, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<16x1x4x16x2x2x1xi8, #ttg.blocked<{sizePerThread = [1, 1, 1, 2, 2, 2, 1], threadsPerWarp = [2, 1, 4, 8, 1, 1, 1], warpsPerCTA = [8, 1, 1, 1, 1, 1, 1], order = [6, 5, 4, 3, 2, 1, 0]}>>
      %216 = tt.trans %214 {order = array<i32: 0, 4, 3, 1, 5, 2, 6>} : tensor<16x1x4x16x2x2x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 1, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 0, 1, 0, 0, 0], [0, 0, 0, 2, 0, 0, 0], [0, 0, 0, 4, 0, 0, 0], [0, 0, 0, 8, 0, 0, 0], [0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>> -> tensor<16x2x16x1x2x4x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 1, 0, 0], [0, 1, 0, 0, 0, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0], [0, 0, 4, 0, 0, 0, 0], [0, 0, 8, 0, 0, 0, 0], [0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 0, 2, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>>
      %217 = tt.trans %215 {order = array<i32: 0, 4, 3, 1, 5, 2, 6>} : tensor<16x1x4x16x2x2x1xi8, #ttg.blocked<{sizePerThread = [1, 1, 1, 2, 2, 2, 1], threadsPerWarp = [2, 1, 4, 8, 1, 1, 1], warpsPerCTA = [8, 1, 1, 1, 1, 1, 1], order = [6, 5, 4, 3, 2, 1, 0]}>> -> tensor<16x2x16x1x2x4x1xi8, #ttg.blocked<{sizePerThread = [1, 2, 2, 1, 2, 1, 1], threadsPerWarp = [2, 1, 8, 1, 1, 4, 1], warpsPerCTA = [8, 1, 1, 1, 1, 1, 1], order = [6, 4, 1, 2, 5, 3, 0]}>>
      %218 = tt.reshape %216 : tensor<16x2x16x1x2x4x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 1, 0, 0], [0, 1, 0, 0, 0, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0], [0, 0, 4, 0, 0, 0, 0], [0, 0, 8, 0, 0, 0, 0], [0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 0, 2, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>> -> tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>>
      %219 = tt.reshape %217 : tensor<16x2x16x1x2x4x1xi8, #ttg.blocked<{sizePerThread = [1, 2, 2, 1, 2, 1, 1], threadsPerWarp = [2, 1, 8, 1, 1, 4, 1], warpsPerCTA = [8, 1, 1, 1, 1, 1, 1], order = [6, 4, 1, 2, 5, 3, 0]}>> -> tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [1, 0]], lane = [[2, 0], [4, 0], [8, 0], [0, 1], [0, 2], [32, 0]], warp = [[64, 0], [128, 0], [256, 0]], block = []}>>
      %220 = ttg.convert_layout %210 : tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
      %221 = ttg.convert_layout %211 : tensor<128x512xi8, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
      %222 = tt.dot_scaled %220 scale %cst, %221 scale %218, %arg29 lhs = e4m3 rhs = e2m1 {fastMath = true} : tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>, tensor<128x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[0, 0], [0, 0], [0, 0]], block = []}>> * tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>, tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>> -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
      %223 = tt.addptr %arg33, %0 : tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>, tensor<16x256xi32, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
      %224 = tt.addptr %arg32, %cst_2 : tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256xi32, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %225 = tt.addptr %arg30, %cst_3 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %226 = tt.addptr %arg31, %cst_4 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<128x512xi32, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
      scf.yield %222, %225, %226, %224, %223 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    }
    %151 = tt.load %arg13 : !tt.ptr<f32>
    %152 = tt.splat %151 : f32 -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %153 = arith.mulf %150#0, %152 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %154 = arith.cmpi slt, %61, %63 : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %155 = arith.cmpi slt, %131, %133 : tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %156 = arith.extsi %arg16 : i32 to i64
    %157 = arith.muli %51, %156 : i64
    %158 = tt.addptr %arg15, %157 : !tt.ptr<f32>, i64
    %159 = tt.splat %158 : !tt.ptr<f32> -> tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %160 = tt.addptr %159, %131 : tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>, tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %161 = tt.load %160, %155, %cst_7 : tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %162 = ttg.convert_layout %161 : tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> -> tensor<512xf32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>>
    %163 = tt.expand_dims %162 {axis = 0 : i32} : tensor<512xf32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>> -> tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>>
    %164 = tt.broadcast %163 : tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> -> tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>>
    %165 = ttg.convert_layout %164 : tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %166 = arith.addf %153, %165 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %167 = tt.reshape %166 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>> -> tensor<128x256x2xf32, #ttg.linear<{register = [[0, 0, 1], [0, 1, 0], [0, 8, 0], [0, 128, 0], [16, 0, 0], [32, 0, 0], [64, 0, 0]], lane = [[1, 0, 0], [2, 0, 0], [4, 0, 0], [8, 0, 0], [0, 2, 0], [0, 4, 0]], warp = [[0, 16, 0], [0, 32, 0], [0, 64, 0]], block = []}>>
    %outLHS, %outRHS = tt.split %167 : tensor<128x256x2xf32, #ttg.linear<{register = [[0, 0, 1], [0, 1, 0], [0, 8, 0], [0, 128, 0], [16, 0, 0], [32, 0, 0], [64, 0, 0]], lane = [[1, 0, 0], [2, 0, 0], [4, 0, 0], [8, 0, 0], [0, 2, 0], [0, 4, 0]], warp = [[0, 16, 0], [0, 32, 0], [0, 64, 0]], block = []}>> -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %168 = tt.splat %arg27 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %169 = tt.splat %arg27 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %170 = arith.minnumf %outLHS, %169 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %171 = arith.minnumf %outRHS, %168 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %172 = arith.subf %cst_6, %arg27 : f32
    %173 = tt.splat %172 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %174 = arith.maxnumf %173, %171 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %175 = arith.mulf %arg26, %cst_5 : f32
    %176 = tt.splat %175 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %177 = arith.mulf %176, %170 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %178 = math.exp2 %177 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %179 = arith.addf %178, %cst_9 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %180 = arith.divf %170, %179 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %181 = math.fma %180, %174, %180 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %182 = arith.muli %54, %c256_i64 : i64
    %183 = tt.splat %182 : i64 -> tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %184 = arith.addi %183, %73 : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %185 = arith.extsi %13 : i32 to i64
    %186 = tt.splat %185 : i64 -> tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %187 = arith.cmpi slt, %184, %186 : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %188 = tt.load %arg14 : !tt.ptr<f32>
    %189 = tt.splat %188 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %190 = arith.divf %181, %189 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %191 = tt.fp_to_fp %190, rounding = rtne : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %192 = ttg.convert_layout %191 : tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %193 = arith.extsi %arg2 : i32 to i64
    %194 = arith.muli %53, %193 : i64
    %195 = tt.addptr %arg0, %194 : !tt.ptr<f8E4M3FN>, i64
    %196 = tt.expand_dims %61 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %197 = tt.splat %193 : i64 -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %198 = arith.muli %196, %197 : tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %199 = tt.splat %195 : !tt.ptr<f8E4M3FN> -> tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %200 = tt.addptr %199, %198 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %201 = tt.expand_dims %184 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %202 = tt.broadcast %200 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %203 = tt.broadcast %201 : tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %204 = tt.addptr %202, %203 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %205 = tt.expand_dims %154 {axis = 1 : i32} : tensor<128xi1, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<128x1xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %206 = tt.expand_dims %187 {axis = 0 : i32} : tensor<256xi1, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %207 = tt.broadcast %205 : tensor<128x1xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %208 = tt.broadcast %206 : tensor<1x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %209 = arith.andi %207, %208 : tensor<128x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    tt.store %204, %192, %209 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    tt.return
  }
}
[tritongpu-remove-layout-conversions]: Module after canonicalizing:
module attributes {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 8 : i32, ttg.target = "hip:gfx950", "ttg.threads-per-warp" = 64 : i32} {
  tt.func public @_moe_gemm_a8w4(%arg0: !tt.ptr<f8E4M3FN> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg1: i32 {tt.divisibility = 16 : i32}, %arg2: i32 {tt.divisibility = 16 : i32}, %arg3: !tt.ptr<f8E4M3FN> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg4: i32 {tt.divisibility = 16 : i32}, %arg5: i32 {tt.divisibility = 16 : i32}, %arg6: i32 {tt.divisibility = 16 : i32}, %arg7: !tt.ptr<i8> {tt.divisibility = 16 : i32}, %arg8: i32 {tt.divisibility = 16 : i32}, %arg9: i32 {tt.divisibility = 16 : i32}, %arg10: !tt.ptr<i8> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg11: i32 {tt.divisibility = 16 : i32}, %arg12: i32 {tt.divisibility = 16 : i32}, %arg13: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg14: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg15: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg16: i32 {tt.divisibility = 16 : i32}, %arg17: i32 {tt.divisibility = 16 : i32}, %arg18: i32 {tt.divisibility = 16 : i32}, %arg19: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg20: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg21: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg22: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg23: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg24: i32, %arg25: i32, %arg26: f32, %arg27: f32) attributes {noinline = false} {
    %cst = arith.constant dense<1.000000e+00> : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %c255_i32 = arith.constant 255 : i32
    %c256_i32 = arith.constant 256 : i32
    %c4_i32 = arith.constant 4 : i32
    %c8_i32 = arith.constant 8 : i32
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %c1_i32 = arith.constant 1 : i32
    %c512_i64 = arith.constant 512 : i64
    %c16_i64 = arith.constant 16 : i64
    %c256_i64 = arith.constant 256 : i64
    %c128_i64 = arith.constant 128 : i64
    %c16_i32 = arith.constant 16 : i32
    %c65535_i32 = arith.constant 65535 : i32
    %c-1_i32 = arith.constant -1 : i32
    %c2_i32 = arith.constant 2 : i32
    %true = arith.constant true
    %c0_i32 = arith.constant 0 : i32
    %cst_2 = arith.constant 0.000000e+00 : f32
    %cst_3 = arith.constant -1.44269502 : f32
    %cst_4 = arith.constant dense<128> : tensor<128x512xi32, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %cst_5 = arith.constant dense<256> : tensor<128x256xi32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %cst_6 = arith.constant dense<127> : tensor<128x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[0, 0], [0, 0], [0, 0]], block = []}>>
    %cst_7 = arith.constant dense<8> : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %cst_8 = arith.constant dense<256> : tensor<16x256xi32, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %cst_9 = arith.constant dense<256> : tensor<16x256xi32, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
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
    %55 = tt.make_range {end = 128 : i32, start = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %56 = tt.make_range {end = 128 : i32, start = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %57 = arith.extsi %55 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %58 = arith.extsi %56 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %59 = tt.splat %54 : i64 -> tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %60 = arith.addi %59, %57 : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %61 = arith.extsi %47 : i32 to i64
    %62 = tt.splat %61 : i64 -> tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %63 = arith.remsi %60, %62 {tt.contiguity = dense<128> : tensor<1xi32>, tt.divisibility = dense<128> : tensor<1xi32>} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %64 = tt.addptr %arg19, %52 : !tt.ptr<i32>, i64
    %65 = tt.splat %64 : !tt.ptr<i32> -> tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %66 = tt.addptr %65, %63 : tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>, tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %67 = tt.load %66 : tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %68 = arith.divsi %67, %cst_7 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %69 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %70 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %71 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %72 = arith.extsi %69 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %73 = arith.extsi %70 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %74 = arith.extsi %71 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %75 = arith.extsi %68 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %76 = tt.expand_dims %75 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %77 = arith.extsi %arg4 : i32 to i64
    %78 = tt.splat %77 : i64 -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %79 = arith.muli %76, %78 : tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %80 = tt.splat %arg3 : !tt.ptr<f8E4M3FN> -> tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %81 = tt.addptr %80, %79 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %82 = tt.expand_dims %72 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %83 = tt.expand_dims %73 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> -> tensor<1x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %84 = tt.expand_dims %74 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %85 = tt.broadcast %81 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %86 = tt.broadcast %82 : tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %87 = tt.addptr %85, %86 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %88 = arith.extsi %arg11 : i32 to i64
    %89 = arith.muli %50, %88 : i64
    %90 = tt.addptr %arg10, %89 : !tt.ptr<i8>, i64
    %91 = arith.muli %53, %c16_i64 : i64
    %92 = tt.make_range {end = 16 : i32, start = 0 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %93 = tt.make_range {end = 16 : i32, start = 0 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %94 = arith.extsi %92 : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> to tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %95 = arith.extsi %93 : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %96 = tt.splat %91 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %97 = tt.splat %91 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %98 = arith.addi %96, %94 : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %99 = arith.addi %97, %95 : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %100 = arith.extsi %arg17 : i32 to i64
    %101 = tt.splat %100 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %102 = tt.splat %100 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %103 = arith.remsi %98, %101 {tt.contiguity = dense<16> : tensor<1xi32>, tt.divisibility = dense<16> : tensor<1xi32>} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %104 = arith.remsi %99, %102 {tt.contiguity = dense<16> : tensor<1xi32>, tt.divisibility = dense<16> : tensor<1xi32>} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %105 = tt.splat %90 : !tt.ptr<i8> -> tensor<1x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %106 = tt.splat %90 : !tt.ptr<i8> -> tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %107 = tt.addptr %105, %83 : tensor<1x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>, tensor<1x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %108 = tt.addptr %106, %84 : tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %109 = tt.expand_dims %103 {axis = 1 : i32} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> -> tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %110 = tt.expand_dims %104 {axis = 1 : i32} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %111 = arith.extsi %arg12 : i32 to i64
    %112 = tt.splat %111 : i64 -> tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %113 = tt.splat %111 : i64 -> tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %114 = arith.muli %109, %112 : tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %115 = arith.muli %110, %113 : tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %116 = tt.broadcast %107 : tensor<1x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>> -> tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %117 = tt.broadcast %108 : tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %118 = tt.broadcast %114 : tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>> -> tensor<16x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %119 = tt.broadcast %115 : tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<16x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %120 = tt.addptr %116, %118 : tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>, tensor<16x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %121 = tt.addptr %117, %119 : tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %122 = arith.muli %53, %c512_i64 : i64
    %123 = tt.make_range {end = 512 : i32, start = 0 : i32} : tensor<512xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %124 = tt.make_range {end = 512 : i32, start = 0 : i32} : tensor<512xi32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %125 = arith.extsi %123 : tensor<512xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> to tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %126 = arith.extsi %124 : tensor<512xi32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> to tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %127 = tt.splat %122 : i64 -> tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %128 = tt.splat %122 : i64 -> tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %129 = arith.addi %127, %125 : tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %130 = arith.addi %128, %126 : tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %131 = tt.splat %100 : i64 -> tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %132 = tt.splat %100 : i64 -> tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %133 = arith.remsi %129, %131 {tt.contiguity = dense<512> : tensor<1xi32>, tt.divisibility = dense<512> : tensor<1xi32>} : tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %134 = arith.extsi %arg8 : i32 to i64
    %135 = arith.muli %50, %134 : i64
    %136 = tt.addptr %arg7, %135 : !tt.ptr<i8>, i64
    %137 = tt.expand_dims %58 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %138 = tt.expand_dims %133 {axis = 0 : i32} : tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> -> tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %139 = arith.extsi %arg9 : i32 to i64
    %140 = tt.splat %139 : i64 -> tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %141 = arith.muli %138, %140 : tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %142 = tt.broadcast %137 : tensor<128x1xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %143 = tt.broadcast %141 : tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %144 = arith.addi %142, %143 : tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %145 = tt.splat %136 : !tt.ptr<i8> -> tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %146 = tt.addptr %145, %144 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %147 = arith.addi %arg18, %c255_i32 : i32
    %148 = arith.divsi %147, %c256_i32 : i32
    %149:5 = scf.for %arg28 = %c0_i32 to %148 step %c1_i32 iter_args(%arg29 = %cst_0, %arg30 = %87, %arg31 = %146, %arg32 = %121, %arg33 = %120) -> (tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>)  : i32 {
      %209 = tt.load %arg30 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %210 = tt.load %arg31 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
      %211 = tt.load %arg33 {cheap = true} : tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
      %212 = tt.reshape %211 : tensor<16x256xi8, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>> -> tensor<16x1x4x16x2x2x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 1, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 0, 1, 0, 0, 0], [0, 0, 0, 2, 0, 0, 0], [0, 0, 0, 4, 0, 0, 0], [0, 0, 0, 8, 0, 0, 0], [0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>>
      %213 = tt.trans %212 {order = array<i32: 0, 4, 3, 1, 5, 2, 6>} : tensor<16x1x4x16x2x2x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 1, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 0, 1, 0, 0, 0], [0, 0, 0, 2, 0, 0, 0], [0, 0, 0, 4, 0, 0, 0], [0, 0, 0, 8, 0, 0, 0], [0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>> -> tensor<16x2x16x1x2x4x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 1, 0, 0], [0, 1, 0, 0, 0, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0], [0, 0, 4, 0, 0, 0, 0], [0, 0, 8, 0, 0, 0, 0], [0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 0, 2, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>>
      %214 = tt.reshape %213 : tensor<16x2x16x1x2x4x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 1, 0, 0], [0, 1, 0, 0, 0, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0], [0, 0, 4, 0, 0, 0, 0], [0, 0, 8, 0, 0, 0, 0], [0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 0, 2, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>> -> tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>>
      %215 = ttg.convert_layout %209 : tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
      %216 = ttg.convert_layout %210 : tensor<128x512xi8, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
      %217 = tt.dot_scaled %215 scale %cst_6, %216 scale %214, %arg29 lhs = e4m3 rhs = e2m1 {fastMath = true} : tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>, tensor<128x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[0, 0], [0, 0], [0, 0]], block = []}>> * tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>, tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>> -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
      %218 = tt.addptr %arg33, %cst_9 : tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>, tensor<16x256xi32, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
      %219 = tt.addptr %arg32, %cst_8 : tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256xi32, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %220 = tt.addptr %arg30, %cst_5 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %221 = tt.addptr %arg31, %cst_4 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<128x512xi32, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
      scf.yield %217, %220, %221, %219, %218 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    }
    %150 = tt.load %arg13 : !tt.ptr<f32>
    %151 = tt.splat %150 : f32 -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %152 = arith.mulf %149#0, %151 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %153 = arith.cmpi slt, %60, %62 : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %154 = arith.cmpi slt, %130, %132 : tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %155 = arith.extsi %arg16 : i32 to i64
    %156 = arith.muli %50, %155 : i64
    %157 = tt.addptr %arg15, %156 : !tt.ptr<f32>, i64
    %158 = tt.splat %157 : !tt.ptr<f32> -> tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %159 = tt.addptr %158, %130 : tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>, tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %160 = tt.load %159, %154, %cst_1 : tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %161 = ttg.convert_layout %160 : tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> -> tensor<512xf32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>>
    %162 = tt.expand_dims %161 {axis = 0 : i32} : tensor<512xf32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>> -> tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>>
    %163 = tt.broadcast %162 : tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> -> tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>>
    %164 = ttg.convert_layout %163 : tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %165 = arith.addf %152, %164 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %166 = tt.reshape %165 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>> -> tensor<128x256x2xf32, #ttg.linear<{register = [[0, 0, 1], [0, 1, 0], [0, 8, 0], [0, 128, 0], [16, 0, 0], [32, 0, 0], [64, 0, 0]], lane = [[1, 0, 0], [2, 0, 0], [4, 0, 0], [8, 0, 0], [0, 2, 0], [0, 4, 0]], warp = [[0, 16, 0], [0, 32, 0], [0, 64, 0]], block = []}>>
    %outLHS, %outRHS = tt.split %166 : tensor<128x256x2xf32, #ttg.linear<{register = [[0, 0, 1], [0, 1, 0], [0, 8, 0], [0, 128, 0], [16, 0, 0], [32, 0, 0], [64, 0, 0]], lane = [[1, 0, 0], [2, 0, 0], [4, 0, 0], [8, 0, 0], [0, 2, 0], [0, 4, 0]], warp = [[0, 16, 0], [0, 32, 0], [0, 64, 0]], block = []}>> -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %167 = tt.splat %arg27 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %168 = tt.splat %arg27 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %169 = arith.minnumf %outLHS, %168 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %170 = arith.minnumf %outRHS, %167 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %171 = arith.subf %cst_2, %arg27 : f32
    %172 = tt.splat %171 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %173 = arith.maxnumf %172, %170 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %174 = arith.mulf %arg26, %cst_3 : f32
    %175 = tt.splat %174 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %176 = arith.mulf %175, %169 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %177 = math.exp2 %176 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %178 = arith.addf %177, %cst : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %179 = arith.divf %169, %178 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %180 = math.fma %179, %173, %179 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %181 = arith.muli %53, %c256_i64 : i64
    %182 = tt.splat %181 : i64 -> tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %183 = arith.addi %182, %72 : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %184 = arith.extsi %12 : i32 to i64
    %185 = tt.splat %184 : i64 -> tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %186 = arith.cmpi slt, %183, %185 : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %187 = tt.load %arg14 : !tt.ptr<f32>
    %188 = tt.splat %187 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %189 = arith.divf %180, %188 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %190 = tt.fp_to_fp %189, rounding = rtne : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %191 = ttg.convert_layout %190 : tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %192 = arith.extsi %arg2 : i32 to i64
    %193 = arith.muli %52, %192 : i64
    %194 = tt.addptr %arg0, %193 : !tt.ptr<f8E4M3FN>, i64
    %195 = tt.expand_dims %60 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %196 = tt.splat %192 : i64 -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %197 = arith.muli %195, %196 : tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %198 = tt.splat %194 : !tt.ptr<f8E4M3FN> -> tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %199 = tt.addptr %198, %197 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %200 = tt.expand_dims %183 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %201 = tt.broadcast %199 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %202 = tt.broadcast %200 : tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %203 = tt.addptr %201, %202 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %204 = tt.expand_dims %153 {axis = 1 : i32} : tensor<128xi1, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<128x1xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %205 = tt.expand_dims %186 {axis = 0 : i32} : tensor<256xi1, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %206 = tt.broadcast %204 : tensor<128x1xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %207 = tt.broadcast %205 : tensor<1x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %208 = arith.andi %206, %207 : tensor<128x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    tt.store %203, %191, %208 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    tt.return
  }
}
[tritongpu-remove-layout-conversions]: addRematValue %209 = tt.load %arg30 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> encoding #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}> %215 = ttg.convert_layout %209 : tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
[tritongpu-remove-layout-conversions]: addRematValue %210 = tt.load %arg31 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> encoding #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}> %216 = ttg.convert_layout %210 : tensor<128x512xi8, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
[tritongpu-remove-layout-conversions]: check backward remat with source %160 = tt.load %159, %154, %cst_1 : tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> encoding #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>
[tritongpu-remove-layout-conversions]:   getRematerializableSlice failed
[tritongpu-remove-layout-conversions]: addRematValue %160 = tt.load %159, %154, %cst_1 : tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> encoding #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}> %161 = ttg.convert_layout %160 : tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> -> tensor<512xf32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>>
[tritongpu-remove-layout-conversions]: check backward remat with source %163 = tt.broadcast %162 : tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> -> tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> encoding #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>
[tritongpu-remove-layout-conversions]:   getRematerializableSlice failed
[tritongpu-remove-layout-conversions]: addRematValue %163 = tt.broadcast %162 : tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> -> tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> encoding #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}> %164 = ttg.convert_layout %163 : tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
[tritongpu-remove-layout-conversions]: check backward remat with source %190 = tt.fp_to_fp %189, rounding = rtne : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> encoding #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>
[tritongpu-remove-layout-conversions]:   getRematerializableSlice failed
[tritongpu-remove-layout-conversions]: addRematValue %190 = tt.fp_to_fp %189, rounding = rtne : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> encoding #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}> %191 = ttg.convert_layout %190 : tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
[tritongpu-remove-layout-conversions]: Module after backward remat:
module attributes {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 8 : i32, ttg.target = "hip:gfx950", "ttg.threads-per-warp" = 64 : i32} {
  tt.func public @_moe_gemm_a8w4(%arg0: !tt.ptr<f8E4M3FN> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg1: i32 {tt.divisibility = 16 : i32}, %arg2: i32 {tt.divisibility = 16 : i32}, %arg3: !tt.ptr<f8E4M3FN> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg4: i32 {tt.divisibility = 16 : i32}, %arg5: i32 {tt.divisibility = 16 : i32}, %arg6: i32 {tt.divisibility = 16 : i32}, %arg7: !tt.ptr<i8> {tt.divisibility = 16 : i32}, %arg8: i32 {tt.divisibility = 16 : i32}, %arg9: i32 {tt.divisibility = 16 : i32}, %arg10: !tt.ptr<i8> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg11: i32 {tt.divisibility = 16 : i32}, %arg12: i32 {tt.divisibility = 16 : i32}, %arg13: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg14: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg15: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg16: i32 {tt.divisibility = 16 : i32}, %arg17: i32 {tt.divisibility = 16 : i32}, %arg18: i32 {tt.divisibility = 16 : i32}, %arg19: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg20: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg21: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg22: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg23: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg24: i32, %arg25: i32, %arg26: f32, %arg27: f32) attributes {noinline = false} {
    %cst = arith.constant dense<1.000000e+00> : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %c255_i32 = arith.constant 255 : i32
    %c256_i32 = arith.constant 256 : i32
    %c4_i32 = arith.constant 4 : i32
    %c8_i32 = arith.constant 8 : i32
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %c1_i32 = arith.constant 1 : i32
    %c512_i64 = arith.constant 512 : i64
    %c16_i64 = arith.constant 16 : i64
    %c256_i64 = arith.constant 256 : i64
    %c128_i64 = arith.constant 128 : i64
    %c16_i32 = arith.constant 16 : i32
    %c65535_i32 = arith.constant 65535 : i32
    %c-1_i32 = arith.constant -1 : i32
    %c2_i32 = arith.constant 2 : i32
    %true = arith.constant true
    %c0_i32 = arith.constant 0 : i32
    %cst_2 = arith.constant 0.000000e+00 : f32
    %cst_3 = arith.constant -1.44269502 : f32
    %cst_4 = arith.constant dense<128> : tensor<128x512xi32, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %cst_5 = arith.constant dense<256> : tensor<128x256xi32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %cst_6 = arith.constant dense<127> : tensor<128x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[0, 0], [0, 0], [0, 0]], block = []}>>
    %cst_7 = arith.constant dense<8> : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %cst_8 = arith.constant dense<256> : tensor<16x256xi32, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %cst_9 = arith.constant dense<256> : tensor<16x256xi32, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
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
    %55 = tt.make_range {end = 128 : i32, start = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %56 = tt.make_range {end = 128 : i32, start = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %57 = arith.extsi %55 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %58 = arith.extsi %56 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %59 = tt.splat %54 : i64 -> tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %60 = arith.addi %59, %57 : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %61 = arith.extsi %47 : i32 to i64
    %62 = tt.splat %61 : i64 -> tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %63 = arith.remsi %60, %62 {tt.contiguity = dense<128> : tensor<1xi32>, tt.divisibility = dense<128> : tensor<1xi32>} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %64 = tt.addptr %arg19, %52 : !tt.ptr<i32>, i64
    %65 = tt.splat %64 : !tt.ptr<i32> -> tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %66 = tt.addptr %65, %63 : tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>, tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %67 = tt.load %66 : tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %68 = arith.divsi %67, %cst_7 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %69 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %70 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %71 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %72 = arith.extsi %69 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %73 = arith.extsi %70 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %74 = arith.extsi %71 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %75 = arith.extsi %68 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %76 = tt.expand_dims %75 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %77 = arith.extsi %arg4 : i32 to i64
    %78 = tt.splat %77 : i64 -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %79 = arith.muli %76, %78 : tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %80 = tt.splat %arg3 : !tt.ptr<f8E4M3FN> -> tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %81 = tt.addptr %80, %79 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %82 = tt.expand_dims %72 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %83 = tt.expand_dims %73 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> -> tensor<1x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %84 = tt.expand_dims %74 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %85 = tt.broadcast %81 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %86 = tt.broadcast %82 : tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %87 = tt.addptr %85, %86 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %88 = arith.extsi %arg11 : i32 to i64
    %89 = arith.muli %50, %88 : i64
    %90 = tt.addptr %arg10, %89 : !tt.ptr<i8>, i64
    %91 = arith.muli %53, %c16_i64 : i64
    %92 = tt.make_range {end = 16 : i32, start = 0 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %93 = tt.make_range {end = 16 : i32, start = 0 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %94 = arith.extsi %92 : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> to tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %95 = arith.extsi %93 : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %96 = tt.splat %91 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %97 = tt.splat %91 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %98 = arith.addi %96, %94 : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %99 = arith.addi %97, %95 : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %100 = arith.extsi %arg17 : i32 to i64
    %101 = tt.splat %100 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %102 = tt.splat %100 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %103 = arith.remsi %98, %101 {tt.contiguity = dense<16> : tensor<1xi32>, tt.divisibility = dense<16> : tensor<1xi32>} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %104 = arith.remsi %99, %102 {tt.contiguity = dense<16> : tensor<1xi32>, tt.divisibility = dense<16> : tensor<1xi32>} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %105 = tt.splat %90 : !tt.ptr<i8> -> tensor<1x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %106 = tt.splat %90 : !tt.ptr<i8> -> tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %107 = tt.addptr %105, %83 : tensor<1x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>, tensor<1x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %108 = tt.addptr %106, %84 : tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %109 = tt.expand_dims %103 {axis = 1 : i32} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> -> tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %110 = tt.expand_dims %104 {axis = 1 : i32} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %111 = arith.extsi %arg12 : i32 to i64
    %112 = tt.splat %111 : i64 -> tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %113 = tt.splat %111 : i64 -> tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %114 = arith.muli %109, %112 : tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %115 = arith.muli %110, %113 : tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %116 = tt.broadcast %107 : tensor<1x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>> -> tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %117 = tt.broadcast %108 : tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %118 = tt.broadcast %114 : tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>> -> tensor<16x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %119 = tt.broadcast %115 : tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<16x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %120 = tt.addptr %116, %118 : tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>, tensor<16x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %121 = tt.addptr %117, %119 : tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %122 = arith.muli %53, %c512_i64 : i64
    %123 = tt.make_range {end = 512 : i32, start = 0 : i32} : tensor<512xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %124 = tt.make_range {end = 512 : i32, start = 0 : i32} : tensor<512xi32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %125 = arith.extsi %123 : tensor<512xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> to tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %126 = arith.extsi %124 : tensor<512xi32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> to tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %127 = tt.splat %122 : i64 -> tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %128 = tt.splat %122 : i64 -> tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %129 = arith.addi %127, %125 : tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %130 = arith.addi %128, %126 : tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %131 = tt.splat %100 : i64 -> tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %132 = tt.splat %100 : i64 -> tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %133 = arith.remsi %129, %131 {tt.contiguity = dense<512> : tensor<1xi32>, tt.divisibility = dense<512> : tensor<1xi32>} : tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %134 = arith.extsi %arg8 : i32 to i64
    %135 = arith.muli %50, %134 : i64
    %136 = tt.addptr %arg7, %135 : !tt.ptr<i8>, i64
    %137 = tt.expand_dims %58 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %138 = tt.expand_dims %133 {axis = 0 : i32} : tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> -> tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %139 = arith.extsi %arg9 : i32 to i64
    %140 = tt.splat %139 : i64 -> tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %141 = arith.muli %138, %140 : tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %142 = tt.broadcast %137 : tensor<128x1xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %143 = tt.broadcast %141 : tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %144 = arith.addi %142, %143 : tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %145 = tt.splat %136 : !tt.ptr<i8> -> tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %146 = tt.addptr %145, %144 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %147 = arith.addi %arg18, %c255_i32 : i32
    %148 = arith.divsi %147, %c256_i32 : i32
    %149:5 = scf.for %arg28 = %c0_i32 to %148 step %c1_i32 iter_args(%arg29 = %cst_0, %arg30 = %87, %arg31 = %146, %arg32 = %121, %arg33 = %120) -> (tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>)  : i32 {
      %209 = tt.load %arg30 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %210 = tt.load %arg31 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
      %211 = tt.load %arg33 {cheap = true} : tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
      %212 = tt.reshape %211 : tensor<16x256xi8, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>> -> tensor<16x1x4x16x2x2x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 1, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 0, 1, 0, 0, 0], [0, 0, 0, 2, 0, 0, 0], [0, 0, 0, 4, 0, 0, 0], [0, 0, 0, 8, 0, 0, 0], [0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>>
      %213 = tt.trans %212 {order = array<i32: 0, 4, 3, 1, 5, 2, 6>} : tensor<16x1x4x16x2x2x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 1, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 0, 1, 0, 0, 0], [0, 0, 0, 2, 0, 0, 0], [0, 0, 0, 4, 0, 0, 0], [0, 0, 0, 8, 0, 0, 0], [0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>> -> tensor<16x2x16x1x2x4x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 1, 0, 0], [0, 1, 0, 0, 0, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0], [0, 0, 4, 0, 0, 0, 0], [0, 0, 8, 0, 0, 0, 0], [0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 0, 2, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>>
      %214 = tt.reshape %213 : tensor<16x2x16x1x2x4x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 1, 0, 0], [0, 1, 0, 0, 0, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0], [0, 0, 4, 0, 0, 0, 0], [0, 0, 8, 0, 0, 0, 0], [0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 0, 2, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>> -> tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>>
      %215 = ttg.convert_layout %209 : tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
      %216 = ttg.convert_layout %210 : tensor<128x512xi8, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
      %217 = tt.dot_scaled %215 scale %cst_6, %216 scale %214, %arg29 lhs = e4m3 rhs = e2m1 {fastMath = true} : tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>, tensor<128x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[0, 0], [0, 0], [0, 0]], block = []}>> * tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>, tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>> -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
      %218 = tt.addptr %arg33, %cst_9 : tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>, tensor<16x256xi32, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
      %219 = tt.addptr %arg32, %cst_8 : tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256xi32, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %220 = tt.addptr %arg30, %cst_5 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %221 = tt.addptr %arg31, %cst_4 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<128x512xi32, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
      scf.yield %217, %220, %221, %219, %218 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    }
    %150 = tt.load %arg13 : !tt.ptr<f32>
    %151 = tt.splat %150 : f32 -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %152 = arith.mulf %149#0, %151 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %153 = arith.cmpi slt, %60, %62 : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %154 = arith.cmpi slt, %130, %132 : tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %155 = arith.extsi %arg16 : i32 to i64
    %156 = arith.muli %50, %155 : i64
    %157 = tt.addptr %arg15, %156 : !tt.ptr<f32>, i64
    %158 = tt.splat %157 : !tt.ptr<f32> -> tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %159 = tt.addptr %158, %130 : tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>, tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %160 = tt.load %159, %154, %cst_1 : tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %161 = ttg.convert_layout %160 : tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> -> tensor<512xf32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>>
    %162 = tt.expand_dims %161 {axis = 0 : i32} : tensor<512xf32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>> -> tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>>
    %163 = tt.broadcast %162 : tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> -> tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>>
    %164 = ttg.convert_layout %163 : tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %165 = arith.addf %152, %164 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %166 = tt.reshape %165 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>> -> tensor<128x256x2xf32, #ttg.linear<{register = [[0, 0, 1], [0, 1, 0], [0, 8, 0], [0, 128, 0], [16, 0, 0], [32, 0, 0], [64, 0, 0]], lane = [[1, 0, 0], [2, 0, 0], [4, 0, 0], [8, 0, 0], [0, 2, 0], [0, 4, 0]], warp = [[0, 16, 0], [0, 32, 0], [0, 64, 0]], block = []}>>
    %outLHS, %outRHS = tt.split %166 : tensor<128x256x2xf32, #ttg.linear<{register = [[0, 0, 1], [0, 1, 0], [0, 8, 0], [0, 128, 0], [16, 0, 0], [32, 0, 0], [64, 0, 0]], lane = [[1, 0, 0], [2, 0, 0], [4, 0, 0], [8, 0, 0], [0, 2, 0], [0, 4, 0]], warp = [[0, 16, 0], [0, 32, 0], [0, 64, 0]], block = []}>> -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %167 = tt.splat %arg27 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %168 = tt.splat %arg27 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %169 = arith.minnumf %outLHS, %168 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %170 = arith.minnumf %outRHS, %167 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %171 = arith.subf %cst_2, %arg27 : f32
    %172 = tt.splat %171 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %173 = arith.maxnumf %172, %170 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %174 = arith.mulf %arg26, %cst_3 : f32
    %175 = tt.splat %174 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %176 = arith.mulf %175, %169 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %177 = math.exp2 %176 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %178 = arith.addf %177, %cst : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %179 = arith.divf %169, %178 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %180 = math.fma %179, %173, %179 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %181 = arith.muli %53, %c256_i64 : i64
    %182 = tt.splat %181 : i64 -> tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %183 = arith.addi %182, %72 : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %184 = arith.extsi %12 : i32 to i64
    %185 = tt.splat %184 : i64 -> tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %186 = arith.cmpi slt, %183, %185 : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %187 = tt.load %arg14 : !tt.ptr<f32>
    %188 = tt.splat %187 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %189 = arith.divf %180, %188 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %190 = tt.fp_to_fp %189, rounding = rtne : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %191 = ttg.convert_layout %190 : tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %192 = arith.extsi %arg2 : i32 to i64
    %193 = arith.muli %52, %192 : i64
    %194 = tt.addptr %arg0, %193 : !tt.ptr<f8E4M3FN>, i64
    %195 = tt.expand_dims %60 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %196 = tt.splat %192 : i64 -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %197 = arith.muli %195, %196 : tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %198 = tt.splat %194 : !tt.ptr<f8E4M3FN> -> tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %199 = tt.addptr %198, %197 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %200 = tt.expand_dims %183 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %201 = tt.broadcast %199 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %202 = tt.broadcast %200 : tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %203 = tt.addptr %201, %202 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %204 = tt.expand_dims %153 {axis = 1 : i32} : tensor<128xi1, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<128x1xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %205 = tt.expand_dims %186 {axis = 0 : i32} : tensor<256xi1, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %206 = tt.broadcast %204 : tensor<128x1xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %207 = tt.broadcast %205 : tensor<1x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %208 = arith.andi %206, %207 : tensor<128x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    tt.store %203, %191, %208 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    tt.return
  }
}
[tritongpu-remove-layout-conversions]: Module after canonicalizing:
module attributes {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 8 : i32, ttg.target = "hip:gfx950", "ttg.threads-per-warp" = 64 : i32} {
  tt.func public @_moe_gemm_a8w4(%arg0: !tt.ptr<f8E4M3FN> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg1: i32 {tt.divisibility = 16 : i32}, %arg2: i32 {tt.divisibility = 16 : i32}, %arg3: !tt.ptr<f8E4M3FN> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg4: i32 {tt.divisibility = 16 : i32}, %arg5: i32 {tt.divisibility = 16 : i32}, %arg6: i32 {tt.divisibility = 16 : i32}, %arg7: !tt.ptr<i8> {tt.divisibility = 16 : i32}, %arg8: i32 {tt.divisibility = 16 : i32}, %arg9: i32 {tt.divisibility = 16 : i32}, %arg10: !tt.ptr<i8> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg11: i32 {tt.divisibility = 16 : i32}, %arg12: i32 {tt.divisibility = 16 : i32}, %arg13: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg14: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg15: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg16: i32 {tt.divisibility = 16 : i32}, %arg17: i32 {tt.divisibility = 16 : i32}, %arg18: i32 {tt.divisibility = 16 : i32}, %arg19: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg20: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg21: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg22: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg23: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg24: i32, %arg25: i32, %arg26: f32, %arg27: f32) attributes {noinline = false} {
    %cst = arith.constant dense<1.000000e+00> : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %c255_i32 = arith.constant 255 : i32
    %c256_i32 = arith.constant 256 : i32
    %c4_i32 = arith.constant 4 : i32
    %c8_i32 = arith.constant 8 : i32
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %c1_i32 = arith.constant 1 : i32
    %c512_i64 = arith.constant 512 : i64
    %c16_i64 = arith.constant 16 : i64
    %c256_i64 = arith.constant 256 : i64
    %c128_i64 = arith.constant 128 : i64
    %c16_i32 = arith.constant 16 : i32
    %c65535_i32 = arith.constant 65535 : i32
    %c-1_i32 = arith.constant -1 : i32
    %c2_i32 = arith.constant 2 : i32
    %true = arith.constant true
    %c0_i32 = arith.constant 0 : i32
    %cst_2 = arith.constant 0.000000e+00 : f32
    %cst_3 = arith.constant -1.44269502 : f32
    %cst_4 = arith.constant dense<128> : tensor<128x512xi32, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %cst_5 = arith.constant dense<256> : tensor<128x256xi32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %cst_6 = arith.constant dense<127> : tensor<128x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[0, 0], [0, 0], [0, 0]], block = []}>>
    %cst_7 = arith.constant dense<8> : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %cst_8 = arith.constant dense<256> : tensor<16x256xi32, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %cst_9 = arith.constant dense<256> : tensor<16x256xi32, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
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
    %55 = tt.make_range {end = 128 : i32, start = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %56 = tt.make_range {end = 128 : i32, start = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %57 = arith.extsi %55 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %58 = arith.extsi %56 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %59 = tt.splat %54 : i64 -> tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %60 = arith.addi %59, %57 : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %61 = arith.extsi %47 : i32 to i64
    %62 = tt.splat %61 : i64 -> tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %63 = arith.remsi %60, %62 {tt.contiguity = dense<128> : tensor<1xi32>, tt.divisibility = dense<128> : tensor<1xi32>} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %64 = tt.addptr %arg19, %52 : !tt.ptr<i32>, i64
    %65 = tt.splat %64 : !tt.ptr<i32> -> tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %66 = tt.addptr %65, %63 : tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>, tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %67 = tt.load %66 : tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %68 = arith.divsi %67, %cst_7 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %69 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %70 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %71 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %72 = arith.extsi %69 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %73 = arith.extsi %70 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %74 = arith.extsi %71 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %75 = arith.extsi %68 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %76 = tt.expand_dims %75 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %77 = arith.extsi %arg4 : i32 to i64
    %78 = tt.splat %77 : i64 -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %79 = arith.muli %76, %78 : tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %80 = tt.splat %arg3 : !tt.ptr<f8E4M3FN> -> tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %81 = tt.addptr %80, %79 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %82 = tt.expand_dims %72 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %83 = tt.expand_dims %73 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> -> tensor<1x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %84 = tt.expand_dims %74 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %85 = tt.broadcast %81 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %86 = tt.broadcast %82 : tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %87 = tt.addptr %85, %86 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %88 = arith.extsi %arg11 : i32 to i64
    %89 = arith.muli %50, %88 : i64
    %90 = tt.addptr %arg10, %89 : !tt.ptr<i8>, i64
    %91 = arith.muli %53, %c16_i64 : i64
    %92 = tt.make_range {end = 16 : i32, start = 0 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %93 = tt.make_range {end = 16 : i32, start = 0 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %94 = arith.extsi %92 : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> to tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %95 = arith.extsi %93 : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %96 = tt.splat %91 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %97 = tt.splat %91 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %98 = arith.addi %96, %94 : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %99 = arith.addi %97, %95 : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %100 = arith.extsi %arg17 : i32 to i64
    %101 = tt.splat %100 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %102 = tt.splat %100 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %103 = arith.remsi %98, %101 {tt.contiguity = dense<16> : tensor<1xi32>, tt.divisibility = dense<16> : tensor<1xi32>} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %104 = arith.remsi %99, %102 {tt.contiguity = dense<16> : tensor<1xi32>, tt.divisibility = dense<16> : tensor<1xi32>} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %105 = tt.splat %90 : !tt.ptr<i8> -> tensor<1x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %106 = tt.splat %90 : !tt.ptr<i8> -> tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %107 = tt.addptr %105, %83 : tensor<1x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>, tensor<1x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %108 = tt.addptr %106, %84 : tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %109 = tt.expand_dims %103 {axis = 1 : i32} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> -> tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %110 = tt.expand_dims %104 {axis = 1 : i32} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %111 = arith.extsi %arg12 : i32 to i64
    %112 = tt.splat %111 : i64 -> tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %113 = tt.splat %111 : i64 -> tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %114 = arith.muli %109, %112 : tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %115 = arith.muli %110, %113 : tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %116 = tt.broadcast %107 : tensor<1x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>> -> tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %117 = tt.broadcast %108 : tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %118 = tt.broadcast %114 : tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>> -> tensor<16x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %119 = tt.broadcast %115 : tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<16x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %120 = tt.addptr %116, %118 : tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>, tensor<16x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %121 = tt.addptr %117, %119 : tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %122 = arith.muli %53, %c512_i64 : i64
    %123 = tt.make_range {end = 512 : i32, start = 0 : i32} : tensor<512xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %124 = tt.make_range {end = 512 : i32, start = 0 : i32} : tensor<512xi32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %125 = arith.extsi %123 : tensor<512xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> to tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %126 = arith.extsi %124 : tensor<512xi32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> to tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %127 = tt.splat %122 : i64 -> tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %128 = tt.splat %122 : i64 -> tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %129 = arith.addi %127, %125 : tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %130 = arith.addi %128, %126 : tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %131 = tt.splat %100 : i64 -> tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %132 = tt.splat %100 : i64 -> tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %133 = arith.remsi %129, %131 {tt.contiguity = dense<512> : tensor<1xi32>, tt.divisibility = dense<512> : tensor<1xi32>} : tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %134 = arith.extsi %arg8 : i32 to i64
    %135 = arith.muli %50, %134 : i64
    %136 = tt.addptr %arg7, %135 : !tt.ptr<i8>, i64
    %137 = tt.expand_dims %58 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %138 = tt.expand_dims %133 {axis = 0 : i32} : tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> -> tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %139 = arith.extsi %arg9 : i32 to i64
    %140 = tt.splat %139 : i64 -> tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %141 = arith.muli %138, %140 : tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %142 = tt.broadcast %137 : tensor<128x1xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %143 = tt.broadcast %141 : tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %144 = arith.addi %142, %143 : tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %145 = tt.splat %136 : !tt.ptr<i8> -> tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %146 = tt.addptr %145, %144 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %147 = arith.addi %arg18, %c255_i32 : i32
    %148 = arith.divsi %147, %c256_i32 : i32
    %149:5 = scf.for %arg28 = %c0_i32 to %148 step %c1_i32 iter_args(%arg29 = %cst_0, %arg30 = %87, %arg31 = %146, %arg32 = %121, %arg33 = %120) -> (tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>)  : i32 {
      %209 = tt.load %arg30 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %210 = tt.load %arg31 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
      %211 = tt.load %arg33 {cheap = true} : tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
      %212 = tt.reshape %211 : tensor<16x256xi8, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>> -> tensor<16x1x4x16x2x2x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 1, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 0, 1, 0, 0, 0], [0, 0, 0, 2, 0, 0, 0], [0, 0, 0, 4, 0, 0, 0], [0, 0, 0, 8, 0, 0, 0], [0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>>
      %213 = tt.trans %212 {order = array<i32: 0, 4, 3, 1, 5, 2, 6>} : tensor<16x1x4x16x2x2x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 1, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 0, 1, 0, 0, 0], [0, 0, 0, 2, 0, 0, 0], [0, 0, 0, 4, 0, 0, 0], [0, 0, 0, 8, 0, 0, 0], [0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>> -> tensor<16x2x16x1x2x4x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 1, 0, 0], [0, 1, 0, 0, 0, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0], [0, 0, 4, 0, 0, 0, 0], [0, 0, 8, 0, 0, 0, 0], [0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 0, 2, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>>
      %214 = tt.reshape %213 : tensor<16x2x16x1x2x4x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 1, 0, 0], [0, 1, 0, 0, 0, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0], [0, 0, 4, 0, 0, 0, 0], [0, 0, 8, 0, 0, 0, 0], [0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 0, 2, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>> -> tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>>
      %215 = ttg.convert_layout %209 : tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
      %216 = ttg.convert_layout %210 : tensor<128x512xi8, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
      %217 = tt.dot_scaled %215 scale %cst_6, %216 scale %214, %arg29 lhs = e4m3 rhs = e2m1 {fastMath = true} : tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>, tensor<128x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[0, 0], [0, 0], [0, 0]], block = []}>> * tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>, tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>> -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
      %218 = tt.addptr %arg33, %cst_9 : tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>, tensor<16x256xi32, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
      %219 = tt.addptr %arg32, %cst_8 : tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256xi32, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %220 = tt.addptr %arg30, %cst_5 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %221 = tt.addptr %arg31, %cst_4 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<128x512xi32, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
      scf.yield %217, %220, %221, %219, %218 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    }
    %150 = tt.load %arg13 : !tt.ptr<f32>
    %151 = tt.splat %150 : f32 -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %152 = arith.mulf %149#0, %151 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %153 = arith.cmpi slt, %60, %62 : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %154 = arith.cmpi slt, %130, %132 : tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %155 = arith.extsi %arg16 : i32 to i64
    %156 = arith.muli %50, %155 : i64
    %157 = tt.addptr %arg15, %156 : !tt.ptr<f32>, i64
    %158 = tt.splat %157 : !tt.ptr<f32> -> tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %159 = tt.addptr %158, %130 : tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>, tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %160 = tt.load %159, %154, %cst_1 : tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %161 = ttg.convert_layout %160 : tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> -> tensor<512xf32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>>
    %162 = tt.expand_dims %161 {axis = 0 : i32} : tensor<512xf32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>> -> tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>>
    %163 = tt.broadcast %162 : tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> -> tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>>
    %164 = ttg.convert_layout %163 : tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %165 = arith.addf %152, %164 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %166 = tt.reshape %165 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>> -> tensor<128x256x2xf32, #ttg.linear<{register = [[0, 0, 1], [0, 1, 0], [0, 8, 0], [0, 128, 0], [16, 0, 0], [32, 0, 0], [64, 0, 0]], lane = [[1, 0, 0], [2, 0, 0], [4, 0, 0], [8, 0, 0], [0, 2, 0], [0, 4, 0]], warp = [[0, 16, 0], [0, 32, 0], [0, 64, 0]], block = []}>>
    %outLHS, %outRHS = tt.split %166 : tensor<128x256x2xf32, #ttg.linear<{register = [[0, 0, 1], [0, 1, 0], [0, 8, 0], [0, 128, 0], [16, 0, 0], [32, 0, 0], [64, 0, 0]], lane = [[1, 0, 0], [2, 0, 0], [4, 0, 0], [8, 0, 0], [0, 2, 0], [0, 4, 0]], warp = [[0, 16, 0], [0, 32, 0], [0, 64, 0]], block = []}>> -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %167 = tt.splat %arg27 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %168 = tt.splat %arg27 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %169 = arith.minnumf %outLHS, %168 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %170 = arith.minnumf %outRHS, %167 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %171 = arith.subf %cst_2, %arg27 : f32
    %172 = tt.splat %171 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %173 = arith.maxnumf %172, %170 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %174 = arith.mulf %arg26, %cst_3 : f32
    %175 = tt.splat %174 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %176 = arith.mulf %175, %169 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %177 = math.exp2 %176 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %178 = arith.addf %177, %cst : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %179 = arith.divf %169, %178 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %180 = math.fma %179, %173, %179 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %181 = arith.muli %53, %c256_i64 : i64
    %182 = tt.splat %181 : i64 -> tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %183 = arith.addi %182, %72 : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %184 = arith.extsi %12 : i32 to i64
    %185 = tt.splat %184 : i64 -> tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %186 = arith.cmpi slt, %183, %185 : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %187 = tt.load %arg14 : !tt.ptr<f32>
    %188 = tt.splat %187 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %189 = arith.divf %180, %188 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %190 = tt.fp_to_fp %189, rounding = rtne : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %191 = ttg.convert_layout %190 : tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %192 = arith.extsi %arg2 : i32 to i64
    %193 = arith.muli %52, %192 : i64
    %194 = tt.addptr %arg0, %193 : !tt.ptr<f8E4M3FN>, i64
    %195 = tt.expand_dims %60 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %196 = tt.splat %192 : i64 -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %197 = arith.muli %195, %196 : tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %198 = tt.splat %194 : !tt.ptr<f8E4M3FN> -> tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %199 = tt.addptr %198, %197 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %200 = tt.expand_dims %183 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %201 = tt.broadcast %199 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %202 = tt.broadcast %200 : tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %203 = tt.addptr %201, %202 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %204 = tt.expand_dims %153 {axis = 1 : i32} : tensor<128xi1, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<128x1xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %205 = tt.expand_dims %186 {axis = 0 : i32} : tensor<256xi1, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %206 = tt.broadcast %204 : tensor<128x1xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %207 = tt.broadcast %205 : tensor<1x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %208 = arith.andi %206, %207 : tensor<128x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    tt.store %203, %191, %208 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    tt.return
  }
}
[tritongpu-remove-layout-conversions]: addRematValue %209 = tt.load %arg30 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> encoding #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}> %215 = ttg.convert_layout %209 : tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
[tritongpu-remove-layout-conversions]: addRematValue %210 = tt.load %arg31 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> encoding #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}> %216 = ttg.convert_layout %210 : tensor<128x512xi8, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
[tritongpu-remove-layout-conversions]: addRematValue %160 = tt.load %159, %154, %cst_1 : tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> encoding #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}> %161 = ttg.convert_layout %160 : tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> -> tensor<512xf32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>>
[tritongpu-remove-layout-conversions]: addRematValue %192 = tt.fp_to_fp %191, rounding = rtne : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> encoding #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}> %193 = ttg.convert_layout %192 : tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
[tritongpu-remove-layout-conversions]: addRematValue %210 = tt.load %arg30 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> encoding #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}> %216 = ttg.convert_layout %210 : tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
[tritongpu-remove-layout-conversions]: addRematValue %211 = tt.load %arg31 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> encoding #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}> %217 = ttg.convert_layout %211 : tensor<128x512xi8, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
[tritongpu-remove-layout-conversions]: addRematValue %160 = tt.load %159, %154, %cst_1 : tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> encoding #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}> %161 = ttg.convert_layout %160 : tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> -> tensor<512xf32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>>
[tritongpu-remove-layout-conversions]: addRematValue %162 = tt.expand_dims %161 {axis = 0 : i32} : tensor<512xf32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>> -> tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> encoding #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}> %163 = ttg.convert_layout %162 : tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> -> tensor<1x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
[tritongpu-remove-layout-conversions]: addRematValue %191 = tt.fp_to_fp %190, rounding = rtne : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> encoding #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}> %192 = ttg.convert_layout %191 : tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
[tritongpu-remove-layout-conversions]: addRematValue %210 = tt.load %arg30 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> encoding #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}> %217 = ttg.convert_layout %210 : tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
[tritongpu-remove-layout-conversions]: addRematValue %212 = tt.load %arg31 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> encoding #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}> %219 = ttg.convert_layout %212 : tensor<128x512xi8, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
[tritongpu-remove-layout-conversions]: addRematValue %160 = tt.load %159, %154, %cst_1 : tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> encoding #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}> %161 = ttg.convert_layout %160 : tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> -> tensor<512xf32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>>
[tritongpu-remove-layout-conversions]: addRematValue %162 = tt.expand_dims %161 {axis = 0 : i32} : tensor<512xf32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>> -> tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> encoding #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}> %163 = ttg.convert_layout %162 : tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> -> tensor<1x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
[tritongpu-remove-layout-conversions]: addRematValue %191 = tt.fp_to_fp %190, rounding = rtne : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> encoding #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}> %192 = ttg.convert_layout %191 : tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
[tritongpu-remove-layout-conversions]: Module after hoisting converts:
module attributes {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 8 : i32, ttg.target = "hip:gfx950", "ttg.threads-per-warp" = 64 : i32} {
  tt.func public @_moe_gemm_a8w4(%arg0: !tt.ptr<f8E4M3FN> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg1: i32 {tt.divisibility = 16 : i32}, %arg2: i32 {tt.divisibility = 16 : i32}, %arg3: !tt.ptr<f8E4M3FN> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg4: i32 {tt.divisibility = 16 : i32}, %arg5: i32 {tt.divisibility = 16 : i32}, %arg6: i32 {tt.divisibility = 16 : i32}, %arg7: !tt.ptr<i8> {tt.divisibility = 16 : i32}, %arg8: i32 {tt.divisibility = 16 : i32}, %arg9: i32 {tt.divisibility = 16 : i32}, %arg10: !tt.ptr<i8> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg11: i32 {tt.divisibility = 16 : i32}, %arg12: i32 {tt.divisibility = 16 : i32}, %arg13: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg14: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg15: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg16: i32 {tt.divisibility = 16 : i32}, %arg17: i32 {tt.divisibility = 16 : i32}, %arg18: i32 {tt.divisibility = 16 : i32}, %arg19: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg20: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg21: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg22: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg23: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg24: i32, %arg25: i32, %arg26: f32, %arg27: f32) attributes {noinline = false} {
    %cst = arith.constant dense<1.000000e+00> : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %c255_i32 = arith.constant 255 : i32
    %c256_i32 = arith.constant 256 : i32
    %c4_i32 = arith.constant 4 : i32
    %c8_i32 = arith.constant 8 : i32
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %c1_i32 = arith.constant 1 : i32
    %c512_i64 = arith.constant 512 : i64
    %c16_i64 = arith.constant 16 : i64
    %c256_i64 = arith.constant 256 : i64
    %c128_i64 = arith.constant 128 : i64
    %c16_i32 = arith.constant 16 : i32
    %c65535_i32 = arith.constant 65535 : i32
    %c-1_i32 = arith.constant -1 : i32
    %c2_i32 = arith.constant 2 : i32
    %true = arith.constant true
    %c0_i32 = arith.constant 0 : i32
    %cst_2 = arith.constant 0.000000e+00 : f32
    %cst_3 = arith.constant -1.44269502 : f32
    %cst_4 = arith.constant dense<128> : tensor<128x512xi32, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %cst_5 = arith.constant dense<256> : tensor<128x256xi32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %cst_6 = arith.constant dense<127> : tensor<128x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[0, 0], [0, 0], [0, 0]], block = []}>>
    %cst_7 = arith.constant dense<8> : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %cst_8 = arith.constant dense<256> : tensor<16x256xi32, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %cst_9 = arith.constant dense<256> : tensor<16x256xi32, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
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
    %55 = tt.make_range {end = 128 : i32, start = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %56 = tt.make_range {end = 128 : i32, start = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %57 = arith.extsi %55 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %58 = arith.extsi %56 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %59 = tt.splat %54 : i64 -> tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %60 = arith.addi %59, %57 : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %61 = arith.extsi %47 : i32 to i64
    %62 = tt.splat %61 : i64 -> tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %63 = arith.remsi %60, %62 {tt.contiguity = dense<128> : tensor<1xi32>, tt.divisibility = dense<128> : tensor<1xi32>} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %64 = tt.addptr %arg19, %52 : !tt.ptr<i32>, i64
    %65 = tt.splat %64 : !tt.ptr<i32> -> tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %66 = tt.addptr %65, %63 : tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>, tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %67 = tt.load %66 : tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %68 = arith.divsi %67, %cst_7 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %69 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %70 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %71 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %72 = arith.extsi %69 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %73 = arith.extsi %70 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %74 = arith.extsi %71 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %75 = arith.extsi %68 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %76 = tt.expand_dims %75 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %77 = arith.extsi %arg4 : i32 to i64
    %78 = tt.splat %77 : i64 -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %79 = arith.muli %76, %78 : tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %80 = tt.splat %arg3 : !tt.ptr<f8E4M3FN> -> tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %81 = tt.addptr %80, %79 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %82 = tt.expand_dims %72 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %83 = tt.expand_dims %73 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> -> tensor<1x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %84 = tt.expand_dims %74 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %85 = tt.broadcast %81 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %86 = tt.broadcast %82 : tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %87 = tt.addptr %85, %86 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %88 = arith.extsi %arg11 : i32 to i64
    %89 = arith.muli %50, %88 : i64
    %90 = tt.addptr %arg10, %89 : !tt.ptr<i8>, i64
    %91 = arith.muli %53, %c16_i64 : i64
    %92 = tt.make_range {end = 16 : i32, start = 0 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %93 = tt.make_range {end = 16 : i32, start = 0 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %94 = arith.extsi %92 : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> to tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %95 = arith.extsi %93 : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %96 = tt.splat %91 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %97 = tt.splat %91 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %98 = arith.addi %96, %94 : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %99 = arith.addi %97, %95 : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %100 = arith.extsi %arg17 : i32 to i64
    %101 = tt.splat %100 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %102 = tt.splat %100 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %103 = arith.remsi %98, %101 {tt.contiguity = dense<16> : tensor<1xi32>, tt.divisibility = dense<16> : tensor<1xi32>} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %104 = arith.remsi %99, %102 {tt.contiguity = dense<16> : tensor<1xi32>, tt.divisibility = dense<16> : tensor<1xi32>} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %105 = tt.splat %90 : !tt.ptr<i8> -> tensor<1x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %106 = tt.splat %90 : !tt.ptr<i8> -> tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %107 = tt.addptr %105, %83 : tensor<1x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>, tensor<1x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %108 = tt.addptr %106, %84 : tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %109 = tt.expand_dims %103 {axis = 1 : i32} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> -> tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %110 = tt.expand_dims %104 {axis = 1 : i32} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %111 = arith.extsi %arg12 : i32 to i64
    %112 = tt.splat %111 : i64 -> tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %113 = tt.splat %111 : i64 -> tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %114 = arith.muli %109, %112 : tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %115 = arith.muli %110, %113 : tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %116 = tt.broadcast %107 : tensor<1x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>> -> tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %117 = tt.broadcast %108 : tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %118 = tt.broadcast %114 : tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>> -> tensor<16x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %119 = tt.broadcast %115 : tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<16x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %120 = tt.addptr %116, %118 : tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>, tensor<16x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %121 = tt.addptr %117, %119 : tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %122 = arith.muli %53, %c512_i64 : i64
    %123 = tt.make_range {end = 512 : i32, start = 0 : i32} : tensor<512xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %124 = tt.make_range {end = 512 : i32, start = 0 : i32} : tensor<512xi32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %125 = arith.extsi %123 : tensor<512xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> to tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %126 = arith.extsi %124 : tensor<512xi32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> to tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %127 = tt.splat %122 : i64 -> tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %128 = tt.splat %122 : i64 -> tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %129 = arith.addi %127, %125 : tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %130 = arith.addi %128, %126 : tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %131 = tt.splat %100 : i64 -> tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %132 = tt.splat %100 : i64 -> tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %133 = arith.remsi %129, %131 {tt.contiguity = dense<512> : tensor<1xi32>, tt.divisibility = dense<512> : tensor<1xi32>} : tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %134 = arith.extsi %arg8 : i32 to i64
    %135 = arith.muli %50, %134 : i64
    %136 = tt.addptr %arg7, %135 : !tt.ptr<i8>, i64
    %137 = tt.expand_dims %58 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %138 = tt.expand_dims %133 {axis = 0 : i32} : tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> -> tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %139 = arith.extsi %arg9 : i32 to i64
    %140 = tt.splat %139 : i64 -> tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %141 = arith.muli %138, %140 : tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %142 = tt.broadcast %137 : tensor<128x1xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %143 = tt.broadcast %141 : tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %144 = arith.addi %142, %143 : tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %145 = tt.splat %136 : !tt.ptr<i8> -> tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %146 = tt.addptr %145, %144 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %147 = arith.addi %arg18, %c255_i32 : i32
    %148 = arith.divsi %147, %c256_i32 : i32
    %149:5 = scf.for %arg28 = %c0_i32 to %148 step %c1_i32 iter_args(%arg29 = %cst_0, %arg30 = %87, %arg31 = %146, %arg32 = %121, %arg33 = %120) -> (tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>)  : i32 {
      %210 = tt.load %arg30 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %211 = ttg.convert_layout %210 : tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
      %212 = tt.load %arg31 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
      %213 = ttg.convert_layout %212 : tensor<128x512xi8, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
      %214 = tt.load %arg33 {cheap = true} : tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
      %215 = tt.reshape %214 : tensor<16x256xi8, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>> -> tensor<16x1x4x16x2x2x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 1, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 0, 1, 0, 0, 0], [0, 0, 0, 2, 0, 0, 0], [0, 0, 0, 4, 0, 0, 0], [0, 0, 0, 8, 0, 0, 0], [0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>>
      %216 = tt.trans %215 {order = array<i32: 0, 4, 3, 1, 5, 2, 6>} : tensor<16x1x4x16x2x2x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 1, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 0, 1, 0, 0, 0], [0, 0, 0, 2, 0, 0, 0], [0, 0, 0, 4, 0, 0, 0], [0, 0, 0, 8, 0, 0, 0], [0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>> -> tensor<16x2x16x1x2x4x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 1, 0, 0], [0, 1, 0, 0, 0, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0], [0, 0, 4, 0, 0, 0, 0], [0, 0, 8, 0, 0, 0, 0], [0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 0, 2, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>>
      %217 = tt.reshape %216 : tensor<16x2x16x1x2x4x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 1, 0, 0], [0, 1, 0, 0, 0, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0], [0, 0, 4, 0, 0, 0, 0], [0, 0, 8, 0, 0, 0, 0], [0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 0, 2, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>> -> tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>>
      %218 = ttg.convert_layout %210 : tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
      %219 = ttg.convert_layout %212 : tensor<128x512xi8, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
      %220 = tt.dot_scaled %218 scale %cst_6, %219 scale %217, %arg29 lhs = e4m3 rhs = e2m1 {fastMath = true} : tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>, tensor<128x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[0, 0], [0, 0], [0, 0]], block = []}>> * tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>, tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>> -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
      %221 = tt.addptr %arg33, %cst_9 : tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>, tensor<16x256xi32, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
      %222 = tt.addptr %arg32, %cst_8 : tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256xi32, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %223 = tt.addptr %arg30, %cst_5 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %224 = tt.addptr %arg31, %cst_4 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<128x512xi32, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
      scf.yield %220, %223, %224, %222, %221 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    }
    %150 = tt.load %arg13 : !tt.ptr<f32>
    %151 = tt.splat %150 : f32 -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %152 = arith.mulf %149#0, %151 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %153 = arith.cmpi slt, %60, %62 : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %154 = arith.cmpi slt, %130, %132 : tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %155 = arith.extsi %arg16 : i32 to i64
    %156 = arith.muli %50, %155 : i64
    %157 = tt.addptr %arg15, %156 : !tt.ptr<f32>, i64
    %158 = tt.splat %157 : !tt.ptr<f32> -> tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %159 = tt.addptr %158, %130 : tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>, tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %160 = tt.load %159, %154, %cst_1 : tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %161 = ttg.convert_layout %160 : tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> -> tensor<512xf32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>>
    %162 = tt.expand_dims %161 {axis = 0 : i32} : tensor<512xf32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>> -> tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>>
    %163 = ttg.convert_layout %162 : tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> -> tensor<1x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %164 = tt.broadcast %163 : tensor<1x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>> -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %165 = tt.broadcast %162 : tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> -> tensor<128x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>>
    %166 = arith.addf %152, %164 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %167 = tt.reshape %166 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>> -> tensor<128x256x2xf32, #ttg.linear<{register = [[0, 0, 1], [0, 1, 0], [0, 8, 0], [0, 128, 0], [16, 0, 0], [32, 0, 0], [64, 0, 0]], lane = [[1, 0, 0], [2, 0, 0], [4, 0, 0], [8, 0, 0], [0, 2, 0], [0, 4, 0]], warp = [[0, 16, 0], [0, 32, 0], [0, 64, 0]], block = []}>>
    %outLHS, %outRHS = tt.split %167 : tensor<128x256x2xf32, #ttg.linear<{register = [[0, 0, 1], [0, 1, 0], [0, 8, 0], [0, 128, 0], [16, 0, 0], [32, 0, 0], [64, 0, 0]], lane = [[1, 0, 0], [2, 0, 0], [4, 0, 0], [8, 0, 0], [0, 2, 0], [0, 4, 0]], warp = [[0, 16, 0], [0, 32, 0], [0, 64, 0]], block = []}>> -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %168 = tt.splat %arg27 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %169 = tt.splat %arg27 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %170 = arith.minnumf %outLHS, %169 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %171 = arith.minnumf %outRHS, %168 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %172 = arith.subf %cst_2, %arg27 : f32
    %173 = tt.splat %172 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %174 = arith.maxnumf %173, %171 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %175 = arith.mulf %arg26, %cst_3 : f32
    %176 = tt.splat %175 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %177 = arith.mulf %176, %170 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %178 = math.exp2 %177 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %179 = arith.addf %178, %cst : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %180 = arith.divf %170, %179 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %181 = math.fma %180, %174, %180 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %182 = arith.muli %53, %c256_i64 : i64
    %183 = tt.splat %182 : i64 -> tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %184 = arith.addi %183, %72 : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %185 = arith.extsi %12 : i32 to i64
    %186 = tt.splat %185 : i64 -> tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %187 = arith.cmpi slt, %184, %186 : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %188 = tt.load %arg14 : !tt.ptr<f32>
    %189 = tt.splat %188 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %190 = arith.divf %181, %189 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %191 = tt.fp_to_fp %190, rounding = rtne : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %192 = ttg.convert_layout %191 : tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %193 = arith.extsi %arg2 : i32 to i64
    %194 = arith.muli %52, %193 : i64
    %195 = tt.addptr %arg0, %194 : !tt.ptr<f8E4M3FN>, i64
    %196 = tt.expand_dims %60 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %197 = tt.splat %193 : i64 -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %198 = arith.muli %196, %197 : tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %199 = tt.splat %195 : !tt.ptr<f8E4M3FN> -> tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %200 = tt.addptr %199, %198 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %201 = tt.expand_dims %184 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %202 = tt.broadcast %200 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %203 = tt.broadcast %201 : tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %204 = tt.addptr %202, %203 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %205 = tt.expand_dims %153 {axis = 1 : i32} : tensor<128xi1, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<128x1xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %206 = tt.expand_dims %187 {axis = 0 : i32} : tensor<256xi1, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %207 = tt.broadcast %205 : tensor<128x1xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %208 = tt.broadcast %206 : tensor<1x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %209 = arith.andi %207, %208 : tensor<128x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    tt.store %204, %192, %209 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    tt.return
  }
}
[tritongpu-remove-layout-conversions]: Module after canonicalizing:
module attributes {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 8 : i32, ttg.target = "hip:gfx950", "ttg.threads-per-warp" = 64 : i32} {
  tt.func public @_moe_gemm_a8w4(%arg0: !tt.ptr<f8E4M3FN> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg1: i32 {tt.divisibility = 16 : i32}, %arg2: i32 {tt.divisibility = 16 : i32}, %arg3: !tt.ptr<f8E4M3FN> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg4: i32 {tt.divisibility = 16 : i32}, %arg5: i32 {tt.divisibility = 16 : i32}, %arg6: i32 {tt.divisibility = 16 : i32}, %arg7: !tt.ptr<i8> {tt.divisibility = 16 : i32}, %arg8: i32 {tt.divisibility = 16 : i32}, %arg9: i32 {tt.divisibility = 16 : i32}, %arg10: !tt.ptr<i8> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg11: i32 {tt.divisibility = 16 : i32}, %arg12: i32 {tt.divisibility = 16 : i32}, %arg13: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg14: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg15: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg16: i32 {tt.divisibility = 16 : i32}, %arg17: i32 {tt.divisibility = 16 : i32}, %arg18: i32 {tt.divisibility = 16 : i32}, %arg19: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg20: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg21: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg22: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg23: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg24: i32, %arg25: i32, %arg26: f32, %arg27: f32) attributes {noinline = false} {
    %cst = arith.constant dense<1.000000e+00> : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %c255_i32 = arith.constant 255 : i32
    %c256_i32 = arith.constant 256 : i32
    %c4_i32 = arith.constant 4 : i32
    %c8_i32 = arith.constant 8 : i32
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %c1_i32 = arith.constant 1 : i32
    %c512_i64 = arith.constant 512 : i64
    %c16_i64 = arith.constant 16 : i64
    %c256_i64 = arith.constant 256 : i64
    %c128_i64 = arith.constant 128 : i64
    %c16_i32 = arith.constant 16 : i32
    %c65535_i32 = arith.constant 65535 : i32
    %c-1_i32 = arith.constant -1 : i32
    %c2_i32 = arith.constant 2 : i32
    %true = arith.constant true
    %c0_i32 = arith.constant 0 : i32
    %cst_2 = arith.constant 0.000000e+00 : f32
    %cst_3 = arith.constant -1.44269502 : f32
    %cst_4 = arith.constant dense<128> : tensor<128x512xi32, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %cst_5 = arith.constant dense<256> : tensor<128x256xi32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %cst_6 = arith.constant dense<127> : tensor<128x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[0, 0], [0, 0], [0, 0]], block = []}>>
    %cst_7 = arith.constant dense<8> : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %cst_8 = arith.constant dense<256> : tensor<16x256xi32, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %cst_9 = arith.constant dense<256> : tensor<16x256xi32, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
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
    %55 = tt.make_range {end = 128 : i32, start = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %56 = tt.make_range {end = 128 : i32, start = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %57 = arith.extsi %55 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %58 = arith.extsi %56 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %59 = tt.splat %54 : i64 -> tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %60 = arith.addi %59, %57 : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %61 = arith.extsi %47 : i32 to i64
    %62 = tt.splat %61 : i64 -> tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %63 = arith.remsi %60, %62 {tt.contiguity = dense<128> : tensor<1xi32>, tt.divisibility = dense<128> : tensor<1xi32>} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %64 = tt.addptr %arg19, %52 : !tt.ptr<i32>, i64
    %65 = tt.splat %64 : !tt.ptr<i32> -> tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %66 = tt.addptr %65, %63 : tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>, tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %67 = tt.load %66 : tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %68 = arith.divsi %67, %cst_7 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %69 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %70 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %71 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %72 = arith.extsi %69 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %73 = arith.extsi %70 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %74 = arith.extsi %71 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %75 = arith.extsi %68 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %76 = tt.expand_dims %75 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %77 = arith.extsi %arg4 : i32 to i64
    %78 = tt.splat %77 : i64 -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %79 = arith.muli %76, %78 : tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %80 = tt.splat %arg3 : !tt.ptr<f8E4M3FN> -> tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %81 = tt.addptr %80, %79 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %82 = tt.expand_dims %72 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %83 = tt.expand_dims %73 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> -> tensor<1x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %84 = tt.expand_dims %74 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %85 = tt.broadcast %81 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %86 = tt.broadcast %82 : tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %87 = tt.addptr %85, %86 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %88 = arith.extsi %arg11 : i32 to i64
    %89 = arith.muli %50, %88 : i64
    %90 = tt.addptr %arg10, %89 : !tt.ptr<i8>, i64
    %91 = arith.muli %53, %c16_i64 : i64
    %92 = tt.make_range {end = 16 : i32, start = 0 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %93 = tt.make_range {end = 16 : i32, start = 0 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %94 = arith.extsi %92 : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> to tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %95 = arith.extsi %93 : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %96 = tt.splat %91 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %97 = tt.splat %91 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %98 = arith.addi %96, %94 : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %99 = arith.addi %97, %95 : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %100 = arith.extsi %arg17 : i32 to i64
    %101 = tt.splat %100 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %102 = tt.splat %100 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %103 = arith.remsi %98, %101 {tt.contiguity = dense<16> : tensor<1xi32>, tt.divisibility = dense<16> : tensor<1xi32>} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %104 = arith.remsi %99, %102 {tt.contiguity = dense<16> : tensor<1xi32>, tt.divisibility = dense<16> : tensor<1xi32>} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %105 = tt.splat %90 : !tt.ptr<i8> -> tensor<1x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %106 = tt.splat %90 : !tt.ptr<i8> -> tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %107 = tt.addptr %105, %83 : tensor<1x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>, tensor<1x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %108 = tt.addptr %106, %84 : tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %109 = tt.expand_dims %103 {axis = 1 : i32} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> -> tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %110 = tt.expand_dims %104 {axis = 1 : i32} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %111 = arith.extsi %arg12 : i32 to i64
    %112 = tt.splat %111 : i64 -> tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %113 = tt.splat %111 : i64 -> tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %114 = arith.muli %109, %112 : tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %115 = arith.muli %110, %113 : tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %116 = tt.broadcast %107 : tensor<1x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>> -> tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %117 = tt.broadcast %108 : tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %118 = tt.broadcast %114 : tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>> -> tensor<16x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %119 = tt.broadcast %115 : tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<16x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %120 = tt.addptr %116, %118 : tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>, tensor<16x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %121 = tt.addptr %117, %119 : tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %122 = arith.muli %53, %c512_i64 : i64
    %123 = tt.make_range {end = 512 : i32, start = 0 : i32} : tensor<512xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %124 = tt.make_range {end = 512 : i32, start = 0 : i32} : tensor<512xi32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %125 = arith.extsi %123 : tensor<512xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> to tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %126 = arith.extsi %124 : tensor<512xi32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> to tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %127 = tt.splat %122 : i64 -> tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %128 = tt.splat %122 : i64 -> tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %129 = arith.addi %127, %125 : tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %130 = arith.addi %128, %126 : tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %131 = tt.splat %100 : i64 -> tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %132 = tt.splat %100 : i64 -> tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %133 = arith.remsi %129, %131 {tt.contiguity = dense<512> : tensor<1xi32>, tt.divisibility = dense<512> : tensor<1xi32>} : tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %134 = arith.extsi %arg8 : i32 to i64
    %135 = arith.muli %50, %134 : i64
    %136 = tt.addptr %arg7, %135 : !tt.ptr<i8>, i64
    %137 = tt.expand_dims %58 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %138 = tt.expand_dims %133 {axis = 0 : i32} : tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> -> tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %139 = arith.extsi %arg9 : i32 to i64
    %140 = tt.splat %139 : i64 -> tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %141 = arith.muli %138, %140 : tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %142 = tt.broadcast %137 : tensor<128x1xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %143 = tt.broadcast %141 : tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %144 = arith.addi %142, %143 : tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %145 = tt.splat %136 : !tt.ptr<i8> -> tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %146 = tt.addptr %145, %144 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %147 = arith.addi %arg18, %c255_i32 : i32
    %148 = arith.divsi %147, %c256_i32 : i32
    %149:5 = scf.for %arg28 = %c0_i32 to %148 step %c1_i32 iter_args(%arg29 = %cst_0, %arg30 = %87, %arg31 = %146, %arg32 = %121, %arg33 = %120) -> (tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>)  : i32 {
      %209 = tt.load %arg30 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %210 = tt.load %arg31 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
      %211 = tt.load %arg33 {cheap = true} : tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
      %212 = tt.reshape %211 : tensor<16x256xi8, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>> -> tensor<16x1x4x16x2x2x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 1, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 0, 1, 0, 0, 0], [0, 0, 0, 2, 0, 0, 0], [0, 0, 0, 4, 0, 0, 0], [0, 0, 0, 8, 0, 0, 0], [0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>>
      %213 = tt.trans %212 {order = array<i32: 0, 4, 3, 1, 5, 2, 6>} : tensor<16x1x4x16x2x2x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 1, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 0, 1, 0, 0, 0], [0, 0, 0, 2, 0, 0, 0], [0, 0, 0, 4, 0, 0, 0], [0, 0, 0, 8, 0, 0, 0], [0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>> -> tensor<16x2x16x1x2x4x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 1, 0, 0], [0, 1, 0, 0, 0, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0], [0, 0, 4, 0, 0, 0, 0], [0, 0, 8, 0, 0, 0, 0], [0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 0, 2, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>>
      %214 = tt.reshape %213 : tensor<16x2x16x1x2x4x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 1, 0, 0], [0, 1, 0, 0, 0, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0], [0, 0, 4, 0, 0, 0, 0], [0, 0, 8, 0, 0, 0, 0], [0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 0, 2, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>> -> tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>>
      %215 = ttg.convert_layout %209 : tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
      %216 = ttg.convert_layout %210 : tensor<128x512xi8, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
      %217 = tt.dot_scaled %215 scale %cst_6, %216 scale %214, %arg29 lhs = e4m3 rhs = e2m1 {fastMath = true} : tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>, tensor<128x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[0, 0], [0, 0], [0, 0]], block = []}>> * tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>, tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>> -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
      %218 = tt.addptr %arg33, %cst_9 : tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>, tensor<16x256xi32, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
      %219 = tt.addptr %arg32, %cst_8 : tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256xi32, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %220 = tt.addptr %arg30, %cst_5 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %221 = tt.addptr %arg31, %cst_4 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<128x512xi32, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
      scf.yield %217, %220, %221, %219, %218 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    }
    %150 = tt.load %arg13 : !tt.ptr<f32>
    %151 = tt.splat %150 : f32 -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %152 = arith.mulf %149#0, %151 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %153 = arith.cmpi slt, %60, %62 : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %154 = arith.cmpi slt, %130, %132 : tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %155 = arith.extsi %arg16 : i32 to i64
    %156 = arith.muli %50, %155 : i64
    %157 = tt.addptr %arg15, %156 : !tt.ptr<f32>, i64
    %158 = tt.splat %157 : !tt.ptr<f32> -> tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %159 = tt.addptr %158, %130 : tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>, tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %160 = tt.load %159, %154, %cst_1 : tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %161 = ttg.convert_layout %160 : tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> -> tensor<512xf32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>>
    %162 = tt.expand_dims %161 {axis = 0 : i32} : tensor<512xf32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>> -> tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>>
    %163 = ttg.convert_layout %162 : tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> -> tensor<1x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %164 = tt.broadcast %163 : tensor<1x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>> -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %165 = arith.addf %152, %164 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %166 = tt.reshape %165 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>> -> tensor<128x256x2xf32, #ttg.linear<{register = [[0, 0, 1], [0, 1, 0], [0, 8, 0], [0, 128, 0], [16, 0, 0], [32, 0, 0], [64, 0, 0]], lane = [[1, 0, 0], [2, 0, 0], [4, 0, 0], [8, 0, 0], [0, 2, 0], [0, 4, 0]], warp = [[0, 16, 0], [0, 32, 0], [0, 64, 0]], block = []}>>
    %outLHS, %outRHS = tt.split %166 : tensor<128x256x2xf32, #ttg.linear<{register = [[0, 0, 1], [0, 1, 0], [0, 8, 0], [0, 128, 0], [16, 0, 0], [32, 0, 0], [64, 0, 0]], lane = [[1, 0, 0], [2, 0, 0], [4, 0, 0], [8, 0, 0], [0, 2, 0], [0, 4, 0]], warp = [[0, 16, 0], [0, 32, 0], [0, 64, 0]], block = []}>> -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %167 = tt.splat %arg27 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %168 = tt.splat %arg27 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %169 = arith.minnumf %outLHS, %168 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %170 = arith.minnumf %outRHS, %167 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %171 = arith.subf %cst_2, %arg27 : f32
    %172 = tt.splat %171 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %173 = arith.maxnumf %172, %170 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %174 = arith.mulf %arg26, %cst_3 : f32
    %175 = tt.splat %174 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %176 = arith.mulf %175, %169 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %177 = math.exp2 %176 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %178 = arith.addf %177, %cst : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %179 = arith.divf %169, %178 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %180 = math.fma %179, %173, %179 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %181 = arith.muli %53, %c256_i64 : i64
    %182 = tt.splat %181 : i64 -> tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %183 = arith.addi %182, %72 : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %184 = arith.extsi %12 : i32 to i64
    %185 = tt.splat %184 : i64 -> tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %186 = arith.cmpi slt, %183, %185 : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %187 = tt.load %arg14 : !tt.ptr<f32>
    %188 = tt.splat %187 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %189 = arith.divf %180, %188 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %190 = tt.fp_to_fp %189, rounding = rtne : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %191 = ttg.convert_layout %190 : tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %192 = arith.extsi %arg2 : i32 to i64
    %193 = arith.muli %52, %192 : i64
    %194 = tt.addptr %arg0, %193 : !tt.ptr<f8E4M3FN>, i64
    %195 = tt.expand_dims %60 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %196 = tt.splat %192 : i64 -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %197 = arith.muli %195, %196 : tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %198 = tt.splat %194 : !tt.ptr<f8E4M3FN> -> tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %199 = tt.addptr %198, %197 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %200 = tt.expand_dims %183 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %201 = tt.broadcast %199 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %202 = tt.broadcast %200 : tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %203 = tt.addptr %201, %202 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %204 = tt.expand_dims %153 {axis = 1 : i32} : tensor<128xi1, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<128x1xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %205 = tt.expand_dims %186 {axis = 0 : i32} : tensor<256xi1, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %206 = tt.broadcast %204 : tensor<128x1xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %207 = tt.broadcast %205 : tensor<1x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %208 = arith.andi %206, %207 : tensor<128x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    tt.store %203, %191, %208 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    tt.return
  }
}
[tritongpu-remove-layout-conversions]: addRematValue %209 = tt.load %arg30 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> encoding #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}> %215 = ttg.convert_layout %209 : tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
[tritongpu-remove-layout-conversions]: addRematValue %210 = tt.load %arg31 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> encoding #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}> %216 = ttg.convert_layout %210 : tensor<128x512xi8, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
[tritongpu-remove-layout-conversions]: check backward remat with source %160 = tt.load %159, %154, %cst_1 : tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> encoding #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>
[tritongpu-remove-layout-conversions]:   getRematerializableSlice failed
[tritongpu-remove-layout-conversions]: addRematValue %160 = tt.load %159, %154, %cst_1 : tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> encoding #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}> %161 = ttg.convert_layout %160 : tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> -> tensor<512xf32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>>
[tritongpu-remove-layout-conversions]: check backward remat with source %162 = tt.expand_dims %161 {axis = 0 : i32} : tensor<512xf32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>> -> tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> encoding #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>
[tritongpu-remove-layout-conversions]:   getRematerializableSlice failed
[tritongpu-remove-layout-conversions]: addRematValue %162 = tt.expand_dims %161 {axis = 0 : i32} : tensor<512xf32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>> -> tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> encoding #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}> %163 = ttg.convert_layout %162 : tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> -> tensor<1x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
[tritongpu-remove-layout-conversions]: check backward remat with source %190 = tt.fp_to_fp %189, rounding = rtne : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> encoding #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>
[tritongpu-remove-layout-conversions]:   getRematerializableSlice failed
[tritongpu-remove-layout-conversions]: addRematValue %190 = tt.fp_to_fp %189, rounding = rtne : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> encoding #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}> %191 = ttg.convert_layout %190 : tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
[tritongpu-remove-layout-conversions]: Module after backward remat:
module attributes {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 8 : i32, ttg.target = "hip:gfx950", "ttg.threads-per-warp" = 64 : i32} {
  tt.func public @_moe_gemm_a8w4(%arg0: !tt.ptr<f8E4M3FN> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg1: i32 {tt.divisibility = 16 : i32}, %arg2: i32 {tt.divisibility = 16 : i32}, %arg3: !tt.ptr<f8E4M3FN> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg4: i32 {tt.divisibility = 16 : i32}, %arg5: i32 {tt.divisibility = 16 : i32}, %arg6: i32 {tt.divisibility = 16 : i32}, %arg7: !tt.ptr<i8> {tt.divisibility = 16 : i32}, %arg8: i32 {tt.divisibility = 16 : i32}, %arg9: i32 {tt.divisibility = 16 : i32}, %arg10: !tt.ptr<i8> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg11: i32 {tt.divisibility = 16 : i32}, %arg12: i32 {tt.divisibility = 16 : i32}, %arg13: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg14: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg15: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg16: i32 {tt.divisibility = 16 : i32}, %arg17: i32 {tt.divisibility = 16 : i32}, %arg18: i32 {tt.divisibility = 16 : i32}, %arg19: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg20: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg21: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg22: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg23: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg24: i32, %arg25: i32, %arg26: f32, %arg27: f32) attributes {noinline = false} {
    %cst = arith.constant dense<1.000000e+00> : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %c255_i32 = arith.constant 255 : i32
    %c256_i32 = arith.constant 256 : i32
    %c4_i32 = arith.constant 4 : i32
    %c8_i32 = arith.constant 8 : i32
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %c1_i32 = arith.constant 1 : i32
    %c512_i64 = arith.constant 512 : i64
    %c16_i64 = arith.constant 16 : i64
    %c256_i64 = arith.constant 256 : i64
    %c128_i64 = arith.constant 128 : i64
    %c16_i32 = arith.constant 16 : i32
    %c65535_i32 = arith.constant 65535 : i32
    %c-1_i32 = arith.constant -1 : i32
    %c2_i32 = arith.constant 2 : i32
    %true = arith.constant true
    %c0_i32 = arith.constant 0 : i32
    %cst_2 = arith.constant 0.000000e+00 : f32
    %cst_3 = arith.constant -1.44269502 : f32
    %cst_4 = arith.constant dense<128> : tensor<128x512xi32, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %cst_5 = arith.constant dense<256> : tensor<128x256xi32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %cst_6 = arith.constant dense<127> : tensor<128x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[0, 0], [0, 0], [0, 0]], block = []}>>
    %cst_7 = arith.constant dense<8> : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %cst_8 = arith.constant dense<256> : tensor<16x256xi32, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %cst_9 = arith.constant dense<256> : tensor<16x256xi32, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
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
    %55 = tt.make_range {end = 128 : i32, start = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %56 = tt.make_range {end = 128 : i32, start = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %57 = arith.extsi %55 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %58 = arith.extsi %56 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %59 = tt.splat %54 : i64 -> tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %60 = arith.addi %59, %57 : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %61 = arith.extsi %47 : i32 to i64
    %62 = tt.splat %61 : i64 -> tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %63 = arith.remsi %60, %62 {tt.contiguity = dense<128> : tensor<1xi32>, tt.divisibility = dense<128> : tensor<1xi32>} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %64 = tt.addptr %arg19, %52 : !tt.ptr<i32>, i64
    %65 = tt.splat %64 : !tt.ptr<i32> -> tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %66 = tt.addptr %65, %63 : tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>, tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %67 = tt.load %66 : tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %68 = arith.divsi %67, %cst_7 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %69 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %70 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %71 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %72 = arith.extsi %69 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %73 = arith.extsi %70 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %74 = arith.extsi %71 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %75 = arith.extsi %68 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %76 = tt.expand_dims %75 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %77 = arith.extsi %arg4 : i32 to i64
    %78 = tt.splat %77 : i64 -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %79 = arith.muli %76, %78 : tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %80 = tt.splat %arg3 : !tt.ptr<f8E4M3FN> -> tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %81 = tt.addptr %80, %79 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %82 = tt.expand_dims %72 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %83 = tt.expand_dims %73 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> -> tensor<1x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %84 = tt.expand_dims %74 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %85 = tt.broadcast %81 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %86 = tt.broadcast %82 : tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %87 = tt.addptr %85, %86 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %88 = arith.extsi %arg11 : i32 to i64
    %89 = arith.muli %50, %88 : i64
    %90 = tt.addptr %arg10, %89 : !tt.ptr<i8>, i64
    %91 = arith.muli %53, %c16_i64 : i64
    %92 = tt.make_range {end = 16 : i32, start = 0 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %93 = tt.make_range {end = 16 : i32, start = 0 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %94 = arith.extsi %92 : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> to tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %95 = arith.extsi %93 : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %96 = tt.splat %91 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %97 = tt.splat %91 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %98 = arith.addi %96, %94 : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %99 = arith.addi %97, %95 : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %100 = arith.extsi %arg17 : i32 to i64
    %101 = tt.splat %100 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %102 = tt.splat %100 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %103 = arith.remsi %98, %101 {tt.contiguity = dense<16> : tensor<1xi32>, tt.divisibility = dense<16> : tensor<1xi32>} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %104 = arith.remsi %99, %102 {tt.contiguity = dense<16> : tensor<1xi32>, tt.divisibility = dense<16> : tensor<1xi32>} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %105 = tt.splat %90 : !tt.ptr<i8> -> tensor<1x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %106 = tt.splat %90 : !tt.ptr<i8> -> tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %107 = tt.addptr %105, %83 : tensor<1x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>, tensor<1x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %108 = tt.addptr %106, %84 : tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %109 = tt.expand_dims %103 {axis = 1 : i32} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> -> tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %110 = tt.expand_dims %104 {axis = 1 : i32} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %111 = arith.extsi %arg12 : i32 to i64
    %112 = tt.splat %111 : i64 -> tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %113 = tt.splat %111 : i64 -> tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %114 = arith.muli %109, %112 : tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %115 = arith.muli %110, %113 : tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %116 = tt.broadcast %107 : tensor<1x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>> -> tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %117 = tt.broadcast %108 : tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %118 = tt.broadcast %114 : tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>> -> tensor<16x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %119 = tt.broadcast %115 : tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<16x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %120 = tt.addptr %116, %118 : tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>, tensor<16x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %121 = tt.addptr %117, %119 : tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %122 = arith.muli %53, %c512_i64 : i64
    %123 = tt.make_range {end = 512 : i32, start = 0 : i32} : tensor<512xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %124 = tt.make_range {end = 512 : i32, start = 0 : i32} : tensor<512xi32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %125 = arith.extsi %123 : tensor<512xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> to tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %126 = arith.extsi %124 : tensor<512xi32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> to tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %127 = tt.splat %122 : i64 -> tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %128 = tt.splat %122 : i64 -> tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %129 = arith.addi %127, %125 : tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %130 = arith.addi %128, %126 : tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %131 = tt.splat %100 : i64 -> tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %132 = tt.splat %100 : i64 -> tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %133 = arith.remsi %129, %131 {tt.contiguity = dense<512> : tensor<1xi32>, tt.divisibility = dense<512> : tensor<1xi32>} : tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %134 = arith.extsi %arg8 : i32 to i64
    %135 = arith.muli %50, %134 : i64
    %136 = tt.addptr %arg7, %135 : !tt.ptr<i8>, i64
    %137 = tt.expand_dims %58 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %138 = tt.expand_dims %133 {axis = 0 : i32} : tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> -> tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %139 = arith.extsi %arg9 : i32 to i64
    %140 = tt.splat %139 : i64 -> tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %141 = arith.muli %138, %140 : tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %142 = tt.broadcast %137 : tensor<128x1xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %143 = tt.broadcast %141 : tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %144 = arith.addi %142, %143 : tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %145 = tt.splat %136 : !tt.ptr<i8> -> tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %146 = tt.addptr %145, %144 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %147 = arith.addi %arg18, %c255_i32 : i32
    %148 = arith.divsi %147, %c256_i32 : i32
    %149:5 = scf.for %arg28 = %c0_i32 to %148 step %c1_i32 iter_args(%arg29 = %cst_0, %arg30 = %87, %arg31 = %146, %arg32 = %121, %arg33 = %120) -> (tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>)  : i32 {
      %209 = tt.load %arg30 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %210 = tt.load %arg31 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
      %211 = tt.load %arg33 {cheap = true} : tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
      %212 = tt.reshape %211 : tensor<16x256xi8, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>> -> tensor<16x1x4x16x2x2x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 1, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 0, 1, 0, 0, 0], [0, 0, 0, 2, 0, 0, 0], [0, 0, 0, 4, 0, 0, 0], [0, 0, 0, 8, 0, 0, 0], [0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>>
      %213 = tt.trans %212 {order = array<i32: 0, 4, 3, 1, 5, 2, 6>} : tensor<16x1x4x16x2x2x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 1, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 0, 1, 0, 0, 0], [0, 0, 0, 2, 0, 0, 0], [0, 0, 0, 4, 0, 0, 0], [0, 0, 0, 8, 0, 0, 0], [0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>> -> tensor<16x2x16x1x2x4x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 1, 0, 0], [0, 1, 0, 0, 0, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0], [0, 0, 4, 0, 0, 0, 0], [0, 0, 8, 0, 0, 0, 0], [0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 0, 2, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>>
      %214 = tt.reshape %213 : tensor<16x2x16x1x2x4x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 1, 0, 0], [0, 1, 0, 0, 0, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0], [0, 0, 4, 0, 0, 0, 0], [0, 0, 8, 0, 0, 0, 0], [0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 0, 2, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>> -> tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>>
      %215 = ttg.convert_layout %209 : tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
      %216 = ttg.convert_layout %210 : tensor<128x512xi8, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
      %217 = tt.dot_scaled %215 scale %cst_6, %216 scale %214, %arg29 lhs = e4m3 rhs = e2m1 {fastMath = true} : tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>, tensor<128x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[0, 0], [0, 0], [0, 0]], block = []}>> * tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>, tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>> -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
      %218 = tt.addptr %arg33, %cst_9 : tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>, tensor<16x256xi32, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
      %219 = tt.addptr %arg32, %cst_8 : tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256xi32, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %220 = tt.addptr %arg30, %cst_5 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %221 = tt.addptr %arg31, %cst_4 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<128x512xi32, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
      scf.yield %217, %220, %221, %219, %218 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    }
    %150 = tt.load %arg13 : !tt.ptr<f32>
    %151 = tt.splat %150 : f32 -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %152 = arith.mulf %149#0, %151 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %153 = arith.cmpi slt, %60, %62 : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %154 = arith.cmpi slt, %130, %132 : tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %155 = arith.extsi %arg16 : i32 to i64
    %156 = arith.muli %50, %155 : i64
    %157 = tt.addptr %arg15, %156 : !tt.ptr<f32>, i64
    %158 = tt.splat %157 : !tt.ptr<f32> -> tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %159 = tt.addptr %158, %130 : tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>, tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %160 = tt.load %159, %154, %cst_1 : tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %161 = ttg.convert_layout %160 : tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> -> tensor<512xf32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>>
    %162 = tt.expand_dims %161 {axis = 0 : i32} : tensor<512xf32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>> -> tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>>
    %163 = ttg.convert_layout %162 : tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> -> tensor<1x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %164 = tt.broadcast %163 : tensor<1x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>> -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %165 = arith.addf %152, %164 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %166 = tt.reshape %165 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>> -> tensor<128x256x2xf32, #ttg.linear<{register = [[0, 0, 1], [0, 1, 0], [0, 8, 0], [0, 128, 0], [16, 0, 0], [32, 0, 0], [64, 0, 0]], lane = [[1, 0, 0], [2, 0, 0], [4, 0, 0], [8, 0, 0], [0, 2, 0], [0, 4, 0]], warp = [[0, 16, 0], [0, 32, 0], [0, 64, 0]], block = []}>>
    %outLHS, %outRHS = tt.split %166 : tensor<128x256x2xf32, #ttg.linear<{register = [[0, 0, 1], [0, 1, 0], [0, 8, 0], [0, 128, 0], [16, 0, 0], [32, 0, 0], [64, 0, 0]], lane = [[1, 0, 0], [2, 0, 0], [4, 0, 0], [8, 0, 0], [0, 2, 0], [0, 4, 0]], warp = [[0, 16, 0], [0, 32, 0], [0, 64, 0]], block = []}>> -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %167 = tt.splat %arg27 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %168 = tt.splat %arg27 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %169 = arith.minnumf %outLHS, %168 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %170 = arith.minnumf %outRHS, %167 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %171 = arith.subf %cst_2, %arg27 : f32
    %172 = tt.splat %171 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %173 = arith.maxnumf %172, %170 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %174 = arith.mulf %arg26, %cst_3 : f32
    %175 = tt.splat %174 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %176 = arith.mulf %175, %169 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %177 = math.exp2 %176 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %178 = arith.addf %177, %cst : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %179 = arith.divf %169, %178 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %180 = math.fma %179, %173, %179 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %181 = arith.muli %53, %c256_i64 : i64
    %182 = tt.splat %181 : i64 -> tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %183 = arith.addi %182, %72 : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %184 = arith.extsi %12 : i32 to i64
    %185 = tt.splat %184 : i64 -> tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %186 = arith.cmpi slt, %183, %185 : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %187 = tt.load %arg14 : !tt.ptr<f32>
    %188 = tt.splat %187 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %189 = arith.divf %180, %188 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %190 = tt.fp_to_fp %189, rounding = rtne : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %191 = ttg.convert_layout %190 : tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %192 = arith.extsi %arg2 : i32 to i64
    %193 = arith.muli %52, %192 : i64
    %194 = tt.addptr %arg0, %193 : !tt.ptr<f8E4M3FN>, i64
    %195 = tt.expand_dims %60 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %196 = tt.splat %192 : i64 -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %197 = arith.muli %195, %196 : tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %198 = tt.splat %194 : !tt.ptr<f8E4M3FN> -> tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %199 = tt.addptr %198, %197 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %200 = tt.expand_dims %183 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %201 = tt.broadcast %199 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %202 = tt.broadcast %200 : tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %203 = tt.addptr %201, %202 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %204 = tt.expand_dims %153 {axis = 1 : i32} : tensor<128xi1, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<128x1xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %205 = tt.expand_dims %186 {axis = 0 : i32} : tensor<256xi1, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %206 = tt.broadcast %204 : tensor<128x1xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %207 = tt.broadcast %205 : tensor<1x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %208 = arith.andi %206, %207 : tensor<128x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    tt.store %203, %191, %208 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    tt.return
  }
}
[tritongpu-remove-layout-conversions]: Module after canonicalizing:
module attributes {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 8 : i32, ttg.target = "hip:gfx950", "ttg.threads-per-warp" = 64 : i32} {
  tt.func public @_moe_gemm_a8w4(%arg0: !tt.ptr<f8E4M3FN> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg1: i32 {tt.divisibility = 16 : i32}, %arg2: i32 {tt.divisibility = 16 : i32}, %arg3: !tt.ptr<f8E4M3FN> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg4: i32 {tt.divisibility = 16 : i32}, %arg5: i32 {tt.divisibility = 16 : i32}, %arg6: i32 {tt.divisibility = 16 : i32}, %arg7: !tt.ptr<i8> {tt.divisibility = 16 : i32}, %arg8: i32 {tt.divisibility = 16 : i32}, %arg9: i32 {tt.divisibility = 16 : i32}, %arg10: !tt.ptr<i8> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg11: i32 {tt.divisibility = 16 : i32}, %arg12: i32 {tt.divisibility = 16 : i32}, %arg13: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg14: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg15: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg16: i32 {tt.divisibility = 16 : i32}, %arg17: i32 {tt.divisibility = 16 : i32}, %arg18: i32 {tt.divisibility = 16 : i32}, %arg19: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg20: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg21: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg22: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg23: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg24: i32, %arg25: i32, %arg26: f32, %arg27: f32) attributes {noinline = false} {
    %cst = arith.constant dense<1.000000e+00> : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %c255_i32 = arith.constant 255 : i32
    %c256_i32 = arith.constant 256 : i32
    %c4_i32 = arith.constant 4 : i32
    %c8_i32 = arith.constant 8 : i32
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %c1_i32 = arith.constant 1 : i32
    %c512_i64 = arith.constant 512 : i64
    %c16_i64 = arith.constant 16 : i64
    %c256_i64 = arith.constant 256 : i64
    %c128_i64 = arith.constant 128 : i64
    %c16_i32 = arith.constant 16 : i32
    %c65535_i32 = arith.constant 65535 : i32
    %c-1_i32 = arith.constant -1 : i32
    %c2_i32 = arith.constant 2 : i32
    %true = arith.constant true
    %c0_i32 = arith.constant 0 : i32
    %cst_2 = arith.constant 0.000000e+00 : f32
    %cst_3 = arith.constant -1.44269502 : f32
    %cst_4 = arith.constant dense<128> : tensor<128x512xi32, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %cst_5 = arith.constant dense<256> : tensor<128x256xi32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %cst_6 = arith.constant dense<127> : tensor<128x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[0, 0], [0, 0], [0, 0]], block = []}>>
    %cst_7 = arith.constant dense<8> : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %cst_8 = arith.constant dense<256> : tensor<16x256xi32, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %cst_9 = arith.constant dense<256> : tensor<16x256xi32, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
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
    %55 = tt.make_range {end = 128 : i32, start = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %56 = tt.make_range {end = 128 : i32, start = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %57 = arith.extsi %55 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %58 = arith.extsi %56 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %59 = tt.splat %54 : i64 -> tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %60 = arith.addi %59, %57 : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %61 = arith.extsi %47 : i32 to i64
    %62 = tt.splat %61 : i64 -> tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %63 = arith.remsi %60, %62 {tt.contiguity = dense<128> : tensor<1xi32>, tt.divisibility = dense<128> : tensor<1xi32>} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %64 = tt.addptr %arg19, %52 : !tt.ptr<i32>, i64
    %65 = tt.splat %64 : !tt.ptr<i32> -> tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %66 = tt.addptr %65, %63 : tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>, tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %67 = tt.load %66 : tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %68 = arith.divsi %67, %cst_7 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %69 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %70 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %71 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %72 = arith.extsi %69 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %73 = arith.extsi %70 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %74 = arith.extsi %71 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %75 = arith.extsi %68 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %76 = tt.expand_dims %75 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %77 = arith.extsi %arg4 : i32 to i64
    %78 = tt.splat %77 : i64 -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %79 = arith.muli %76, %78 : tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %80 = tt.splat %arg3 : !tt.ptr<f8E4M3FN> -> tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %81 = tt.addptr %80, %79 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %82 = tt.expand_dims %72 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %83 = tt.expand_dims %73 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> -> tensor<1x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %84 = tt.expand_dims %74 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %85 = tt.broadcast %81 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %86 = tt.broadcast %82 : tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %87 = tt.addptr %85, %86 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %88 = arith.extsi %arg11 : i32 to i64
    %89 = arith.muli %50, %88 : i64
    %90 = tt.addptr %arg10, %89 : !tt.ptr<i8>, i64
    %91 = arith.muli %53, %c16_i64 : i64
    %92 = tt.make_range {end = 16 : i32, start = 0 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %93 = tt.make_range {end = 16 : i32, start = 0 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %94 = arith.extsi %92 : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> to tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %95 = arith.extsi %93 : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %96 = tt.splat %91 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %97 = tt.splat %91 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %98 = arith.addi %96, %94 : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %99 = arith.addi %97, %95 : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %100 = arith.extsi %arg17 : i32 to i64
    %101 = tt.splat %100 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %102 = tt.splat %100 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %103 = arith.remsi %98, %101 {tt.contiguity = dense<16> : tensor<1xi32>, tt.divisibility = dense<16> : tensor<1xi32>} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %104 = arith.remsi %99, %102 {tt.contiguity = dense<16> : tensor<1xi32>, tt.divisibility = dense<16> : tensor<1xi32>} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %105 = tt.splat %90 : !tt.ptr<i8> -> tensor<1x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %106 = tt.splat %90 : !tt.ptr<i8> -> tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %107 = tt.addptr %105, %83 : tensor<1x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>, tensor<1x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %108 = tt.addptr %106, %84 : tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %109 = tt.expand_dims %103 {axis = 1 : i32} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> -> tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %110 = tt.expand_dims %104 {axis = 1 : i32} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %111 = arith.extsi %arg12 : i32 to i64
    %112 = tt.splat %111 : i64 -> tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %113 = tt.splat %111 : i64 -> tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %114 = arith.muli %109, %112 : tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %115 = arith.muli %110, %113 : tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %116 = tt.broadcast %107 : tensor<1x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>> -> tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %117 = tt.broadcast %108 : tensor<1x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %118 = tt.broadcast %114 : tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>> -> tensor<16x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %119 = tt.broadcast %115 : tensor<16x1xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<16x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %120 = tt.addptr %116, %118 : tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>, tensor<16x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %121 = tt.addptr %117, %119 : tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256xi64, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %122 = arith.muli %53, %c512_i64 : i64
    %123 = tt.make_range {end = 512 : i32, start = 0 : i32} : tensor<512xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %124 = tt.make_range {end = 512 : i32, start = 0 : i32} : tensor<512xi32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %125 = arith.extsi %123 : tensor<512xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> to tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %126 = arith.extsi %124 : tensor<512xi32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> to tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %127 = tt.splat %122 : i64 -> tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %128 = tt.splat %122 : i64 -> tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %129 = arith.addi %127, %125 : tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %130 = arith.addi %128, %126 : tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %131 = tt.splat %100 : i64 -> tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %132 = tt.splat %100 : i64 -> tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %133 = arith.remsi %129, %131 {tt.contiguity = dense<512> : tensor<1xi32>, tt.divisibility = dense<512> : tensor<1xi32>} : tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %134 = arith.extsi %arg8 : i32 to i64
    %135 = arith.muli %50, %134 : i64
    %136 = tt.addptr %arg7, %135 : !tt.ptr<i8>, i64
    %137 = tt.expand_dims %58 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %138 = tt.expand_dims %133 {axis = 0 : i32} : tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> -> tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %139 = arith.extsi %arg9 : i32 to i64
    %140 = tt.splat %139 : i64 -> tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %141 = arith.muli %138, %140 : tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %142 = tt.broadcast %137 : tensor<128x1xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %143 = tt.broadcast %141 : tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %144 = arith.addi %142, %143 : tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %145 = tt.splat %136 : !tt.ptr<i8> -> tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %146 = tt.addptr %145, %144 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %147 = arith.addi %arg18, %c255_i32 : i32
    %148 = arith.divsi %147, %c256_i32 : i32
    %149:5 = scf.for %arg28 = %c0_i32 to %148 step %c1_i32 iter_args(%arg29 = %cst_0, %arg30 = %87, %arg31 = %146, %arg32 = %121, %arg33 = %120) -> (tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>)  : i32 {
      %209 = tt.load %arg30 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %210 = tt.load %arg31 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
      %211 = tt.load %arg33 {cheap = true} : tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
      %212 = tt.reshape %211 : tensor<16x256xi8, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>> -> tensor<16x1x4x16x2x2x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 1, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 0, 1, 0, 0, 0], [0, 0, 0, 2, 0, 0, 0], [0, 0, 0, 4, 0, 0, 0], [0, 0, 0, 8, 0, 0, 0], [0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>>
      %213 = tt.trans %212 {order = array<i32: 0, 4, 3, 1, 5, 2, 6>} : tensor<16x1x4x16x2x2x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 1, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 0, 1, 0, 0, 0], [0, 0, 0, 2, 0, 0, 0], [0, 0, 0, 4, 0, 0, 0], [0, 0, 0, 8, 0, 0, 0], [0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>> -> tensor<16x2x16x1x2x4x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 1, 0, 0], [0, 1, 0, 0, 0, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0], [0, 0, 4, 0, 0, 0, 0], [0, 0, 8, 0, 0, 0, 0], [0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 0, 2, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>>
      %214 = tt.reshape %213 : tensor<16x2x16x1x2x4x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 1, 0, 0], [0, 1, 0, 0, 0, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0], [0, 0, 4, 0, 0, 0, 0], [0, 0, 8, 0, 0, 0, 0], [0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 0, 2, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>> -> tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>>
      %215 = ttg.convert_layout %209 : tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
      %216 = ttg.convert_layout %210 : tensor<128x512xi8, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
      %217 = tt.dot_scaled %215 scale %cst_6, %216 scale %214, %arg29 lhs = e4m3 rhs = e2m1 {fastMath = true} : tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>, tensor<128x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[0, 0], [0, 0], [0, 0]], block = []}>> * tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>, tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>> -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
      %218 = tt.addptr %arg33, %cst_9 : tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>, tensor<16x256xi32, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
      %219 = tt.addptr %arg32, %cst_8 : tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256xi32, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %220 = tt.addptr %arg30, %cst_5 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %221 = tt.addptr %arg31, %cst_4 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<128x512xi32, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
      scf.yield %217, %220, %221, %219, %218 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [1, 8], threadsPerWarp = [2, 32], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    }
    %150 = tt.load %arg13 : !tt.ptr<f32>
    %151 = tt.splat %150 : f32 -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %152 = arith.mulf %149#0, %151 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %153 = arith.cmpi slt, %60, %62 : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %154 = arith.cmpi slt, %130, %132 : tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %155 = arith.extsi %arg16 : i32 to i64
    %156 = arith.muli %50, %155 : i64
    %157 = tt.addptr %arg15, %156 : !tt.ptr<f32>, i64
    %158 = tt.splat %157 : !tt.ptr<f32> -> tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %159 = tt.addptr %158, %130 : tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>, tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %160 = tt.load %159, %154, %cst_1 : tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %161 = ttg.convert_layout %160 : tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> -> tensor<512xf32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>>
    %162 = tt.expand_dims %161 {axis = 0 : i32} : tensor<512xf32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>> -> tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>>
    %163 = ttg.convert_layout %162 : tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> -> tensor<1x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %164 = tt.broadcast %163 : tensor<1x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>> -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %165 = arith.addf %152, %164 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %166 = tt.reshape %165 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>> -> tensor<128x256x2xf32, #ttg.linear<{register = [[0, 0, 1], [0, 1, 0], [0, 8, 0], [0, 128, 0], [16, 0, 0], [32, 0, 0], [64, 0, 0]], lane = [[1, 0, 0], [2, 0, 0], [4, 0, 0], [8, 0, 0], [0, 2, 0], [0, 4, 0]], warp = [[0, 16, 0], [0, 32, 0], [0, 64, 0]], block = []}>>
    %outLHS, %outRHS = tt.split %166 : tensor<128x256x2xf32, #ttg.linear<{register = [[0, 0, 1], [0, 1, 0], [0, 8, 0], [0, 128, 0], [16, 0, 0], [32, 0, 0], [64, 0, 0]], lane = [[1, 0, 0], [2, 0, 0], [4, 0, 0], [8, 0, 0], [0, 2, 0], [0, 4, 0]], warp = [[0, 16, 0], [0, 32, 0], [0, 64, 0]], block = []}>> -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %167 = tt.splat %arg27 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %168 = tt.splat %arg27 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %169 = arith.minnumf %outLHS, %168 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %170 = arith.minnumf %outRHS, %167 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %171 = arith.subf %cst_2, %arg27 : f32
    %172 = tt.splat %171 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %173 = arith.maxnumf %172, %170 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %174 = arith.mulf %arg26, %cst_3 : f32
    %175 = tt.splat %174 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %176 = arith.mulf %175, %169 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %177 = math.exp2 %176 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %178 = arith.addf %177, %cst : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %179 = arith.divf %169, %178 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %180 = math.fma %179, %173, %179 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %181 = arith.muli %53, %c256_i64 : i64
    %182 = tt.splat %181 : i64 -> tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %183 = arith.addi %182, %72 : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %184 = arith.extsi %12 : i32 to i64
    %185 = tt.splat %184 : i64 -> tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %186 = arith.cmpi slt, %183, %185 : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %187 = tt.load %arg14 : !tt.ptr<f32>
    %188 = tt.splat %187 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %189 = arith.divf %180, %188 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %190 = tt.fp_to_fp %189, rounding = rtne : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %191 = ttg.convert_layout %190 : tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %192 = arith.extsi %arg2 : i32 to i64
    %193 = arith.muli %52, %192 : i64
    %194 = tt.addptr %arg0, %193 : !tt.ptr<f8E4M3FN>, i64
    %195 = tt.expand_dims %60 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %196 = tt.splat %192 : i64 -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %197 = arith.muli %195, %196 : tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %198 = tt.splat %194 : !tt.ptr<f8E4M3FN> -> tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %199 = tt.addptr %198, %197 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %200 = tt.expand_dims %183 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %201 = tt.broadcast %199 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %202 = tt.broadcast %200 : tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %203 = tt.addptr %201, %202 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %204 = tt.expand_dims %153 {axis = 1 : i32} : tensor<128xi1, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<128x1xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %205 = tt.expand_dims %186 {axis = 0 : i32} : tensor<256xi1, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %206 = tt.broadcast %204 : tensor<128x1xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %207 = tt.broadcast %205 : tensor<1x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %208 = arith.andi %206, %207 : tensor<128x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    tt.store %203, %191, %208 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    tt.return
  }
}
[tritongpu-remove-layout-conversions]: Module after final cleanups:
module attributes {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 8 : i32, ttg.target = "hip:gfx950", "ttg.threads-per-warp" = 64 : i32} {
  tt.func public @_moe_gemm_a8w4(%arg0: !tt.ptr<f8E4M3FN> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg1: i32 {tt.divisibility = 16 : i32}, %arg2: i32 {tt.divisibility = 16 : i32}, %arg3: !tt.ptr<f8E4M3FN> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg4: i32 {tt.divisibility = 16 : i32}, %arg5: i32 {tt.divisibility = 16 : i32}, %arg6: i32 {tt.divisibility = 16 : i32}, %arg7: !tt.ptr<i8> {tt.divisibility = 16 : i32}, %arg8: i32 {tt.divisibility = 16 : i32}, %arg9: i32 {tt.divisibility = 16 : i32}, %arg10: !tt.ptr<i8> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg11: i32 {tt.divisibility = 16 : i32}, %arg12: i32 {tt.divisibility = 16 : i32}, %arg13: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg14: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg15: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg16: i32 {tt.divisibility = 16 : i32}, %arg17: i32 {tt.divisibility = 16 : i32}, %arg18: i32 {tt.divisibility = 16 : i32}, %arg19: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg20: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg21: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg22: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg23: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg24: i32, %arg25: i32, %arg26: f32, %arg27: f32) attributes {noinline = false} {
    %cst = arith.constant dense<1.000000e+00> : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %c255_i32 = arith.constant 255 : i32
    %c256_i32 = arith.constant 256 : i32
    %c4_i32 = arith.constant 4 : i32
    %c8_i32 = arith.constant 8 : i32
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %c1_i32 = arith.constant 1 : i32
    %c512_i64 = arith.constant 512 : i64
    %c16_i64 = arith.constant 16 : i64
    %c256_i64 = arith.constant 256 : i64
    %c128_i64 = arith.constant 128 : i64
    %c16_i32 = arith.constant 16 : i32
    %c65535_i32 = arith.constant 65535 : i32
    %c-1_i32 = arith.constant -1 : i32
    %c2_i32 = arith.constant 2 : i32
    %true = arith.constant true
    %c0_i32 = arith.constant 0 : i32
    %cst_2 = arith.constant 0.000000e+00 : f32
    %cst_3 = arith.constant -1.44269502 : f32
    %cst_4 = arith.constant dense<128> : tensor<128x512xi32, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %cst_5 = arith.constant dense<256> : tensor<128x256xi32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %cst_6 = arith.constant dense<127> : tensor<128x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[0, 0], [0, 0], [0, 0]], block = []}>>
    %cst_7 = arith.constant dense<8> : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %cst_8 = arith.constant dense<256> : tensor<16x256xi32, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
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
    %55 = tt.make_range {end = 128 : i32, start = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %56 = tt.make_range {end = 128 : i32, start = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %57 = arith.extsi %55 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %58 = arith.extsi %56 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %59 = tt.splat %54 : i64 -> tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %60 = arith.addi %59, %57 : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %61 = arith.extsi %47 : i32 to i64
    %62 = tt.splat %61 : i64 -> tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %63 = arith.remsi %60, %62 {tt.contiguity = dense<128> : tensor<1xi32>, tt.divisibility = dense<128> : tensor<1xi32>} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %64 = tt.addptr %arg19, %52 : !tt.ptr<i32>, i64
    %65 = tt.splat %64 : !tt.ptr<i32> -> tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %66 = tt.addptr %65, %63 : tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>, tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %67 = tt.load %66 : tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %68 = arith.divsi %67, %cst_7 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %69 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %70 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %71 = arith.extsi %69 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %72 = arith.extsi %70 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %73 = arith.extsi %68 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %74 = tt.expand_dims %73 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %75 = arith.extsi %arg4 : i32 to i64
    %76 = tt.splat %75 : i64 -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %77 = arith.muli %74, %76 : tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %78 = tt.splat %arg3 : !tt.ptr<f8E4M3FN> -> tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %79 = tt.addptr %78, %77 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %80 = tt.expand_dims %71 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %81 = tt.expand_dims %72 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> -> tensor<1x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %82 = tt.broadcast %79 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %83 = tt.broadcast %80 : tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %84 = tt.addptr %82, %83 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %85 = arith.extsi %arg11 : i32 to i64
    %86 = arith.muli %50, %85 : i64
    %87 = tt.addptr %arg10, %86 : !tt.ptr<i8>, i64
    %88 = arith.muli %53, %c16_i64 : i64
    %89 = tt.make_range {end = 16 : i32, start = 0 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %90 = arith.extsi %89 : tensor<16xi32, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> to tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %91 = tt.splat %88 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %92 = arith.addi %91, %90 : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %93 = arith.extsi %arg17 : i32 to i64
    %94 = tt.splat %93 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %95 = arith.remsi %92, %94 {tt.contiguity = dense<16> : tensor<1xi32>, tt.divisibility = dense<16> : tensor<1xi32>} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>>
    %96 = tt.splat %87 : !tt.ptr<i8> -> tensor<1x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %97 = tt.addptr %96, %81 : tensor<1x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>, tensor<1x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %98 = tt.expand_dims %95 {axis = 1 : i32} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>}>> -> tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %99 = arith.extsi %arg12 : i32 to i64
    %100 = tt.splat %99 : i64 -> tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %101 = arith.muli %98, %100 : tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %102 = tt.broadcast %97 : tensor<1x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>> -> tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %103 = tt.broadcast %101 : tensor<16x1xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>> -> tensor<16x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %104 = tt.addptr %102, %103 : tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>, tensor<16x256xi64, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    %105 = arith.muli %53, %c512_i64 : i64
    %106 = tt.make_range {end = 512 : i32, start = 0 : i32} : tensor<512xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %107 = tt.make_range {end = 512 : i32, start = 0 : i32} : tensor<512xi32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %108 = arith.extsi %106 : tensor<512xi32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> to tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %109 = arith.extsi %107 : tensor<512xi32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> to tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %110 = tt.splat %105 : i64 -> tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %111 = tt.splat %105 : i64 -> tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %112 = arith.addi %110, %108 : tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %113 = arith.addi %111, %109 : tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %114 = tt.splat %93 : i64 -> tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %115 = tt.splat %93 : i64 -> tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %116 = arith.remsi %112, %114 {tt.contiguity = dense<512> : tensor<1xi32>, tt.divisibility = dense<512> : tensor<1xi32>} : tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>>
    %117 = arith.extsi %arg8 : i32 to i64
    %118 = arith.muli %50, %117 : i64
    %119 = tt.addptr %arg7, %118 : !tt.ptr<i8>, i64
    %120 = tt.expand_dims %58 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %121 = tt.expand_dims %116 {axis = 0 : i32} : tensor<512xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>}>> -> tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %122 = arith.extsi %arg9 : i32 to i64
    %123 = tt.splat %122 : i64 -> tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %124 = arith.muli %121, %123 : tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %125 = tt.broadcast %120 : tensor<128x1xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %126 = tt.broadcast %124 : tensor<1x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %127 = arith.addi %125, %126 : tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %128 = tt.splat %119 : !tt.ptr<i8> -> tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %129 = tt.addptr %128, %127 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<128x512xi64, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
    %130 = arith.addi %arg18, %c255_i32 : i32
    %131 = arith.divsi %130, %c256_i32 : i32
    %132:4 = scf.for %arg28 = %c0_i32 to %131 step %c1_i32 iter_args(%arg29 = %cst_0, %arg30 = %84, %arg31 = %129, %arg32 = %104) -> (tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>)  : i32 {
      %192 = tt.load %arg30 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %193 = tt.load %arg31 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
      %194 = tt.load %arg32 {cheap = true} : tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
      %195 = tt.reshape %194 : tensor<16x256xi8, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>> -> tensor<16x1x4x16x2x2x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 1, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 0, 1, 0, 0, 0], [0, 0, 0, 2, 0, 0, 0], [0, 0, 0, 4, 0, 0, 0], [0, 0, 0, 8, 0, 0, 0], [0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>>
      %196 = tt.trans %195 {order = array<i32: 0, 4, 3, 1, 5, 2, 6>} : tensor<16x1x4x16x2x2x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 1, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 0, 1, 0, 0, 0], [0, 0, 0, 2, 0, 0, 0], [0, 0, 0, 4, 0, 0, 0], [0, 0, 0, 8, 0, 0, 0], [0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>> -> tensor<16x2x16x1x2x4x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 1, 0, 0], [0, 1, 0, 0, 0, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0], [0, 0, 4, 0, 0, 0, 0], [0, 0, 8, 0, 0, 0, 0], [0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 0, 2, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>>
      %197 = tt.reshape %196 : tensor<16x2x16x1x2x4x1xi8, #ttg.linear<{register = [[0, 0, 0, 0, 1, 0, 0], [0, 1, 0, 0, 0, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0], [0, 0, 4, 0, 0, 0, 0], [0, 0, 8, 0, 0, 0, 0], [0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 0, 2, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>> -> tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>>
      %198 = ttg.convert_layout %192 : tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
      %199 = ttg.convert_layout %193 : tensor<128x512xi8, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>> -> tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>
      %200 = tt.dot_scaled %198 scale %cst_6, %199 scale %197, %arg29 lhs = e4m3 rhs = e2m1 {fastMath = true} : tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>, tensor<128x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[0, 0], [0, 0], [0, 0]], block = []}>> * tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>, kWidth = 16}>>, tensor<512x8xi8, #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>> -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
      %201 = tt.addptr %arg32, %cst_8 : tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>, tensor<16x256xi32, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
      %202 = tt.addptr %arg30, %cst_5 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi32, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
      %203 = tt.addptr %arg31, %cst_4 : tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<128x512xi32, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>
      scf.yield %200, %202, %203, %201 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>, tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x512x!tt.ptr<i8>, #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>>, tensor<16x256x!tt.ptr<i8>, #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>>
    }
    %133 = tt.load %arg13 : !tt.ptr<f32>
    %134 = tt.splat %133 : f32 -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %135 = arith.mulf %132#0, %134 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %136 = arith.cmpi slt, %60, %62 : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %137 = arith.cmpi slt, %113, %115 : tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %138 = arith.extsi %arg16 : i32 to i64
    %139 = arith.muli %50, %138 : i64
    %140 = tt.addptr %arg15, %139 : !tt.ptr<f32>, i64
    %141 = tt.splat %140 : !tt.ptr<f32> -> tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %142 = tt.addptr %141, %113 : tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>, tensor<512xi64, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %143 = tt.load %142, %137, %cst_1 : tensor<512x!tt.ptr<f32>, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>>
    %144 = ttg.convert_layout %143 : tensor<512xf32, #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>> -> tensor<512xf32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>>
    %145 = tt.expand_dims %144 {axis = 0 : i32} : tensor<512xf32, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>}>> -> tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>>
    %146 = ttg.convert_layout %145 : tensor<1x512xf32, #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>> -> tensor<1x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %147 = tt.broadcast %146 : tensor<1x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>> -> tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %148 = arith.addf %135, %147 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>>
    %149 = tt.reshape %148 : tensor<128x512xf32, #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>> -> tensor<128x256x2xf32, #ttg.linear<{register = [[0, 0, 1], [0, 1, 0], [0, 8, 0], [0, 128, 0], [16, 0, 0], [32, 0, 0], [64, 0, 0]], lane = [[1, 0, 0], [2, 0, 0], [4, 0, 0], [8, 0, 0], [0, 2, 0], [0, 4, 0]], warp = [[0, 16, 0], [0, 32, 0], [0, 64, 0]], block = []}>>
    %outLHS, %outRHS = tt.split %149 : tensor<128x256x2xf32, #ttg.linear<{register = [[0, 0, 1], [0, 1, 0], [0, 8, 0], [0, 128, 0], [16, 0, 0], [32, 0, 0], [64, 0, 0]], lane = [[1, 0, 0], [2, 0, 0], [4, 0, 0], [8, 0, 0], [0, 2, 0], [0, 4, 0]], warp = [[0, 16, 0], [0, 32, 0], [0, 64, 0]], block = []}>> -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %150 = tt.splat %arg27 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %151 = tt.splat %arg27 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %152 = arith.minnumf %outLHS, %151 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %153 = arith.minnumf %outRHS, %150 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %154 = arith.subf %cst_2, %arg27 : f32
    %155 = tt.splat %154 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %156 = arith.maxnumf %155, %153 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %157 = arith.mulf %arg26, %cst_3 : f32
    %158 = tt.splat %157 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %159 = arith.mulf %158, %152 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %160 = math.exp2 %159 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %161 = arith.addf %160, %cst : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %162 = arith.divf %152, %161 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %163 = math.fma %162, %156, %162 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %164 = arith.muli %53, %c256_i64 : i64
    %165 = tt.splat %164 : i64 -> tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %166 = arith.addi %165, %71 : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %167 = arith.extsi %12 : i32 to i64
    %168 = tt.splat %167 : i64 -> tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %169 = arith.cmpi slt, %166, %168 : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>>
    %170 = tt.load %arg14 : !tt.ptr<f32>
    %171 = tt.splat %170 : f32 -> tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %172 = arith.divf %163, %171 : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %173 = tt.fp_to_fp %172, rounding = rtne : tensor<128x256xf32, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>>
    %174 = ttg.convert_layout %173 : tensor<128x256xf8E4M3FN, #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>> -> tensor<128x256xf8E4M3FN, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %175 = arith.extsi %arg2 : i32 to i64
    %176 = arith.muli %52, %175 : i64
    %177 = tt.addptr %arg0, %176 : !tt.ptr<f8E4M3FN>, i64
    %178 = tt.expand_dims %60 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %179 = tt.splat %175 : i64 -> tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %180 = arith.muli %178, %179 : tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %181 = tt.splat %177 : !tt.ptr<f8E4M3FN> -> tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %182 = tt.addptr %181, %180 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x1xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %183 = tt.expand_dims %166 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %184 = tt.broadcast %182 : tensor<128x1x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %185 = tt.broadcast %183 : tensor<1x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %186 = tt.addptr %184, %185 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>, tensor<128x256xi64, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %187 = tt.expand_dims %136 {axis = 1 : i32} : tensor<128xi1, #ttg.slice<{dim = 1, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<128x1xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %188 = tt.expand_dims %169 {axis = 0 : i32} : tensor<256xi1, #ttg.slice<{dim = 0, parent = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>}>> -> tensor<1x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %189 = tt.broadcast %187 : tensor<128x1xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %190 = tt.broadcast %188 : tensor<1x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>> -> tensor<128x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    %191 = arith.andi %189, %190 : tensor<128x256xi1, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    tt.store %186, %174, %191 : tensor<128x256x!tt.ptr<f8E4M3FN>, #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>>
    tt.return
  }
}
#blocked = #ttg.blocked<{sizePerThread = [1], threadsPerWarp = [64], warpsPerCTA = [8], order = [0]}>
#blocked1 = #ttg.blocked<{sizePerThread = [16, 1], threadsPerWarp = [8, 8], warpsPerCTA = [1, 8], order = [0, 1]}>
#blocked2 = #ttg.blocked<{sizePerThread = [1, 16], threadsPerWarp = [4, 16], warpsPerCTA = [8, 1], order = [1, 0]}>
#blocked3 = #ttg.blocked<{sizePerThread = [1, 1], threadsPerWarp = [1, 64], warpsPerCTA = [1, 8], order = [1, 0]}>
#linear = #ttg.linear<{register = [[0, 1], [0, 8], [0, 128], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 2], [0, 4]], warp = [[0, 16], [0, 32], [0, 64]], block = []}>
#linear1 = #ttg.linear<{register = [[0, 4], [16, 0], [32, 0], [64, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[0, 0], [0, 0], [0, 0]], block = []}>
#linear2 = #ttg.linear<{register = [[0, 1], [0, 2], [8, 0]], lane = [[0, 4], [0, 8], [0, 16], [0, 32], [0, 64], [0, 128]], warp = [[1, 0], [2, 0], [4, 0]], block = []}>
#linear3 = #ttg.linear<{register = [[0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 1, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 0, 1, 0, 0, 0], [0, 0, 0, 2, 0, 0, 0], [0, 0, 0, 4, 0, 0, 0], [0, 0, 0, 8, 0, 0, 0], [0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>
#linear4 = #ttg.linear<{register = [[0, 0, 0, 0, 1, 0, 0], [0, 1, 0, 0, 0, 0, 0], [8, 0, 0, 0, 0, 0, 0]], lane = [[0, 0, 1, 0, 0, 0, 0], [0, 0, 2, 0, 0, 0, 0], [0, 0, 4, 0, 0, 0, 0], [0, 0, 8, 0, 0, 0, 0], [0, 0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 0, 2, 0]], warp = [[1, 0, 0, 0, 0, 0, 0], [2, 0, 0, 0, 0, 0, 0], [4, 0, 0, 0, 0, 0, 0]], block = []}>
#linear5 = #ttg.linear<{register = [[0, 4], [16, 0], [256, 0]], lane = [[1, 0], [2, 0], [4, 0], [8, 0], [0, 1], [0, 2]], warp = [[32, 0], [64, 0], [128, 0]], block = []}>
#linear6 = #ttg.linear<{register = [[0, 0, 1], [0, 1, 0], [0, 8, 0], [0, 128, 0], [16, 0, 0], [32, 0, 0], [64, 0, 0]], lane = [[1, 0, 0], [2, 0, 0], [4, 0, 0], [8, 0, 0], [0, 2, 0], [0, 4, 0]], warp = [[0, 16, 0], [0, 32, 0], [0, 64, 0]], block = []}>
#mma = #ttg.amd_mfma<{version = 4, warpsPerCTA = [1, 8], instrShape = [16, 16, 128], isTransposed = true, tilesPerWarp = [1, 2]}>
module attributes {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 8 : i32, ttg.target = "hip:gfx950", "ttg.threads-per-warp" = 64 : i32} {
  tt.func public @_moe_gemm_a8w4(%arg0: !tt.ptr<f8E4M3FN> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg1: i32 {tt.divisibility = 16 : i32}, %arg2: i32 {tt.divisibility = 16 : i32}, %arg3: !tt.ptr<f8E4M3FN> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg4: i32 {tt.divisibility = 16 : i32}, %arg5: i32 {tt.divisibility = 16 : i32}, %arg6: i32 {tt.divisibility = 16 : i32}, %arg7: !tt.ptr<i8> {tt.divisibility = 16 : i32}, %arg8: i32 {tt.divisibility = 16 : i32}, %arg9: i32 {tt.divisibility = 16 : i32}, %arg10: !tt.ptr<i8> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg11: i32 {tt.divisibility = 16 : i32}, %arg12: i32 {tt.divisibility = 16 : i32}, %arg13: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg14: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg15: !tt.ptr<f32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg16: i32 {tt.divisibility = 16 : i32}, %arg17: i32 {tt.divisibility = 16 : i32}, %arg18: i32 {tt.divisibility = 16 : i32}, %arg19: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg20: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg21: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg22: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg23: !tt.ptr<i32> {tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}, %arg24: i32, %arg25: i32, %arg26: f32, %arg27: f32) attributes {noinline = false} {
    %cst = arith.constant dense<1.000000e+00> : tensor<128x256xf32, #linear>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<128x512xf32, #mma>
    %c255_i32 = arith.constant 255 : i32
    %c256_i32 = arith.constant 256 : i32
    %c4_i32 = arith.constant 4 : i32
    %c8_i32 = arith.constant 8 : i32
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<512xf32, #blocked>
    %c1_i32 = arith.constant 1 : i32
    %c512_i64 = arith.constant 512 : i64
    %c16_i64 = arith.constant 16 : i64
    %c256_i64 = arith.constant 256 : i64
    %c128_i64 = arith.constant 128 : i64
    %c16_i32 = arith.constant 16 : i32
    %c65535_i32 = arith.constant 65535 : i32
    %c-1_i32 = arith.constant -1 : i32
    %c2_i32 = arith.constant 2 : i32
    %true = arith.constant true
    %c0_i32 = arith.constant 0 : i32
    %cst_2 = arith.constant 0.000000e+00 : f32
    %cst_3 = arith.constant -1.44269502 : f32
    %cst_4 = arith.constant dense<128> : tensor<128x512xi32, #blocked1>
    %cst_5 = arith.constant dense<256> : tensor<128x256xi32, #blocked2>
    %cst_6 = arith.constant dense<127> : tensor<128x8xi8, #linear1>
    %cst_7 = arith.constant dense<8> : tensor<128xi32, #ttg.slice<{dim = 1, parent = #blocked2}>>
    %cst_8 = arith.constant dense<256> : tensor<16x256xi32, #linear2>
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
    %55 = tt.make_range {end = 128 : i32, start = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 1, parent = #blocked2}>>
    %56 = tt.make_range {end = 128 : i32, start = 0 : i32} : tensor<128xi32, #ttg.slice<{dim = 1, parent = #blocked1}>>
    %57 = arith.extsi %55 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #blocked2}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #blocked2}>>
    %58 = arith.extsi %56 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #blocked1}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #blocked1}>>
    %59 = tt.splat %54 : i64 -> tensor<128xi64, #ttg.slice<{dim = 1, parent = #blocked2}>>
    %60 = arith.addi %59, %57 : tensor<128xi64, #ttg.slice<{dim = 1, parent = #blocked2}>>
    %61 = arith.extsi %47 : i32 to i64
    %62 = tt.splat %61 : i64 -> tensor<128xi64, #ttg.slice<{dim = 1, parent = #blocked2}>>
    %63 = arith.remsi %60, %62 {tt.contiguity = dense<128> : tensor<1xi32>, tt.divisibility = dense<128> : tensor<1xi32>} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #blocked2}>>
    %64 = tt.addptr %arg19, %52 : !tt.ptr<i32>, i64
    %65 = tt.splat %64 : !tt.ptr<i32> -> tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #blocked2}>>
    %66 = tt.addptr %65, %63 : tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #blocked2}>>, tensor<128xi64, #ttg.slice<{dim = 1, parent = #blocked2}>>
    %67 = tt.load %66 : tensor<128x!tt.ptr<i32>, #ttg.slice<{dim = 1, parent = #blocked2}>>
    %68 = arith.divsi %67, %cst_7 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #blocked2}>>
    %69 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #blocked2}>>
    %70 = tt.make_range {end = 256 : i32, start = 0 : i32} : tensor<256xi32, #ttg.slice<{dim = 0, parent = #linear2}>>
    %71 = arith.extsi %69 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #blocked2}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #blocked2}>>
    %72 = arith.extsi %70 : tensor<256xi32, #ttg.slice<{dim = 0, parent = #linear2}>> to tensor<256xi64, #ttg.slice<{dim = 0, parent = #linear2}>>
    %73 = arith.extsi %68 : tensor<128xi32, #ttg.slice<{dim = 1, parent = #blocked2}>> to tensor<128xi64, #ttg.slice<{dim = 1, parent = #blocked2}>>
    %74 = tt.expand_dims %73 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #blocked2}>> -> tensor<128x1xi64, #blocked2>
    %75 = arith.extsi %arg4 : i32 to i64
    %76 = tt.splat %75 : i64 -> tensor<128x1xi64, #blocked2>
    %77 = arith.muli %74, %76 : tensor<128x1xi64, #blocked2>
    %78 = tt.splat %arg3 : !tt.ptr<f8E4M3FN> -> tensor<128x1x!tt.ptr<f8E4M3FN>, #blocked2>
    %79 = tt.addptr %78, %77 : tensor<128x1x!tt.ptr<f8E4M3FN>, #blocked2>, tensor<128x1xi64, #blocked2>
    %80 = tt.expand_dims %71 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #blocked2}>> -> tensor<1x256xi64, #blocked2>
    %81 = tt.expand_dims %72 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #linear2}>> -> tensor<1x256xi64, #linear2>
    %82 = tt.broadcast %79 : tensor<128x1x!tt.ptr<f8E4M3FN>, #blocked2> -> tensor<128x256x!tt.ptr<f8E4M3FN>, #blocked2>
    %83 = tt.broadcast %80 : tensor<1x256xi64, #blocked2> -> tensor<128x256xi64, #blocked2>
    %84 = tt.addptr %82, %83 : tensor<128x256x!tt.ptr<f8E4M3FN>, #blocked2>, tensor<128x256xi64, #blocked2>
    %85 = arith.extsi %arg11 : i32 to i64
    %86 = arith.muli %50, %85 : i64
    %87 = tt.addptr %arg10, %86 : !tt.ptr<i8>, i64
    %88 = arith.muli %53, %c16_i64 : i64
    %89 = tt.make_range {end = 16 : i32, start = 0 : i32} : tensor<16xi32, #ttg.slice<{dim = 1, parent = #linear2}>>
    %90 = arith.extsi %89 : tensor<16xi32, #ttg.slice<{dim = 1, parent = #linear2}>> to tensor<16xi64, #ttg.slice<{dim = 1, parent = #linear2}>>
    %91 = tt.splat %88 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #linear2}>>
    %92 = arith.addi %91, %90 : tensor<16xi64, #ttg.slice<{dim = 1, parent = #linear2}>>
    %93 = arith.extsi %arg17 : i32 to i64
    %94 = tt.splat %93 : i64 -> tensor<16xi64, #ttg.slice<{dim = 1, parent = #linear2}>>
    %95 = arith.remsi %92, %94 {tt.contiguity = dense<16> : tensor<1xi32>, tt.divisibility = dense<16> : tensor<1xi32>} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #linear2}>>
    %96 = tt.splat %87 : !tt.ptr<i8> -> tensor<1x256x!tt.ptr<i8>, #linear2>
    %97 = tt.addptr %96, %81 : tensor<1x256x!tt.ptr<i8>, #linear2>, tensor<1x256xi64, #linear2>
    %98 = tt.expand_dims %95 {axis = 1 : i32} : tensor<16xi64, #ttg.slice<{dim = 1, parent = #linear2}>> -> tensor<16x1xi64, #linear2>
    %99 = arith.extsi %arg12 : i32 to i64
    %100 = tt.splat %99 : i64 -> tensor<16x1xi64, #linear2>
    %101 = arith.muli %98, %100 : tensor<16x1xi64, #linear2>
    %102 = tt.broadcast %97 : tensor<1x256x!tt.ptr<i8>, #linear2> -> tensor<16x256x!tt.ptr<i8>, #linear2>
    %103 = tt.broadcast %101 : tensor<16x1xi64, #linear2> -> tensor<16x256xi64, #linear2>
    %104 = tt.addptr %102, %103 : tensor<16x256x!tt.ptr<i8>, #linear2>, tensor<16x256xi64, #linear2>
    %105 = arith.muli %53, %c512_i64 : i64
    %106 = tt.make_range {end = 512 : i32, start = 0 : i32} : tensor<512xi32, #ttg.slice<{dim = 0, parent = #blocked1}>>
    %107 = tt.make_range {end = 512 : i32, start = 0 : i32} : tensor<512xi32, #blocked>
    %108 = arith.extsi %106 : tensor<512xi32, #ttg.slice<{dim = 0, parent = #blocked1}>> to tensor<512xi64, #ttg.slice<{dim = 0, parent = #blocked1}>>
    %109 = arith.extsi %107 : tensor<512xi32, #blocked> to tensor<512xi64, #blocked>
    %110 = tt.splat %105 : i64 -> tensor<512xi64, #ttg.slice<{dim = 0, parent = #blocked1}>>
    %111 = tt.splat %105 : i64 -> tensor<512xi64, #blocked>
    %112 = arith.addi %110, %108 : tensor<512xi64, #ttg.slice<{dim = 0, parent = #blocked1}>>
    %113 = arith.addi %111, %109 : tensor<512xi64, #blocked>
    %114 = tt.splat %93 : i64 -> tensor<512xi64, #ttg.slice<{dim = 0, parent = #blocked1}>>
    %115 = tt.splat %93 : i64 -> tensor<512xi64, #blocked>
    %116 = arith.remsi %112, %114 {tt.contiguity = dense<512> : tensor<1xi32>, tt.divisibility = dense<512> : tensor<1xi32>} : tensor<512xi64, #ttg.slice<{dim = 0, parent = #blocked1}>>
    %117 = arith.extsi %arg8 : i32 to i64
    %118 = arith.muli %50, %117 : i64
    %119 = tt.addptr %arg7, %118 : !tt.ptr<i8>, i64
    %120 = tt.expand_dims %58 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #blocked1}>> -> tensor<128x1xi64, #blocked1>
    %121 = tt.expand_dims %116 {axis = 0 : i32} : tensor<512xi64, #ttg.slice<{dim = 0, parent = #blocked1}>> -> tensor<1x512xi64, #blocked1>
    %122 = arith.extsi %arg9 : i32 to i64
    %123 = tt.splat %122 : i64 -> tensor<1x512xi64, #blocked1>
    %124 = arith.muli %121, %123 : tensor<1x512xi64, #blocked1>
    %125 = tt.broadcast %120 : tensor<128x1xi64, #blocked1> -> tensor<128x512xi64, #blocked1>
    %126 = tt.broadcast %124 : tensor<1x512xi64, #blocked1> -> tensor<128x512xi64, #blocked1>
    %127 = arith.addi %125, %126 : tensor<128x512xi64, #blocked1>
    %128 = tt.splat %119 : !tt.ptr<i8> -> tensor<128x512x!tt.ptr<i8>, #blocked1>
    %129 = tt.addptr %128, %127 : tensor<128x512x!tt.ptr<i8>, #blocked1>, tensor<128x512xi64, #blocked1>
    %130 = arith.addi %arg18, %c255_i32 : i32
    %131 = arith.divsi %130, %c256_i32 : i32
    %132:4 = scf.for %arg28 = %c0_i32 to %131 step %c1_i32 iter_args(%arg29 = %cst_0, %arg30 = %84, %arg31 = %129, %arg32 = %104) -> (tensor<128x512xf32, #mma>, tensor<128x256x!tt.ptr<f8E4M3FN>, #blocked2>, tensor<128x512x!tt.ptr<i8>, #blocked1>, tensor<16x256x!tt.ptr<i8>, #linear2>)  : i32 {
      %192 = tt.load %arg30 : tensor<128x256x!tt.ptr<f8E4M3FN>, #blocked2>
      %193 = tt.load %arg31 : tensor<128x512x!tt.ptr<i8>, #blocked1>
      %194 = tt.load %arg32 {cheap = true} : tensor<16x256x!tt.ptr<i8>, #linear2>
      %195 = tt.reshape %194 : tensor<16x256xi8, #linear2> -> tensor<16x1x4x16x2x2x1xi8, #linear3>
      %196 = tt.trans %195 {order = array<i32: 0, 4, 3, 1, 5, 2, 6>} : tensor<16x1x4x16x2x2x1xi8, #linear3> -> tensor<16x2x16x1x2x4x1xi8, #linear4>
      %197 = tt.reshape %196 : tensor<16x2x16x1x2x4x1xi8, #linear4> -> tensor<512x8xi8, #linear5>
      %198 = ttg.convert_layout %192 : tensor<128x256xf8E4M3FN, #blocked2> -> tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #mma, kWidth = 16}>>
      %199 = ttg.convert_layout %193 : tensor<128x512xi8, #blocked1> -> tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #mma, kWidth = 16}>>
      %200 = tt.dot_scaled %198 scale %cst_6, %199 scale %197, %arg29 lhs = e4m3 rhs = e2m1 {fastMath = true} : tensor<128x256xf8E4M3FN, #ttg.dot_op<{opIdx = 0, parent = #mma, kWidth = 16}>>, tensor<128x8xi8, #linear1> * tensor<128x512xi8, #ttg.dot_op<{opIdx = 1, parent = #mma, kWidth = 16}>>, tensor<512x8xi8, #linear5> -> tensor<128x512xf32, #mma>
      %201 = tt.addptr %arg32, %cst_8 : tensor<16x256x!tt.ptr<i8>, #linear2>, tensor<16x256xi32, #linear2>
      %202 = tt.addptr %arg30, %cst_5 : tensor<128x256x!tt.ptr<f8E4M3FN>, #blocked2>, tensor<128x256xi32, #blocked2>
      %203 = tt.addptr %arg31, %cst_4 : tensor<128x512x!tt.ptr<i8>, #blocked1>, tensor<128x512xi32, #blocked1>
      scf.yield %200, %202, %203, %201 : tensor<128x512xf32, #mma>, tensor<128x256x!tt.ptr<f8E4M3FN>, #blocked2>, tensor<128x512x!tt.ptr<i8>, #blocked1>, tensor<16x256x!tt.ptr<i8>, #linear2>
    }
    %133 = tt.load %arg13 : !tt.ptr<f32>
    %134 = tt.splat %133 : f32 -> tensor<128x512xf32, #mma>
    %135 = arith.mulf %132#0, %134 : tensor<128x512xf32, #mma>
    %136 = arith.cmpi slt, %60, %62 : tensor<128xi64, #ttg.slice<{dim = 1, parent = #blocked2}>>
    %137 = arith.cmpi slt, %113, %115 : tensor<512xi64, #blocked>
    %138 = arith.extsi %arg16 : i32 to i64
    %139 = arith.muli %50, %138 : i64
    %140 = tt.addptr %arg15, %139 : !tt.ptr<f32>, i64
    %141 = tt.splat %140 : !tt.ptr<f32> -> tensor<512x!tt.ptr<f32>, #blocked>
    %142 = tt.addptr %141, %113 : tensor<512x!tt.ptr<f32>, #blocked>, tensor<512xi64, #blocked>
    %143 = tt.load %142, %137, %cst_1 : tensor<512x!tt.ptr<f32>, #blocked>
    %144 = ttg.convert_layout %143 : tensor<512xf32, #blocked> -> tensor<512xf32, #ttg.slice<{dim = 0, parent = #blocked3}>>
    %145 = tt.expand_dims %144 {axis = 0 : i32} : tensor<512xf32, #ttg.slice<{dim = 0, parent = #blocked3}>> -> tensor<1x512xf32, #blocked3>
    %146 = ttg.convert_layout %145 : tensor<1x512xf32, #blocked3> -> tensor<1x512xf32, #mma>
    %147 = tt.broadcast %146 : tensor<1x512xf32, #mma> -> tensor<128x512xf32, #mma>
    %148 = arith.addf %135, %147 : tensor<128x512xf32, #mma>
    %149 = tt.reshape %148 : tensor<128x512xf32, #mma> -> tensor<128x256x2xf32, #linear6>
    %outLHS, %outRHS = tt.split %149 : tensor<128x256x2xf32, #linear6> -> tensor<128x256xf32, #linear>
    %150 = tt.splat %arg27 : f32 -> tensor<128x256xf32, #linear>
    %151 = tt.splat %arg27 : f32 -> tensor<128x256xf32, #linear>
    %152 = arith.minnumf %outLHS, %151 : tensor<128x256xf32, #linear>
    %153 = arith.minnumf %outRHS, %150 : tensor<128x256xf32, #linear>
    %154 = arith.subf %cst_2, %arg27 : f32
    %155 = tt.splat %154 : f32 -> tensor<128x256xf32, #linear>
    %156 = arith.maxnumf %155, %153 : tensor<128x256xf32, #linear>
    %157 = arith.mulf %arg26, %cst_3 : f32
    %158 = tt.splat %157 : f32 -> tensor<128x256xf32, #linear>
    %159 = arith.mulf %158, %152 : tensor<128x256xf32, #linear>
    %160 = math.exp2 %159 : tensor<128x256xf32, #linear>
    %161 = arith.addf %160, %cst : tensor<128x256xf32, #linear>
    %162 = arith.divf %152, %161 : tensor<128x256xf32, #linear>
    %163 = math.fma %162, %156, %162 : tensor<128x256xf32, #linear>
    %164 = arith.muli %53, %c256_i64 : i64
    %165 = tt.splat %164 : i64 -> tensor<256xi64, #ttg.slice<{dim = 0, parent = #blocked2}>>
    %166 = arith.addi %165, %71 : tensor<256xi64, #ttg.slice<{dim = 0, parent = #blocked2}>>
    %167 = arith.extsi %12 : i32 to i64
    %168 = tt.splat %167 : i64 -> tensor<256xi64, #ttg.slice<{dim = 0, parent = #blocked2}>>
    %169 = arith.cmpi slt, %166, %168 : tensor<256xi64, #ttg.slice<{dim = 0, parent = #blocked2}>>
    %170 = tt.load %arg14 : !tt.ptr<f32>
    %171 = tt.splat %170 : f32 -> tensor<128x256xf32, #linear>
    %172 = arith.divf %163, %171 : tensor<128x256xf32, #linear>
    %173 = tt.fp_to_fp %172, rounding = rtne : tensor<128x256xf32, #linear> -> tensor<128x256xf8E4M3FN, #linear>
    %174 = ttg.convert_layout %173 : tensor<128x256xf8E4M3FN, #linear> -> tensor<128x256xf8E4M3FN, #blocked2>
    %175 = arith.extsi %arg2 : i32 to i64
    %176 = arith.muli %52, %175 : i64
    %177 = tt.addptr %arg0, %176 : !tt.ptr<f8E4M3FN>, i64
    %178 = tt.expand_dims %60 {axis = 1 : i32} : tensor<128xi64, #ttg.slice<{dim = 1, parent = #blocked2}>> -> tensor<128x1xi64, #blocked2>
    %179 = tt.splat %175 : i64 -> tensor<128x1xi64, #blocked2>
    %180 = arith.muli %178, %179 : tensor<128x1xi64, #blocked2>
    %181 = tt.splat %177 : !tt.ptr<f8E4M3FN> -> tensor<128x1x!tt.ptr<f8E4M3FN>, #blocked2>
    %182 = tt.addptr %181, %180 : tensor<128x1x!tt.ptr<f8E4M3FN>, #blocked2>, tensor<128x1xi64, #blocked2>
    %183 = tt.expand_dims %166 {axis = 0 : i32} : tensor<256xi64, #ttg.slice<{dim = 0, parent = #blocked2}>> -> tensor<1x256xi64, #blocked2>
    %184 = tt.broadcast %182 : tensor<128x1x!tt.ptr<f8E4M3FN>, #blocked2> -> tensor<128x256x!tt.ptr<f8E4M3FN>, #blocked2>
    %185 = tt.broadcast %183 : tensor<1x256xi64, #blocked2> -> tensor<128x256xi64, #blocked2>
    %186 = tt.addptr %184, %185 : tensor<128x256x!tt.ptr<f8E4M3FN>, #blocked2>, tensor<128x256xi64, #blocked2>
    %187 = tt.expand_dims %136 {axis = 1 : i32} : tensor<128xi1, #ttg.slice<{dim = 1, parent = #blocked2}>> -> tensor<128x1xi1, #blocked2>
    %188 = tt.expand_dims %169 {axis = 0 : i32} : tensor<256xi1, #ttg.slice<{dim = 0, parent = #blocked2}>> -> tensor<1x256xi1, #blocked2>
    %189 = tt.broadcast %187 : tensor<128x1xi1, #blocked2> -> tensor<128x256xi1, #blocked2>
    %190 = tt.broadcast %188 : tensor<1x256xi1, #blocked2> -> tensor<128x256xi1, #blocked2>
    %191 = arith.andi %189, %190 : tensor<128x256xi1, #blocked2>
    tt.store %186, %174, %191 : tensor<128x256x!tt.ptr<f8E4M3FN>, #blocked2>
    tt.return
  }
}

