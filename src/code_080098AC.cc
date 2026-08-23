#include "prelude.h"

extern u32 vtable_unk_080E5BE8[];
EC void __builtin_delete(void *object);

EC void func_080098AC(void *self, int in_chrg)
{
    *(void **)((u8 *)self + 8) = vtable_unk_080E5BE8;

    void *prev = *(void **)self;
    if (prev) {
        *(void **)prev = *(void **)((u8 *)self + 4);
        *(void **)*(void **)((u8 *)self + 4) = prev;
    }

    if (in_chrg & 1)
        __builtin_delete(self);
}
