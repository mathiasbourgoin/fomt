#include "prelude.h"

EC void func_08081B2C(void **destination, void *other)
{
    void **slot = (void **)((u8 *)other + 0x6AC);
    void *value = *slot;
    *slot = 0;
    *destination = value;
}
