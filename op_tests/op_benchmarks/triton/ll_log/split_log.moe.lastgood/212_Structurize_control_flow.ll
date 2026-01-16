*** IR Dump After Structurize control flow (structurizecfg) ***
408:                                              ; preds = %406, %401
  %409 = phi i64 [ %405, %401 ], [ %407, %406 ]
  %410 = or disjoint i32 %380, 128
  %411 = zext nneg i32 %410 to i64
  %412 = or disjoint i64 %378, %411
  %413 = or i64 %412, %355
  %414 = and i64 %413, -4294967296
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %423, label %Flow346

423:                                              ; preds = %408
  %424 = srem i64 %412, %355
  br label %Flow346

Flow346:                                          ; preds = %423, %408
  %416 = phi i64 [ %424, %423 ], [ poison, %408 ]
  %417 = phi i1 [ false, %423 ], [ true, %408 ]
  br i1 %417, label %418, label %425

418:                                              ; preds = %Flow346
  %419 = trunc i64 %355 to i32
  %420 = trunc i64 %412 to i32
  %421 = urem i32 %420, %419
  %422 = zext i32 %421 to i64
  br label %425
