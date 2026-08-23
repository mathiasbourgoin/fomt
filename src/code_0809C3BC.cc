#include "prelude.h"

EC u32 func_0809C22C(void *self);

EC void func_0809C3BC(void *self)
{
    register u8 *saved asm("r4") = (u8 *)self;
    register u32 index asm("r3") = func_0809C22C(saved);
    register u8 *slot asm("r1") = saved + index;
    register u32 previous asm("r2") = *slot;
    if (previous == 0) {
        register u32 one asm("r0") = 1;
        *slot = one;
        register u8 *other asm("r0") = saved + 0xc;
        other += index;
        *other = previous;
    }
}
