#include "prelude.h"

extern u32 vtable_unk_080E61A0[];
EC void __builtin_delete(void *object);

EC void func_080E4544(void *self, int in_chrg)
{
    *(void **)self = vtable_unk_080E61A0;
    if (in_chrg & 1)
        __builtin_delete(self);
}
