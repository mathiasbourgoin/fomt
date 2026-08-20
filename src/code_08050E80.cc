// func_08050E80 (0x08050E80) -- same handle-forwarding thunk shape as
// func_08050E50 (src/code_08050E50.cc), two-argument variant: dereferences
// `self`'s first word and tail-forwards it plus the second argument
// untouched to func_08050C2C.
#include "prelude.h"

EC void func_08050C2C(void *self, u32 arg1);

EC void func_08050E80(void *self, u32 arg1)
{
    func_08050C2C(*(void **)self, arg1);
}
