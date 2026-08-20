// func_080854F4 (0x080854F4) -- constructor sibling of the "richer" 2-child
// AScene-derived destructor family (DECOMP_RULES.md), found round 11/w33 via
// the round-10/w24 sister method. Same shape as func_0805E624
// (src/code_0805E624.cc): vtable stamp, operator new, opaque init call
// forwarding a2, stored at self+4 (the MI child), then a move-in of the
// plain child at self+8 from an out-parameter.
#include "prelude.h"

extern u32 vtable_unk_080E7D20[];

EC void *func_08083BD4(void *self, void *a2);

EC void *func_080854F4(void *self, void **a1, void *a2)
{
    *(void **)self = vtable_unk_080E7D20;
    void *obj = operator new(0x61F4);
    obj = func_08083BD4(obj, a2);
    *(void **)((char *)self + 4) = obj;
    void *stolen = *a1;
    *a1 = nullptr;
    *(void **)((char *)self + 8) = stolen;
    return self;
}
