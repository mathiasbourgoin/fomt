#include "prelude.h"

extern u32 gUnk_08117838;
EC void func_080CAF6C(void *self);

EC void func_080CC144(u32 *self)
{
    *self = gUnk_08117838;
}

EC void func_080CC150(void *self)
{
    func_080CAF6C(self);
}
