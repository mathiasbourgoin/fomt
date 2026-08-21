// func_080756B0 (0x080756B0) -- placement constructor with a REVERSED
// field layout vs the standard family (DECOMP_ARCHIVE.md, "Les
// constructeurs de placement"): the vtable literal is stamped at self+4
// and the freshly-allocated/initialized child is stored at self+0, instead
// of the usual vtable-at-0/child-at-4 order. Found round 11/w33 via the
// round-10/w24 sister method (thumb_func_start blocks combining a
// vtable_unk_ADDR literal with a bl __builtin_new). Confirmed by reading
// the raw disassembly in full -- not a guess: the `str` to [self+4]
// happens strictly BEFORE `bl __builtin_new`, and the `str` to [self+0]
// happens strictly AFTER the opaque init call, so this is the true
// instruction order, not an artifact of register allocation. Likely the
// constructor of one of the still-uncharacterized 4-byte non-polymorphic
// sub-objects referenced by the "richer" 37-destructor family (cf.
// func_08008574 in DECOMP_ARCHIVE.md) -- not confirmed, kept as a plain
// pointer/vtable-stamp function rather than inventing a C++ class.
#include "prelude.h"

extern u32 vtable_unk_080E7B5C[];

EC void *func_080E2DC8(void *self);

EC void *func_080756B0(void *self)
{
    *(void **)((char *)self + 4) = vtable_unk_080E7B5C;
    void *obj = operator new(0x28);
    obj = func_080E2DC8(obj);
    *(void **)self = obj;
    return self;
}
