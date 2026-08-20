// func_080931B0 (0x080931B0) -- constructor sibling of the "richer" 2-child
// AScene-derived destructor family (DECOMP_RULES.md), same shape as
// func_0807EE14 (src/code_0807EE14.cc, first match of this constructor
// sub-family): vtable stamp, operator new, opaque init call on the
// allocation (stored at self+4, the MI child), then a move-in of the
// plain child at self+8 from an out-parameter (reads the caller's
// pointer, zeroes the caller's slot, stores the old value here).
// Stamps the exact vtable already used by its matched destructor
// sibling in this repo.
#include "prelude.h"

extern u32 vtable_unk_080E7DE4[];

EC void *func_08092640(void *self, void *a2);

EC void *func_080931B0(void *self, void **a1, void *a2)
{
    *(void **)self = vtable_unk_080E7DE4;
    void *obj = operator new(0x10c);
    obj = func_08092640(obj, a2);
    *(void **)((char *)self + 4) = obj;
    void *stolen = *a1;
    *a1 = nullptr;
    *(void **)((char *)self + 8) = stolen;
    return self;
}
