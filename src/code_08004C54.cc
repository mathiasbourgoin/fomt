// func_08004C54 (0x08004C54) -- destructor of the scene-table record #12
// class ("new game naming screen" per docs/ENGINE.md round 27 in the
// franglais-patch repo, which mislabels this as the CONSTRUCTOR; static
// analysis alone can't distinguish trivial ctor/dtor pairs, but the
// disassembly does: this function calls func_080007EC == AScene::~AScene(),
// which is not a plausible base-constructor target).
//
// AScene::~AScene() (src/scene.cc) turns out to take TWO parameters,
// (void *self, int in_chrg) in r0/r1 -- the classic ARM/CFront C++ ABI
// "in-charge" flag that picks the deleting vs. non-deleting destructor
// variant (visible directly in its disassembly: `ands r0, r1` gates a
// conditional `bl __builtin_delete`). This derived, empty-body destructor
// resets its own vtable pointer then tail-calls the base destructor,
// forwarding `self`/`in_chrg` UNCHANGED -- which is exactly why the
// original never touches r0/r1 before the `bl`, and why the vtable-pointer
// temporary lands in r2 rather than r1 (r1 is reserved for the pass-through
// in_chrg argument). This was the single missing piece across 3 prior
// rounds' near-misses on this function.
#include "prelude.h"

extern u32 vtable_unk_080E5A88[];

EC void func_080007EC(void *self, int in_chrg);

EC void func_08004C54(void *self, int in_chrg)
{
    *(void **)self = vtable_unk_080E5A88;
    func_080007EC(self, in_chrg);
}
