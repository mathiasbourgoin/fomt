#include "prelude.h"

EC void func_08075E24(void *self, u32 value)
{
    register u8 *object asm("r2") = (u8 *)self;
    register u32 shifted asm("r1") = value << 16;
    asm("" : "+r"(shifted));
    register u32 raw asm("r4") = shifted >> 16;
    register int signed_value asm("r1") = (int)shifted >> 16;
    register u32 current_raw asm("r3") = *(u16 *)(object + 4);
    register int current asm("r0") = *(short *)(object + 4);
    if (signed_value <= current)
        *(u16 *)(object + 0xe) = raw;
    else
        *(u16 *)(object + 0xe) = current_raw;

    register int result asm("r0") = *(short *)(object + 0xe);
    if (result <= 0x9f)
        *(u16 *)(object + 0xe) = 0xa0;
}
