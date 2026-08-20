// func_08050E74 (0x08050E74) -- same handle-forwarding thunk shape as
// func_08050E5C (src/code_08050E5C.cc): dereferences `self`'s first word
// and tail-forwards to func_08050C18.
#include "prelude.h"

EC void func_08050C18(void *self);

EC void func_08050E74(void *self)
{
    func_08050C18(*(void **)self);
}
