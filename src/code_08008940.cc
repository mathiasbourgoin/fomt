#include "prelude.h"

EC void *func_08008AE0(void *self);

// Accessors into the object reached through the handle at `self`.
EC void *func_08008940(void *self)
{
    return (u8 *)*(void **)self + 0x494;
}

EC void *func_0800894C(void *self)
{
    return func_08008AE0((u8 *)*(void **)self + 0x490);
}
