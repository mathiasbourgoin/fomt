// func_08050E5C (0x08050E5C) -- same handle-forwarding thunk shape as
// func_08050E50 (src/code_08050E50.cc), single-argument variant:
// dereferences `self`'s first word and tail-forwards to func_08050B3C.
#include "prelude.h"

EC void func_08050B3C(void *self);

EC void func_08050E5C(void *self)
{
    func_08050B3C(*(void **)self);
}
