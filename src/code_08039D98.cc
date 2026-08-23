#include "prelude.h"

EC u32 func_08039D98(u8 *self)
{
    u8 *state = *(u8 **)(self + 0x34);
    register u32 difference asm("r1") = *(u32 *)(state + 0xc);
    register u32 four asm("r0") = 4;
    difference ^= four;
    register u32 result asm("r0") = (u32)-(i32)difference;
    result |= difference;
    return result >> 31;
}
