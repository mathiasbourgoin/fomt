#include "prelude.h"

extern u32 vtable_unk_080E7C94[];
EC void func_080C8360(void *self, int in_chrg);

EC void func_0808052C(void *self, int in_chrg)
{
    *(void **)((u8 *)self + 4) = vtable_unk_080E7C94;
    func_080C8360(self, in_chrg);
}
