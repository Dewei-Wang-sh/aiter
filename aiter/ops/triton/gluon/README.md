# Study Async copy
testing several ways of layout of async copy
the kernel is a gemma16w16 num-warps=8
256x256xf32 = 256x64xbf16 * 64x256xbf16
gluon kernel
- padded layout perphase1 ~920tflops  (829t if interval 8)
- padded layout perphase2 row stride 16 ~950tflops (870t if interval 8)
- padded layout perphase2 row stride 8 ~920tflops (840t if interval 32)
- swizzle shared layout with blocked layout load (last mininute srcPtrSwizzle) ~820tflops
- swizzle shared layout with linear layout load(pre-set srcPtrSwizzle) (export MY_DEBUG=1, MY_DEBUG_LL=1)   ~930tflops

triton kernel is the same as option 1 - padded layout perphase1
~1000tflops cause it is 3 stage pipeline, but gluon is 2 stage pipeline for simplicity.

