#include "prelude.h"

extern u16 gUnk_03000400;
extern u8 gUnk_03000402;

EC void *func_08000640(void *self)
{
    if (gUnk_03000402 == 0) {
        gUnk_03000402 = 1;
        gUnk_03000400 = 0;
    }
    return self;
}
