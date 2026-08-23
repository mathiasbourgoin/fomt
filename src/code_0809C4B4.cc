#include "prelude.h"

EC u32 func_0809C22C(void *self);
EC u32 func_0809C3E0(void *self, u32 index);

EC u32 func_0809C4B4(void *self)
{
    register u8 *saved asm("r4") = (u8 *)self;
    register u32 index asm("r1") = func_0809C22C(saved);
    register u32 result asm("r2") = 0;
    register u8 *active asm("r0") = saved + index;
    if (*active != 0 && (index == 5 || index == 2)) {
        register u32 value asm("r0") = func_0809C3E0(saved, index);
        value <<= 24;
        result = value >> 24;
    }
    return result;
}
