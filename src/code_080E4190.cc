#include "prelude.h"

extern u32 vtable_unk_080E76F8[];
EC void __builtin_delete(void *object);

EC void func_080E4190(void *self, int in_chrg)
{
    *(void **)self = vtable_unk_080E76F8;
    if (in_chrg & 1)
        __builtin_delete(self);
}
