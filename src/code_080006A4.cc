#include "prelude.h"

extern volatile u16 gUnk_03000400;
EC u32 func_080D38D4(u32 value, u32 address);
EC void func_08000728(void *destination, u32 size);

EC u32 func_080006A4(void *destination, u32 offset, u32 value, u32 enabled)
{
    register void *saved_destination = destination;
    register u32 saved_offset asm("r4") = offset;
    register u32 saved_value asm("r5") = value;
    register u32 active asm("r2") = enabled;
    asm("" : "+r"(saved_destination), "+r"(saved_offset), "+r"(saved_value), "+r"(active));
    gUnk_03000400 = 0;
    register u32 zero asm("r0");
    asm("" : "=r"(zero));
    if (active == 0)
        return zero;

    register u32 result asm("r6") = 1;
    register u32 address asm("r1") = 0xe0;
    address <<= 20;
    address |= saved_offset;
    if (func_080D38D4(saved_value, address) != 0) {
        register u32 size asm("r1") = 0x80;
        size <<= 1;
        func_08000728(saved_destination, size);
        result = 0;
    }
    return result;
}
