// func_080C7EA8 (0x080C7EA8) -- constructor sibling of the "richer" 1-child
// AScene-derived destructor family (DECOMP_RULES.md), same placement-
// constructor shape as func_08007078/func_0800598C (vtable stamp,
// operator new, opaque init call, store at self+4, return self).
// Stamps the exact vtable already used by its matched destructor sibling
// in this repo.
#include "prelude.h"

extern u32 vtable_unk_080E8560[];

EC void *func_080C0DCC(void *self, void *a1);

EC void *func_080C7EA8(void *self, void *a1)
{
    *(void **)self = vtable_unk_080E8560;
    void *obj = operator new(0x98C);
    obj = func_080C0DCC(obj, a1);
    *(void **)((char *)self + 4) = obj;
    return self;
}
