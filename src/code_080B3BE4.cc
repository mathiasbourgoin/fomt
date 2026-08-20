// func_080B3BE4 (0x080B3BE4) -- constructor sibling of the "richer" 1-child
// AScene-derived destructor family (DECOMP_RULES.md), found round 11/w33 via
// the round-10/w24 sister method: same placement-constructor shape as
// func_080BC898/func_080C7EA8/func_080C0D1C (vtable stamp, operator new,
// opaque init call forwarding a1, store at self+4, return self). Stamps
// the exact vtable already used by its matched destructor sibling
// (func_080ADF6C, src/code_080ADF6C.cc is still unported/opaque, called
// here as a black box like the other init routines in this family).
#include "prelude.h"

extern u32 vtable_unk_080E850C[];

EC void *func_080ADF6C(void *self, void *a1);

EC void *func_080B3BE4(void *self, void *a1)
{
    *(void **)self = vtable_unk_080E850C;
    void *obj = operator new(0x93C);
    obj = func_080ADF6C(obj, a1);
    *(void **)((char *)self + 4) = obj;
    return self;
}
