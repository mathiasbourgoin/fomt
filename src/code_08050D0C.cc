#include "prelude.h"

EC void func_0804F69C(void *object, u32 mode);

EC void func_08050D0C(void **self, u32 flags)
{
    register void **object asm("r4") = self;
    register u32 arg asm("r5") = flags;

    if (*object != nullptr)
    {
        func_0804F69C(*object, 3);
    }

    if (arg & 1)
    {
        operator delete(object);
    }
}
