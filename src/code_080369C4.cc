#include "prelude.h"

EC void func_08034F00(void *self, int arg);
EC void func_08036900(void *self);

EC void func_080369C4(void *self, int arg)
{
    func_08034F00(self, arg);
    if (arg > 1)
        func_08036900(self);
}
