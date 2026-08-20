// func_080D7AAC (0x080D7AAC) -- lightweight deleting destructor: stamps
// vtable_unk_080E5B54 at +4, unlinks self from the head of the
// singly-linked list rooted at gUnk_03000410 (gUnk_03000410 = self->next,
// i.e. self+0), then conditionally deletes self when `arg & 1`. Same
// vtable/global pair as the "rich" sibling destructor func_080D7944
// (src/code_08008A68.cc's callee, still unported as of this round) --
// found via the "sister method" scan (angle 2, DECOMP_RULES.md round 10):
// unmatched thumb_func_start block referencing a vtable already known
// from a matched src/*.cc file. Byte-identical twin of func_080D7B04
// (src/code_080D7B04.cc), consistent with the destructor "riche" family
// documented in DECOMP_ARCHIVE.md. Layout/role of the object are NOT
// characterized beyond this, per the "don't guess a type without
// checking the compiled body" discipline.
#include "prelude.h"

extern u32 vtable_unk_080E5B54[];
extern void *gUnk_03000410;

EC void func_080D7AAC(void *self, int arg)
{
    *(void **)((char *)self + 4) = vtable_unk_080E5B54;
    gUnk_03000410 = *(void **)self;
    if (arg & 1)
    {
        operator delete(self);
    }
}
