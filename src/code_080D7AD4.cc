// func_080D7AD4 (0x080D7AD4) -- second constructor sibling of the same
// sub-object family as func_080D79CC (src/code_080D79CC.cc, see that file
// for the full rationale): byte-for-byte the same body, but `self` here IS
// directly the sub-object (no self-0x1c offset), matching how
// func_080D79CC's `self` was itself the sub-object's own +0x1c embedded
// member -- the classic "same shape, different embedding offset" pattern
// already documented for the "richer destructor" family
// (DECOMP_RULES.md).
#include "prelude.h"

extern u32 vtable_unk_080E5B0C[];
extern u32 vtable_unk_080E5B18[];

EC void func_080D7944(void *self, int arg);
EC void func_0800959C(void *self, int arg);

EC void func_080D7AD4(void *self, int arg2)
{
    *(void **)((char *)self + 0x30) = vtable_unk_080E5B0C;
    *(void **)((char *)self + 8) = vtable_unk_080E5B18;
    func_080D7944((char *)self + 0x1c, 0);
    func_0800959C(self, arg2);
}
