// func_080D7B04 (0x080D7B04) -- byte-identical twin of func_080D7AAC
// (src/code_080D7AAC.cc): same lightweight deleting destructor pattern
// (stamp vtable_unk_080E5B54 at +4, unlink self from the gUnk_03000410
// list head, conditionally delete self on `arg & 1`). Found via the same
// "sister method" scan (angle 2, DECOMP_RULES.md round 10). See
// code_080D7AAC.cc for the shared analysis.
#include "prelude.h"

extern u32 vtable_unk_080E5B54[];
extern void *gUnk_03000410;

EC void func_080D7B04(void *self, int arg)
{
    *(void **)((char *)self + 4) = vtable_unk_080E5B54;
    gUnk_03000410 = *(void **)self;
    if (arg & 1)
    {
        operator delete(self);
    }
}
