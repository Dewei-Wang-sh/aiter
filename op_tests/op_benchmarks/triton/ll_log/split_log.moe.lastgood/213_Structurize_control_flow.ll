*** IR Dump After Structurize control flow (structurizecfg) ***
393:                                              ; preds = %391, %386
  %394 = phi i64 [ %390, %386 ], [ %392, %391 ]
  %395 = or i32 %379, 64
  %396 = zext nneg i32 %395 to i64
  %397 = or disjoint i64 %378, %396
  %398 = or i64 %397, %355
  %399 = and i64 %398, -4294967296
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %408, label %Flow347

408:                                              ; preds = %393
  %409 = srem i64 %397, %355
  br label %Flow347

Flow347:                                          ; preds = %408, %393
  %401 = phi i64 [ %409, %408 ], [ poison, %393 ]
  %402 = phi i1 [ false, %408 ], [ true, %393 ]
  br i1 %402, label %403, label %410

403:                                              ; preds = %Flow347
  %404 = trunc i64 %355 to i32
  %405 = trunc i64 %397 to i32
  %406 = urem i32 %405, %404
  %407 = zext i32 %406 to i64
  br label %410
