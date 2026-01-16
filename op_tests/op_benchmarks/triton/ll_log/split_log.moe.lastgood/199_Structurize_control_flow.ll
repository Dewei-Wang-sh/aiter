*** IR Dump After Structurize control flow (structurizecfg) ***
548:                                              ; preds = %544, %542
  %.tc315 = phi i32 [ %largephi.extractslice041.bc, %544 ], [ 0, %542 ]
  %.tc314 = phi i32 [ %largephi.extractslice242.bc, %544 ], [ 0, %542 ]
  %.tc313 = phi i32 [ %largephi.extractslice443.bc, %544 ], [ 0, %542 ]
  %.tc312 = phi i32 [ %largephi.extractslice644.bc, %544 ], [ 0, %542 ]
  %549 = mul i64 %499, %506
  br i1 %340, label %550, label %554

550:                                              ; preds = %548
  %551 = getelementptr i8, ptr addrspace(1) %505, i64 %549
  %552 = getelementptr i8, ptr addrspace(1) %551, i64 %502
  %553 = load <16 x i8>, ptr addrspace(1) %552, align 16
  %largephi.extractslice049 = shufflevector <16 x i8> %553, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %largephi.extractslice049.bc = bitcast <4 x i8> %largephi.extractslice049 to i32
  %largephi.extractslice250 = shufflevector <16 x i8> %553, <16 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %largephi.extractslice250.bc = bitcast <4 x i8> %largephi.extractslice250 to i32
  %largephi.extractslice451 = shufflevector <16 x i8> %553, <16 x i8> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %largephi.extractslice451.bc = bitcast <4 x i8> %largephi.extractslice451 to i32
  %largephi.extractslice652 = shufflevector <16 x i8> %553, <16 x i8> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %largephi.extractslice652.bc = bitcast <4 x i8> %largephi.extractslice652 to i32
  br label %554
