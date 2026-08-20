// func_080070A4 (0x080070A4) -- derived-scene destructor with a child-object
// teardown, sibling of `func_0800371C` (see that file's header comment for
// the full analysis of the child-field layout and the C-vs-C++ shape
// rationale). Same body shape, only the own-vtable constant differs.
#include "prelude.h"

extern u32 vtable_unk_080E5AC0[];

EC void func_080007EC(void *self, int in_chrg);

EC void func_080070A4(void *self, int in_chrg)
{
    *(void **)self = vtable_unk_080E5AC0;
    void *child = *(void **)((char *)self + 4);
    if (child != nullptr)
    {
        void **vt = *(void ***)((char *)child + 4);
        void (*fn)(void *, int) = (void (*)(void *, int))vt[2];
        fn(child, 3);
    }
    func_080007EC(self, in_chrg);
}
