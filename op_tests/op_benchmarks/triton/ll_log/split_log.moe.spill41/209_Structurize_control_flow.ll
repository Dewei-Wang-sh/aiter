*** IR Dump After Structurize control flow (structurizecfg) ***
530:                                              ; preds = %526, %524
  %.tc327 = phi i32 [ %largephi.extractslice025.bc, %526 ], [ 0, %524 ]
  %.tc326 = phi i32 [ %largephi.extractslice226.bc, %526 ], [ 0, %524 ]
  %.tc325 = phi i32 [ %largephi.extractslice427.bc, %526 ], [ 0, %524 ]
  %.tc324 = phi i32 [ %largephi.extractslice628.bc, %526 ], [ 0, %524 ]
  %531 = mul i64 %454, %506, !dbg !77
  br i1 %340, label %532, label %536, !dbg !78

532:                                              ; preds = %530
  %533 = getelementptr i8, ptr addrspace(1) %505, i64 %531, !dbg !79
  %534 = getelementptr i8, ptr addrspace(1) %533, i64 %502, !dbg !79
  %535 = load <16 x i8>, ptr addrspace(1) %534, align 16, !dbg !78
  %largephi.extractslice017 = shufflevector <16 x i8> %535, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !78
  %largephi.extractslice017.bc = bitcast <4 x i8> %largephi.extractslice017 to i32, !dbg !78
  %largephi.extractslice218 = shufflevector <16 x i8> %535, <16 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !78
  %largephi.extractslice218.bc = bitcast <4 x i8> %largephi.extractslice218 to i32, !dbg !78
  %largephi.extractslice419 = shufflevector <16 x i8> %535, <16 x i8> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>, !dbg !78
  %largephi.extractslice419.bc = bitcast <4 x i8> %largephi.extractslice419 to i32, !dbg !78
  %largephi.extractslice620 = shufflevector <16 x i8> %535, <16 x i8> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>, !dbg !78
  %largephi.extractslice620.bc = bitcast <4 x i8> %largephi.extractslice620 to i32, !dbg !78
  br label %536, !dbg !78
