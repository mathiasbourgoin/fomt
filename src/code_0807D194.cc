#include "prelude.h"

extern u32 vtable_unk_080E7C14[];
EC void func_080C7F58(void *self);

EC void *func_0807D194(void *self)
{
    func_080C7F58(self);
    *(void **)((u8 *)self + 4) = vtable_unk_080E7C14;
    register u32 offset asm("r1") = 0x6A4;
    register u8 *field asm("r0") = (u8 *)self + offset;
    register u32 zero asm("r1") = 0;
    *field = zero;
    *(u32 *)((u8 *)self + 0x708) = zero;
    *(u8 *)((u8 *)self + 0x70C) = zero;
    return self;
}
