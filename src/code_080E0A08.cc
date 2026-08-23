#include "prelude.h"

EC void CpuFastSet(const void *source, void *destination, u32 control);

EC u32 func_080E0A08(u8 *state)
{
    register const u32 *source asm("r4") = *(const u32 **)(state + 0xc);
    register u32 *destination asm("r3") = *(u32 **)(state + 0x10);
    if (state[0x15] != 0) {
        register u32 distance asm("r0") = state[0x14];
        distance <<= 5;
        register u32 *end asm("r5") = (u32 *)((u8 *)destination + distance);
        register u32 toggled asm("r0") = state[0x16];
        register u32 inverse asm("r1") = 1;
        toggled ^= inverse;
        state[0x16] = toggled;
        toggled <<= 2;
        register u32 mask asm("r2") = 0x0f0f0f0f;
        mask <<= toggled;
        inverse = ~mask;
        do {
            *destination++ = *source++ & mask;
            *destination++ = *source++ & inverse;
            *destination++ = *source++ & mask;
            *destination++ = *source++ & inverse;
            *destination++ = *source++ & mask;
            *destination++ = *source++ & inverse;
            *destination++ = *source++ & mask;
            *destination++ = *source++ & inverse;
        } while (destination != end);
        return 1;
    }

    register u32 count asm("r2") = state[0x14] << 3;
    CpuFastSet(source, destination, count);
    return 0;
}
