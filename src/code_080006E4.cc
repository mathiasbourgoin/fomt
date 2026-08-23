#include "prelude.h"

extern volatile u16 gUnk_03000400;
EC void func_080D379C(u32 address, u32 value);

EC u32 func_080006E4(void *, u32 value, u32 offset, u32 enabled)
{
    register u32 saved_value asm("r5") = value;
    register u32 saved_offset asm("r4") = offset;
    register u32 active asm("r2") = enabled;
    asm("" : "+r"(saved_value), "+r"(saved_offset), "+r"(active));
    gUnk_03000400 = 0;
    register u32 result asm("r0");
    if (active != 0) {
        register u32 address asm("r0") = 0xe0;
        address <<= 20;
        address |= saved_offset;
        func_080D379C(address, saved_value);
        result = 1;
    } else {
        result = 0;
    }
    return result;
}
