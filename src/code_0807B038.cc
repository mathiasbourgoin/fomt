// func_0807B038 (0x0807B038) -- constructor sibling of the "richer" 2-child
// AScene-derived destructor family (DECOMP_RULES.md), found round 11/w33 via
// the round-10/w24 sister method. Same shape as func_0807EE14
// (src/code_0807EE14.cc), but the opaque init call forwards TWO extra
// arguments (a2, a3): vtable stamp, operator new, opaque init call, stored
// at self+4 (the MI child), then a move-in of the plain child at self+8
// from an out-parameter.
#include "prelude.h"

extern u32 vtable_unk_080E7BDC[];

EC void *func_08078E40(void *self, void *a2, void *a3);

EC void *func_0807B038(void *self, void **a1, void *a2, void *a3)
{
    *(void **)self = vtable_unk_080E7BDC;
    void *obj = operator new(0xA74);
    obj = func_08078E40(obj, a2, a3);
    *(void **)((char *)self + 4) = obj;
    void *stolen = *a1;
    *a1 = nullptr;
    *(void **)((char *)self + 8) = stolen;
    return self;
}
