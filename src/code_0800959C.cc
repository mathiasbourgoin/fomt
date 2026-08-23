#include "prelude.h"

extern u32 vtable_unk_080E5B90[];
EC void func_0800956C(void *self);
EC void func_080098DC(void *self, void *other);

EC void func_0800959C(void *self, void *other)
{
    *(void **)((u8 *)self + 8) = vtable_unk_080E5B90;
    func_0800956C(self);
    func_080098DC(self, other);
}
