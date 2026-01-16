*** IR Dump After Structurize control flow (structurizecfg) ***
512:                                              ; preds = %508, %498
  %.tc339 = phi i32 [ %largephi.extractslice049.bc, %508 ], [ 0, %498 ]
  %.tc338 = phi i32 [ %largephi.extractslice250.bc, %508 ], [ 0, %498 ]
  %.tc337 = phi i32 [ %largephi.extractslice451.bc, %508 ], [ 0, %498 ]
  %.tc336 = phi i32 [ %largephi.extractslice652.bc, %508 ], [ 0, %498 ]
  %513 = mul i64 %409, %506, !dbg !77
  br i1 %340, label %514, label %518, !dbg !78

514:                                              ; preds = %512
  %515 = getelementptr i8, ptr addrspace(1) %505, i64 %513, !dbg !79
  %516 = getelementptr i8, ptr addrspace(1) %515, i64 %502, !dbg !79
  %517 = load <16 x i8>, ptr addrspace(1) %516, align 16, !dbg !78
  %largephi.extractslice041 = shufflevector <16 x i8> %517, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !78
  %largephi.extractslice041.bc = bitcast <4 x i8> %largephi.extractslice041 to i32, !dbg !78
  %largephi.extractslice242 = shufflevector <16 x i8> %517, <16 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !78
  %largephi.extractslice242.bc = bitcast <4 x i8> %largephi.extractslice242 to i32, !dbg !78
  %largephi.extractslice443 = shufflevector <16 x i8> %517, <16 x i8> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>, !dbg !78
  %largephi.extractslice443.bc = bitcast <4 x i8> %largephi.extractslice443 to i32, !dbg !78
  %largephi.extractslice644 = shufflevector <16 x i8> %517, <16 x i8> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>, !dbg !78
  %largephi.extractslice644.bc = bitcast <4 x i8> %largephi.extractslice644 to i32, !dbg !78
  br label %518, !dbg !78
