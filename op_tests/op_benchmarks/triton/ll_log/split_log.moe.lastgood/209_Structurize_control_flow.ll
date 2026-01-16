*** IR Dump After Structurize control flow (structurizecfg) ***
453:                                              ; preds = %451, %446
  %454 = phi i64 [ %450, %446 ], [ %452, %451 ]
  %455 = or i32 %379, 320
  %456 = zext nneg i32 %455 to i64
  %457 = or disjoint i64 %378, %456
  %458 = or i64 %457, %355
  %459 = and i64 %458, -4294967296
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %468, label %Flow343

468:                                              ; preds = %453
  %469 = srem i64 %457, %355
  br label %Flow343

Flow343:                                          ; preds = %468, %453
  %461 = phi i64 [ %469, %468 ], [ poison, %453 ]
  %462 = phi i1 [ false, %468 ], [ true, %453 ]
  br i1 %462, label %463, label %470

463:                                              ; preds = %Flow343
  %464 = trunc i64 %355 to i32
  %465 = trunc i64 %457 to i32
  %466 = urem i32 %465, %464
  %467 = zext i32 %466 to i64
  br label %470
