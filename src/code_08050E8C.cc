// func_08050E8C (0x08050E8C) -- same handle-forwarding thunk shape as
// func_08050E5C/func_08050E74 (src/code_08050E5C.cc, src/code_08050E74.cc):
// dereferences `self`'s first word and tail-forwards to func_08050C64.
#include "prelude.h"

EC void func_08050C64(void *self);

EC void func_08050E8C(void *self)
{
    func_08050C64(*(void **)self);
}
