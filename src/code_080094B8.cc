#include "prelude.h"

extern u32 vtable_unk_080E5B80[];
EC void func_08009324(void *self, int arg);
EC void func_080098AC(void *self, int arg);

EC void func_080094B8(void *self, int arg)
{
    *(void **)((u8 *)self + 8) = vtable_unk_080E5B80;
    func_08009324((u8 *)self + 0xC, 2);
    func_080098AC(self, arg);
}
