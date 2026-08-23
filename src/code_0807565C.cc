#include "prelude.h"

EC void func_080769A0(void *self);

// Byte-identical sibling of func_08069E98: release source+4, then move the
// owned pointer at source+8 into the destination.
EC void *func_0807565C(void *self, void *source)
{
    func_080769A0(*(void **)((u8 *)source + 4));
    void *value = *(void **)((u8 *)source + 8);
    *(void **)((u8 *)source + 8) = nullptr;
    *(void **)self = value;
    return self;
}
