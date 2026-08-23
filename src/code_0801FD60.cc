#include "prelude.h"

EC void func_080A59BC(void *self);
EC void func_080A5960(void *self);

// Thin wrappers around the object stored at self+4. An identical pair lives
// at 0x080ADB9C/0x080ADBA8.
EC void func_0801FD60(void *self)
{
    func_080A59BC(*(void **)((u8 *)self + 4));
}

EC void func_0801FD6C(void *self)
{
    func_080A5960(*(void **)((u8 *)self + 4));
}
