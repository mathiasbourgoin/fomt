// func_080A3744 (0x080A3744) -- constructor sibling of the "richer" 2-child
// AScene-derived destructor family (DECOMP_RULES.md), same shape as
// func_0807EE14/the 14 sibling constructors matched alongside it
// (src/code_0807EE14.cc and friends): vtable stamp, operator new, opaque
// init call on the allocation (stored at self+4, the MI child), then a
// move-in of the plain child at self+8 from an out-parameter (reads the
// caller's pointer, zeroes the caller's slot, stores the old value here).
// Unlike the other 14 sites, no matched destructor stamping
// vtable_unk_080E8278 was found anywhere in this repo at the time of this
// port -- the sibling destructor is presumably still unported asm
// somewhere in the tree; ported purely from the shape match (identical
// body to the other 14, verified bit-exact via the quick harness) rather
// than from a destructor cross-reference.
#include "prelude.h"

extern u32 vtable_unk_080E8278[];

EC void *func_080A220C(void *self, void *a2);

EC void *func_080A3744(void *self, void **a1, void *a2)
{
    *(void **)self = vtable_unk_080E8278;
    void *obj = operator new(0x228);
    obj = func_080A220C(obj, a2);
    *(void **)((char *)self + 4) = obj;
    void *stolen = *a1;
    *a1 = nullptr;
    *(void **)((char *)self + 8) = stolen;
    return self;
}
