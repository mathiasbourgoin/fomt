#include "prelude.h"

// Accessor duplicated byte-for-byte by func_08008AE8.  Keeping the same
// source expression preserves the original three-instruction Thumb body:
// ldr r0, [r0]; adds r0, #0xc; bx lr.  Verified with `make compare`.
EC void *func_08008AE0(void *self)
{
    return (u8 *)*(void **)self + 0xc;
}
