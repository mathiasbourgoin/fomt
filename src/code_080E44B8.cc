#include "prelude.h"

extern u32 vtable_unk_080E61A0[];
EC void func_080AC85C(void *object, int arg);
EC void __builtin_delete(void *object);

EC void func_080E44B8(void *self, int in_chrg)
{
    func_080AC85C((u8 *)self + 4, 2);
    *(void **)self = vtable_unk_080E61A0;
    if (in_chrg & 1)
        __builtin_delete(self);
}
