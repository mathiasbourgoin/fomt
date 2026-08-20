// func_0809A4D4 (0x0809A4D4) -- constructor sibling of the "richer" 2-child
// AScene-derived destructor family (DECOMP_RULES.md), found round 11/w33 via
// the round-10/w24 sister method. Same shape as func_08057DD8
// (src/code_08057DD8.cc): vtable stamp, operator new, opaque init call
// forwarding a2 and a caller-supplied u8 flag byte, stored at self+4 (the
// MI child), then a move-in of the plain child at self+8 from an
// out-parameter.
#include "prelude.h"

extern u32 vtable_unk_080E824C[];

EC void *func_08094AC0(void *self, void *a2, u8 flags);

EC void *func_0809A4D4(void *self, void **a1, void *a2, u8 flags)
{
    *(void **)self = vtable_unk_080E824C;
    void *obj = operator new(0x33E0);
    obj = func_08094AC0(obj, a2, flags);
    *(void **)((char *)self + 4) = obj;
    void *stolen = *a1;
    *a1 = nullptr;
    *(void **)((char *)self + 8) = stolen;
    return self;
}
