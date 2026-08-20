// func_080512B8: small wraparound-add utility -- `(self->field_24 + arg1)`
// clamped back into [0,2] by subtracting 3 once. Same family as the
// __umodsi3-based wraparound setter at func_08050F74 (documented as a
// near-miss in SESSION_NOTES.md, round w41).
#include "prelude.h"

EC u32 func_080512B8(void *self, u32 arg1)
{
    int v = arg1 + ((u8 *)self)[24];
    if (v > 2)
        v -= 3;
    return v;
}
