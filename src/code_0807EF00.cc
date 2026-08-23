#include "prelude.h"

EC void func_0807EF00(void **destination, void *other)
{
    void **slot = (void **)((u8 *)other + 0x6AC);
    void *value = *slot;
    *slot = 0;
    *destination = value;
}
