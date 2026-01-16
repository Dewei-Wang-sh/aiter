*** IR Dump After Structurize control flow (structurizecfg) ***
393:                                              ; preds = %391, %386
  %394 = phi i64 [ %390, %386 ], [ %392, %391 ], !dbg !74
  %395 = or i32 %379, 64, !dbg !72
  %396 = zext nneg i32 %395 to i64, !dbg !73
  %397 = or disjoint i64 %378, %396, !dbg !73
  %398 = or i64 %397, %355, !dbg !74
  %399 = and i64 %398, -4294967296, !dbg !74
  %400 = icmp ne i64 %399, 0, !dbg !74
  br i1 %400, label %408, label %Flow347, !dbg !74

408:                                              ; preds = %393
  %409 = srem i64 %397, %355, !dbg !74
  br label %Flow347, !dbg !74

Flow347:                                          ; preds = %408, %393
  %401 = phi i64 [ %409, %408 ], [ poison, %393 ]
  %402 = phi i1 [ false, %408 ], [ true, %393 ]
  br i1 %402, label %403, label %410

403:                                              ; preds = %Flow347
  %404 = trunc i64 %355 to i32, !dbg !74
  %405 = trunc i64 %397 to i32, !dbg !74
  %406 = urem i32 %405, %404, !dbg !74
  %407 = zext i32 %406 to i64, !dbg !74
  br label %410, !dbg !74
