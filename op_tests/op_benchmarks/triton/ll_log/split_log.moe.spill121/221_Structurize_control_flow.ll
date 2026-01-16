*** IR Dump After Structurize control flow (structurizecfg) ***
366:                                              ; preds = %364, %359
  %367 = phi i64 [ %363, %359 ], [ %365, %364 ], !dbg !66
  %368 = shl i32 %201, 3, !dbg !54
  %369 = and i32 %368, 248, !dbg !54
  %370 = mul i32 %189, %11, !dbg !67
  %371 = add i32 %370, %369, !dbg !68
  %372 = trunc i64 %367 to i32, !dbg !69
  %373 = mul i32 %12, %372, !dbg !69
  %374 = add i32 %371, %373, !dbg !69
  %375 = tail call ptr addrspace(8) @llvm.amdgcn.make.buffer.rsrc.p8.p1(ptr addrspace(1) %10, i16 0, i64 2147483646, i32 159744), !dbg !70
  %376 = select i1 %340, i32 %374, i32 -2147483648, !dbg !70
  %377 = tail call <2 x i32> @llvm.amdgcn.raw.ptr.buffer.load.v2i32(ptr addrspace(8) %375, i32 %376, i32 0, i32 0), !dbg !70
  %378 = shl nsw i64 %199, 9, !dbg !71
  %379 = lshr i32 %201, 3, !dbg !72
  %380 = and i32 %379, 63, !dbg !72
  %381 = zext nneg i32 %380 to i64, !dbg !73
  %382 = or disjoint i64 %378, %381, !dbg !73
  %383 = or i64 %382, %355, !dbg !74
  %384 = and i64 %383, -4294967296, !dbg !74
  %385 = icmp ne i64 %384, 0, !dbg !74
  br i1 %385, label %393, label %Flow348, !dbg !74

393:                                              ; preds = %366
  %394 = srem i64 %382, %355, !dbg !74
  br label %Flow348, !dbg !74

Flow348:                                          ; preds = %393, %366
  %386 = phi i64 [ %394, %393 ], [ poison, %366 ]
  %387 = phi i1 [ false, %393 ], [ true, %366 ]
  br i1 %387, label %388, label %395

388:                                              ; preds = %Flow348
  %389 = trunc i64 %355 to i32, !dbg !74
  %390 = trunc i64 %382 to i32, !dbg !74
  %391 = urem i32 %390, %389, !dbg !74
  %392 = zext i32 %391 to i64, !dbg !74
  br label %395, !dbg !74
