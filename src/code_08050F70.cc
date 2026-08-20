// func_08050F70: trivial byte-field getter, `return self->field_26;`. Found
// while exploring the 1084-byte hidden blob after func_08050EBC (round w41,
// following up on w39's discovery in asm/code_08050E98.s).
#include "prelude.h"

EC u8 func_08050F70(void *self)
{
    return ((u8 *)self)[26];
}
