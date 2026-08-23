// func_08050E68 (0x08050E68) -- same handle-forwarding thunk shape as
// func_08050E5C and func_08050E74: dereferences `self`'s first word and
// forwards it to func_08050B50.
#include "prelude.h"

EC void func_08050B50(void *self);

EC void func_08050E68(void *self)
{
    func_08050B50(*(void **)self);
}
