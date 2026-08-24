#include "prelude.h"

EC void func_0804F0E0(void *self);
EC void func_08009940(void *destination, void *source);

EC void func_0805039C(u8 *self)
{
    register i32 state asm("r6") = *(i32 *)(self + 8);
    asm("" : "+r"(state));
    if (state == 0) {
        func_0804F0E0(self + 0xD0);

        register i32 kind asm("r0") = *(i32 *)(self + 4);
        asm("" : "+r"(kind));
        register u8 *destination asm("r5") = self + 0x20;
        asm("" : "+r"(destination));
        if (kind != 1)
            func_08009940(destination, self + 0x130);
        func_08009940(destination, self + 0x148);
        self[0xC] = state;
    }

    register i32 current asm("r0") = *(i32 *)(self + 8);
    asm("" : "+r"(current));
    if (current < 0)
        return;
    asm("" : "+r"(current));
    if (current > 2)
        return;
    *(i32 *)(self + 8) = 1;
}
