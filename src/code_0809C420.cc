#include "prelude.h"

EC void func_0809C420(void *self, u32 index)
{
    register u8 *data asm("r2") = (u8 *)self;
    register u8 *active asm("r0") = data + index;
    if (*active == 0)
        return;
    if (index == 0 || index == 3) {
        register u8 *progress asm("r0") = data;
        progress += 0xc;
        progress += index;
        register u32 zero asm("r1") = 0;
        *progress = zero;
    }
}
