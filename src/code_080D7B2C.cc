#include "prelude.h"

EC void func_080098AC(void *self, int arg);

// Three distinct vtable entry points sharing the same base destructor body.
EC void func_080D7B2C(void *self, int arg)
{
    func_080098AC(self, arg);
}

EC void func_080D7B38(void *self, int arg)
{
    func_080098AC(self, arg);
}

EC void func_080D7B44(void *self, int arg)
{
    func_080098AC(self, arg);
}
