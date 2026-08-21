// func_08050F60: leaf constructor -- sets a vtable pointer at self+0, copies
// *arg1 into self+4, stores a byte flag at self+8. Sibling of the
// vtable_unk_080E7878/080E78C0/080E78E0 constructor family used together in
// asm/code_0804E9C8.s (still unported); role of the concrete class is not
// established yet, kept generic per DECOMP_RULES vanilla-naming rule.
#include "prelude.h"

extern void *vtable_unk_080E78A8;

EC void func_08050F60(void *self, void **arg1, u8 arg2)
{
    *(void **)self = &vtable_unk_080E78A8;
    *(void **)((u8 *)self + 4) = *arg1;
    ((u8 *)self)[8] = arg2;
}
