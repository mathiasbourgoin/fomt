#include "prelude.h"

EC void func_080D0340(void *self);
EC void func_080D02F0(void *self);
EC void func_080D035C(void *self);

EC u32 func_080E3910(void *)
{
    return 1;
}

EC void func_080E3914(void *self)
{
    func_080D0340(self);
}

EC void func_080E3920(void *self)
{
    func_080D02F0(self);
}

EC void func_080E392C(void *self)
{
    func_080D035C(self);
}
