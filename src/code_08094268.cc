#include "prelude.h"

extern u8 vtable_unk_080E8028[];
EC void __builtin_delete(void *object);

EC void func_08094268(void *self, u32 in_chrg)
{
    *(void **)self = vtable_unk_080E8028;
    if (in_chrg & 1)
        __builtin_delete(self);
}
