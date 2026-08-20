// func_08057DD8 (0x08057DD8) -- constructor sibling of the "richer" 2-child
// AScene-derived destructor family (DECOMP_RULES.md), found round 11/w33 via
// the round-10/w24 sister method (thumb_func_start blocks combining a
// vtable_unk_ADDR literal with a bl __builtin_new, cross-referenced against
// arm-none-eabi-nm on build/src/*.o to exclude already-ported functions).
// Same shape as func_0807EE14 (src/code_0807EE14.cc, first match of this
// constructor sub-family): vtable stamp, operator new, opaque init call
// (this variant also forwards a caller-supplied u8 flag byte to the init
// call, alongside a2), stored at self+4 (the MI child), then a move-in of
// the plain child at self+8 from an out-parameter (reads the caller's
// pointer, zeroes the caller's slot, stores the old value here). Stamps
// the exact vtable already used by its matched destructor sibling in this
// repo.
#include "prelude.h"

extern u32 vtable_unk_080E7960[];

EC void *func_080522F8(void *self, void *a2, u8 flags);

EC void *func_08057DD8(void *self, void **a1, void *a2, u8 flags)
{
    *(void **)self = vtable_unk_080E7960;
    void *obj = operator new(0x23A8);
    obj = func_080522F8(obj, a2, flags);
    *(void **)((char *)self + 4) = obj;
    void *stolen = *a1;
    *a1 = nullptr;
    *(void **)((char *)self + 8) = stolen;
    return self;
}
