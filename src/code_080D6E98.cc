#include "prelude.h"

EC void func_080D6E98(u8 *self)
{
    register i32 invalid asm("r1") = 1;
    asm("" : "+r"(invalid));
    invalid = -invalid;
    *(i32 *)(self + 4) = invalid;
    *(i32 *)(self + 8) = invalid;
    register u32 zero asm("r2") = 0;
    asm("" : "+r"(zero));
    register u32 one asm("r1") = 1;
    self[0] = one;
    self[1] = zero;
}
