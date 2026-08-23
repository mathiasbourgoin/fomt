#include "prelude.h"

EC void func_08012B24(void *self);
EC u32 func_0801468C(void *self);

EC void func_0801D9A8(u8 *) __attribute__((section(".text.func_0801D9A8")));
EC void func_0801D9A8(u8 *self)
{
    register u32 offset asm("r3") = 0x1054;
    asm("" : "+r"(offset));
    self += offset;
    self = *(u8 **)self;
    func_08012B24(self);
}

EC u32 func_0801DB44(u8 *) __attribute__((section(".text.func_0801DB44")));
EC u32 func_0801DB44(u8 *self)
{
    register u32 offset asm("r1") = 0x1054;
    asm("" : "+r"(offset));
    self += offset;
    self = *(u8 **)self;
    return func_0801468C(self);
}
