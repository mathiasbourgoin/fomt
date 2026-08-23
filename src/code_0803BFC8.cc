#include "prelude.h"

extern u32 vtable_unk_080E77A4[];

EC void func_080E0C38(void *self, int in_chrg);
EC void func_0803BE50(void *self, int in_chrg);

EC void func_0803BFC8(void *self, int in_chrg)
{
    *(u32 **)((u8 *)self + 4) = vtable_unk_080E77A4;
    void *child = *(void **)((u8 *)self + 8);
    if (child != nullptr)
        func_080E0C38(child, 3);
    func_0803BE50(self, in_chrg);
}
