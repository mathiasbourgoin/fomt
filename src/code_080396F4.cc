#include "prelude.h"

EC u32 func_080396F4(void *, u8 *actor)
{
    u8 *member = *(u8 **)(actor + 0x34);
    register u32 flag asm("r0") = member[0x12];
    asm("" : "+r"(flag));
    register u32 result asm("r1") = 0;
    if (flag)
        result = 3;
    return result;
}
