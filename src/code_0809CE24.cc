#include "prelude.h"

EC u32 func_0809CE24(u8 *self, u32 index)
{
    index *= 8;
    asm("" : "+r"(index));
    register u8 *entry asm("r0") = self + 4;
    entry += index;
    return *(u32 *)entry;
}
