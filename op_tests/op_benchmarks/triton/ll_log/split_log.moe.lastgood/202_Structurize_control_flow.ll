*** IR Dump After Structurize control flow (structurizecfg) ***
530:                                              ; preds = %526, %524
  %.tc327 = phi i32 [ %largephi.extractslice017.bc, %526 ], [ 0, %524 ]
  %.tc326 = phi i32 [ %largephi.extractslice218.bc, %526 ], [ 0, %524 ]
  %.tc325 = phi i32 [ %largephi.extractslice419.bc, %526 ], [ 0, %524 ]
  %.tc324 = phi i32 [ %largephi.extractslice620.bc, %526 ], [ 0, %524 ]
  %531 = mul i64 %454, %506
  br i1 %340, label %532, label %536

532:                                              ; preds = %530
  %533 = getelementptr i8, ptr addrspace(1) %505, i64 %531
  %534 = getelementptr i8, ptr addrspace(1) %533, i64 %502
  %535 = load <16 x i8>, ptr addrspace(1) %534, align 16
  %largephi.extractslice025 = shufflevector <16 x i8> %535, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %largephi.extractslice025.bc = bitcast <4 x i8> %largephi.extractslice025 to i32
  %largephi.extractslice226 = shufflevector <16 x i8> %535, <16 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %largephi.extractslice226.bc = bitcast <4 x i8> %largephi.extractslice226 to i32
  %largephi.extractslice427 = shufflevector <16 x i8> %535, <16 x i8> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %largephi.extractslice427.bc = bitcast <4 x i8> %largephi.extractslice427 to i32
  %largephi.extractslice628 = shufflevector <16 x i8> %535, <16 x i8> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %largephi.extractslice628.bc = bitcast <4 x i8> %largephi.extractslice628 to i32
  br label %536
