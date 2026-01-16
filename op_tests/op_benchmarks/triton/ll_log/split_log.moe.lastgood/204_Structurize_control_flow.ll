*** IR Dump After Structurize control flow (structurizecfg) ***
518:                                              ; preds = %514, %512
  %.tc335 = phi i32 [ %largephi.extractslice01.bc, %514 ], [ 0, %512 ]
  %.tc334 = phi i32 [ %largephi.extractslice22.bc, %514 ], [ 0, %512 ]
  %.tc333 = phi i32 [ %largephi.extractslice43.bc, %514 ], [ 0, %512 ]
  %.tc332 = phi i32 [ %largephi.extractslice64.bc, %514 ], [ 0, %512 ]
  %519 = mul i64 %424, %506
  br i1 %340, label %520, label %524

520:                                              ; preds = %518
  %521 = getelementptr i8, ptr addrspace(1) %505, i64 %519
  %522 = getelementptr i8, ptr addrspace(1) %521, i64 %502
  %523 = load <16 x i8>, ptr addrspace(1) %522, align 16
  %largephi.extractslice09 = shufflevector <16 x i8> %523, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %largephi.extractslice09.bc = bitcast <4 x i8> %largephi.extractslice09 to i32
  %largephi.extractslice210 = shufflevector <16 x i8> %523, <16 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %largephi.extractslice210.bc = bitcast <4 x i8> %largephi.extractslice210 to i32
  %largephi.extractslice411 = shufflevector <16 x i8> %523, <16 x i8> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %largephi.extractslice411.bc = bitcast <4 x i8> %largephi.extractslice411 to i32
  %largephi.extractslice612 = shufflevector <16 x i8> %523, <16 x i8> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %largephi.extractslice612.bc = bitcast <4 x i8> %largephi.extractslice612 to i32
  br label %524
