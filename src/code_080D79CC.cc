// func_080D79CC (0x080D79CC) -- constructor sibling of the sub-object
// teardown logic in func_08008A68 (src/code_08008A68.cc, round 9/w21):
// stamps the exact same pair vtable_unk_080E5B0C (at +0x30)/
// vtable_unk_080E5B18 (at +8) on the sub-object embedded at self-0x1c,
// then forwards to the same two opaque helpers (func_080D7944,
// func_0800959C) already used by that destructor's own teardown of this
// sub-object. Found via the "sister method" scan (DECOMP_ARCHIVE.md round
// 10 methodology, angle 1a): unmatched thumb_func_start block referencing
// vtable literals already known from a matched src/*.cc file, without its
// own __builtin_new (allocation happens elsewhere, this only initializes
// an already-placed sub-object).
#include "prelude.h"

extern u32 vtable_unk_080E5B0C[];
extern u32 vtable_unk_080E5B18[];

EC void func_080D7944(void *self, int arg);
EC void func_0800959C(void *self, int arg);

EC void func_080D79CC(void *self, int arg2)
{
    void *sub = (char *)self - 0x1c;
    *(void **)((char *)sub + 0x30) = vtable_unk_080E5B0C;
    *(void **)((char *)sub + 8) = vtable_unk_080E5B18;
    func_080D7944(self, 0);
    func_0800959C(sub, arg2);
}
