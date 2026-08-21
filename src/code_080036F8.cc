// func_080036F8 (0x080036F8) -- constructor sibling of the "richer" 1-child
// AScene-derived destructor family (DECOMP_RULES.md), found round 11/w33 via
// the round-10/w24 sister method: same placement-constructor shape as
// func_080BC898/func_080C7EA8/func_080C0D1C (vtable stamp, operator new,
// opaque init call, store at self+4, return self) -- the simplest instance
// of this shape seen so far, with no extra arguments passed through to
// either the constructor or the opaque init call.
#include "prelude.h"

extern u32 vtable_unk_080E5A18[];

EC void *func_08000914(void *self);

EC void *func_080036F8(void *self)
{
    *(void **)self = vtable_unk_080E5A18;
    void *obj = operator new(0x6D34);
    obj = func_08000914(obj);
    *(void **)((char *)self + 4) = obj;
    return self;
}
