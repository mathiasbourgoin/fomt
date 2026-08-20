// func_08004C48 (0x08004C48) -- base constructor stub, counterpart of the
// derived destructor func_08004C54 (src/code_08004C54.cc): stamps the same
// vtable_unk_080E5A88 at self+0 and returns self unchanged. Found via the
// "sister method" scan (grep for unmatched thumb_func_start blocks
// referencing a vtable_unk_ADDR literal already used by a matched src/*.cc
// file, DECOMP_ARCHIVE.md round 10 methodology): sits immediately before
// func_08004C54's own already-split asm file, called from a placement-new
// site in asm/code_linkonce.s (movs r0,#4; bl __builtin_new; bl
// func_08004C48) -- confirms this is the object's constructor, not just an
// arbitrary vtable-stamp helper: it constructs the same 4-byte (vtable-only)
// derived object whose destructor is func_08004C54.
#include "prelude.h"

extern u32 vtable_unk_080E5A88[];

EC void *func_08004C48(void *self)
{
    *(void **)self = vtable_unk_080E5A88;
    return self;
}
