#include "prelude.h"

extern u32 vtable_unk_080E7CCC[];
EC void __builtin_delete(void *object);
EC void func_080C8360(void *self, int in_chrg);

EC void func_08081B00(void *self, int in_chrg)
{
    *(void **)((u8 *)self + 4) = vtable_unk_080E7CCC;
    __builtin_delete(*(void **)((u8 *)self + 0x6AC));
    func_080C8360(self, in_chrg);
}
