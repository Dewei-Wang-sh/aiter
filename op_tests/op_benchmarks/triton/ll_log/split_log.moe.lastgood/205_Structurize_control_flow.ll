*** IR Dump After Structurize control flow (structurizecfg) ***
512:                                              ; preds = %508, %498
  %.tc339 = phi i32 [ %largephi.extractslice0.bc, %508 ], [ 0, %498 ]
  %.tc338 = phi i32 [ %largephi.extractslice2.bc, %508 ], [ 0, %498 ]
  %.tc337 = phi i32 [ %largephi.extractslice4.bc, %508 ], [ 0, %498 ]
  %.tc336 = phi i32 [ %largephi.extractslice6.bc, %508 ], [ 0, %498 ]
  %513 = mul i64 %409, %506
  br i1 %340, label %514, label %518

514:                                              ; preds = %512
  %515 = getelementptr i8, ptr addrspace(1) %505, i64 %513
  %516 = getelementptr i8, ptr addrspace(1) %515, i64 %502
  %517 = load <16 x i8>, ptr addrspace(1) %516, align 16
  %largephi.extractslice01 = shufflevector <16 x i8> %517, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %largephi.extractslice01.bc = bitcast <4 x i8> %largephi.extractslice01 to i32
  %largephi.extractslice22 = shufflevector <16 x i8> %517, <16 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %largephi.extractslice22.bc = bitcast <4 x i8> %largephi.extractslice22 to i32
  %largephi.extractslice43 = shufflevector <16 x i8> %517, <16 x i8> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %largephi.extractslice43.bc = bitcast <4 x i8> %largephi.extractslice43 to i32
  %largephi.extractslice64 = shufflevector <16 x i8> %517, <16 x i8> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %largephi.extractslice64.bc = bitcast <4 x i8> %largephi.extractslice64 to i32
  br label %518
