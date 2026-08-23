#include "prelude.h"

EC u32 func_0809C22C(void *self);
EC u32 func_0809C3E0(void *self, u32 index);
EC void func_0809C420(void *self, u32 index);

EC u32 func_0809C474(void *self)
{
    register u8 *saved asm("r5") = (u8 *)self;
    register u32 index asm("r4") = func_0809C22C(saved);
    register u32 result asm("r6") = 0;
    register u8 *active asm("r0") = saved + index;
    if (*active != 0) {
        if (index == 1 || index == 4) {
            register u32 value asm("r0") = func_0809C3E0(saved, index);
            value <<= 24;
            result = value >> 24;
        }
        if (index == 0 || index == 3)
            func_0809C420(saved, index);
    }
    return result;
}
