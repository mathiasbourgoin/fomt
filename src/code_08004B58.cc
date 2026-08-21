// func_08004B58 (0x08004B58) -- placement constructor, "composite
// constructor" sub-variant left as a deferred candidate at the end of
// round 11 (w33, see SESSION_NOTES.md/DECOMP_ARCHIVE.md). Same overall
// shape as the other placement constructors already matched
// (src/code_0807EE14.cc etc.): stamps vtable_unk_080E5A68 at self+0,
// allocates and initializes a 0x1a0-byte child at self+4 via the opaque
// helper func_080041DC -- but here func_080041DC's third argument is not
// a value stolen from a caller out-parameter, it is a freshly allocated
// 4-byte object (its own vtable_unk_080E5A3C stamped at offset 0) built
// right here. func_080041DC itself is the SAME helper already
// characterized (but still unported) in src/code_08004BDC.cc's writeup
// of the destructor side of this family: it reads the 4-byte helper
// object through the pointer given in its 3rd argument and re-stores it
// at its own self+0xc.
//
// Register-allocation note: agbcp only reproduces the original
// instruction order (helper alloc -> vtable stamp on helper -> THEN spill
// the helper pointer to its stack slot, right before its address is
// taken for the func_080041DC call) when the helper pointer is not
// itself the variable whose address is taken -- assigning straight into
// an address-taken local made agbcp spill immediately after allocation,
// ahead of the vtable store. Routing the fresh allocation through an
// extra non-address-taken temporary before aliasing it to the
// address-taken local reproduces the exact instruction order seen in the
// original disassembly.
#include "prelude.h"

extern u32 vtable_unk_080E5A68[];
extern u32 vtable_unk_080E5A3C[];

EC void *func_080041DC(void *self, int a1, void **a2);

EC void *func_08004B58(void *self)
{
    *(void **)self = vtable_unk_080E5A68;
    void *raw = operator new(4);
    *(void **)raw = vtable_unk_080E5A3C;
    void *helper = raw;
    void *obj = operator new(0x1a0);
    obj = func_080041DC(obj, 0, &helper);
    *(void **)((char *)self + 4) = obj;
    return self;
}
