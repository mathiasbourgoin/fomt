#include "prelude.h"

// GameState packed-field getter adjacent to func_08010F04 and
// func_08010F14.  Bits [13:18) are extracted with the literal double-shift
// emitted by agbcp for this Thumb-1 target.  Verified with `make compare`.
EC u32 func_08010F0C(void *self)
{
    return *(u32 *)self << 14 >> 27;
}
