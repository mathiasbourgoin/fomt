#include "prelude.h"

EC void func_08034BFC(void *self);

EC void func_08033B84(u8 *self)
{
    void *member = *(void **)(self + 0x10);
    if (member)
        func_08034BFC(member);
}
