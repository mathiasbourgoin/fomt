#include "prelude.h"

EC void func_080D6F5C(void *self);

EC void func_08007EC8(u8 *self)
{
    func_080D6F5C(self + 0x80);
    func_080D6F5C(self + 4);
    self[0] = 0;
    self[1] = 1;
}
