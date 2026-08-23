#include "prelude.h"

extern u8 gUnk_081036C0[];

EC u32 func_0809C3E0(void *self, u32 index)
{
    register u8 *data asm("r2") = (u8 *)self;
    register u32 result asm("r5") = 0;
    register u8 *active asm("r6") = data + index;
    if (*active != 0) {
        register u8 *progress_base asm("r0") = data;
        progress_base += 0xc;
        register u8 *progress asm("r4") = progress_base + index;
        register u8 *limit asm("r0") = gUnk_081036C0 + index;
        register u32 current asm("r3") = *progress;
        register u32 maximum asm("r0") = *limit;
        if (current < maximum) {
            register u32 next asm("r0") = current + 1;
            *progress = next;
        } else {
            *active = result;
            register u8 *finished asm("r0") = data + 6;
            finished += index;
            register u32 one asm("r1") = 1;
            *finished = one;
            result = 1;
            asm("" : "+r"(result));
        }
    }
    return result;
}
