*** IR Dump After Structurize control flow (structurizecfg) ***
536:                                              ; preds = %532, %530
  %.tc323 = phi i32 [ %largephi.extractslice017.bc, %532 ], [ 0, %530 ]
  %.tc322 = phi i32 [ %largephi.extractslice218.bc, %532 ], [ 0, %530 ]
  %.tc321 = phi i32 [ %largephi.extractslice419.bc, %532 ], [ 0, %530 ]
  %.tc320 = phi i32 [ %largephi.extractslice620.bc, %532 ], [ 0, %530 ]
  %537 = mul i64 %469, %506, !dbg !77
  br i1 %340, label %538, label %542, !dbg !78

538:                                              ; preds = %536
  %539 = getelementptr i8, ptr addrspace(1) %505, i64 %537, !dbg !79
  %540 = getelementptr i8, ptr addrspace(1) %539, i64 %502, !dbg !79
  %541 = load <16 x i8>, ptr addrspace(1) %540, align 16, !dbg !78
  %largephi.extractslice09 = shufflevector <16 x i8> %541, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !78
  %largephi.extractslice09.bc = bitcast <4 x i8> %largephi.extractslice09 to i32, !dbg !78
  %largephi.extractslice210 = shufflevector <16 x i8> %541, <16 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !78
  %largephi.extractslice210.bc = bitcast <4 x i8> %largephi.extractslice210 to i32, !dbg !78
  %largephi.extractslice411 = shufflevector <16 x i8> %541, <16 x i8> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>, !dbg !78
  %largephi.extractslice411.bc = bitcast <4 x i8> %largephi.extractslice411 to i32, !dbg !78
  %largephi.extractslice612 = shufflevector <16 x i8> %541, <16 x i8> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>, !dbg !78
  %largephi.extractslice612.bc = bitcast <4 x i8> %largephi.extractslice612 to i32, !dbg !78
  br label %542, !dbg !78
