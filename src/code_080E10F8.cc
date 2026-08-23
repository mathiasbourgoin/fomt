#include "prelude.h"

extern u32 vtable_unk_080E78F0[];
EC void __builtin_delete(void *object);

EC void func_080E10F8(void *self, int in_chrg)
{
    *(void **)self = vtable_unk_080E78F0;
    if (in_chrg & 1)
        __builtin_delete(self);
}
