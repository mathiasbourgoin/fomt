#include "prelude.h"

extern u32 vtable_unk_080E7B68[];
EC void func_080098AC(void *self, int arg);

EC void func_08075DEC(void *self, int arg)
{
    *(void **)((u8 *)self + 8) = vtable_unk_080E7B68;
    func_080098AC(self, arg);
}
