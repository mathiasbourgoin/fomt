#include "prelude.h"

EC void __builtin_delete(void *object);

EC void func_080ADC84(void *self, u32 flags)
{
    register void *saved asm("r5") = self;
    register u32 saved_flags asm("r4") = flags;
    __builtin_delete(*(void **)saved);
    if (saved_flags & 1)
        __builtin_delete(saved);
}
