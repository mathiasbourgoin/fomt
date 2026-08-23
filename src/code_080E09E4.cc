#include "prelude.h"

EC void func_080E09E4(void *self, void *value)
{
    register void **items asm("r1") = (void **)((u8 *)self + 0x30);
    asm("" : "+r"(items));
    u32 *size = (u32 *)((u8 *)self + 0x1C0);
    if (*size <= 0x63) {
        u32 offset = *size << 2;
        register void **slot asm("r0") = (void **)((u8 *)items + offset);
        asm("" : "+r"(slot));
        *slot = value;
        ++*size;
    }
}
