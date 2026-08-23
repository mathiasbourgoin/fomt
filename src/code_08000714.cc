#include "prelude.h"

EC u32 func_080D100C(u32 value);

EC u32 func_08000714(const u8 *data)
{
    register u32 value asm("r0") = data[4];
    register u32 mask asm("r2") = 3;
    value &= mask;
    value += 3;
    return func_080D100C(value);
}
