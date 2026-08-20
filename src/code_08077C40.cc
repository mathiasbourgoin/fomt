// func_08077C40 (0x08077C40) -- constructor sibling of the "richer" 2-child
// AScene-derived destructor family (DECOMP_RULES.md), found round 11/w33 via
// the round-10/w24 sister method. Same shape as func_0805E624
// (src/code_0805E624.cc), but the opaque init call takes no extra argument
// besides the freshly-allocated object: vtable stamp, operator new, opaque
// init call, stored at self+4 (the MI child), then a move-in of the plain
// child at self+8 from an out-parameter.
#include "prelude.h"

extern u32 vtable_unk_080E7BA4[];

EC void *func_080773E8(void *self);

EC void *func_08077C40(void *self, void **a1)
{
    *(void **)self = vtable_unk_080E7BA4;
    void *obj = operator new(0x730);
    obj = func_080773E8(obj);
    *(void **)((char *)self + 4) = obj;
    void *stolen = *a1;
    *a1 = nullptr;
    *(void **)((char *)self + 8) = stolen;
    return self;
}
