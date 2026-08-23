#include "prelude.h"

EC u32 func_0809D8A4(u32 *self)
{
    u32 result = 13;
    if (*self == 1)
        result = 28;
    return result;
}

EC u32 func_0809D8B8(u32 *self)
{
    register u32 result asm("r1") = 6;
    asm("" : "+r"(result));
    register u32 state asm("r0") = *self;
    asm("" : "+r"(state));
    if (state == 1)
        result = 28;
    else if (state == 2)
        result = 14;
    return result;
}

struct __attribute__((packed)) Nibble_0809D8D4 {
    u8 low : 4;
    u8 high : 4;
};

EC u32 func_0809D8D4(u8 *self, u32 first, u32 second)
{
    register u32 offset asm("r1") = first;
    offset <<= 1;
    asm("" : "+r"(offset));
    register u32 stride asm("r3") = second << 3;
    asm("" : "+r"(stride));
    stride -= second;
    stride <<= 3;
    offset += stride;
    self += offset;
    return ((Nibble_0809D8D4 *)(self + 4))->low;
}
