#include "prelude.h"

EC u32 func_080003DC(void *, u32 index)
{
    register u32 stride asm("r0") = 0x3fec;
    asm("" : "+r"(stride));
    return index * stride + 0x28;
}
