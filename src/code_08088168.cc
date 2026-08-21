// func_08088168 (0x08088168) -- constructor sibling of the "richer" 2-child
// AScene-derived destructor family (DECOMP_RULES.md), with the same
// EXTENDED field layout (self+0xc, self+0x10 storing extra raw arguments)
// as func_0807D070 (src/code_0807D070.cc) -- see that file's header
// comment for the full description of the layout. Found round 11/w33 via
// the round-10/w24 sister method.
#include "prelude.h"

extern u32 vtable_unk_080E7D3C[];

EC void *func_08085584(void *self, void *a2, void *a3);

EC void *func_08088168(void *self, void **a1, void *a2, void *a3)
{
    *(void **)self = vtable_unk_080E7D3C;
    void *obj = operator new(0x43E0);
    obj = func_08085584(obj, a2, a3);
    *(void **)((char *)self + 4) = obj;
    void *stolen = *a1;
    *a1 = nullptr;
    *(void **)((char *)self + 8) = stolen;
    *(void **)((char *)self + 0xc) = a3;
    *(void **)((char *)self + 0x10) = a2;
    return self;
}
