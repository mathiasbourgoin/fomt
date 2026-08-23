#include "prelude.h"

EC void func_080769A0(void *self);

// Move one owned pointer out of `source` after releasing its companion field.
// The byte-identical sibling at 0x0807565C confirms the shared wrapper shape.
EC void *func_08069E98(void *self, void *source)
{
    func_080769A0(*(void **)((u8 *)source + 4));
    void *value = *(void **)((u8 *)source + 8);
    *(void **)((u8 *)source + 8) = nullptr;
    *(void **)self = value;
    return self;
}
