// func_08050F74: setter that wraps two counters into fixed ranges before
// storing them, then resets a byte flag. The 3rd argument (`y`) is taken
// modulo 3 (via __umodsi3, only when > 2) into a 2-byte field at self+22;
// the 2nd argument (`x`) is taken modulo 28 (only when > 27) into a 2-byte
// field at self+20; a byte flag at self+25 is unconditionally reset to 0.
// The wrap moduli (3, 28) match this game's season/day-of-month domain (3
// seasons, 28-day months) closely enough to suspect a season/day setter,
// but the concrete class/role is not independently confirmed from this
// fragment alone -- kept in raw-offset style like its neighbors
// func_08050F60/func_08050F70 rather than naming a class that hasn't been
// established. Found while exploring the 1084-byte hidden blob after
// func_08050EBC (round w39/w41), near-miss (self/x register swap) root-
// caused round w64: introducing separate local copies (`yy`, `xx`) of the
// two parameters, assigned via a plain statement rather than a combined
// declaration+initializer, makes agbcc naturally allocate self->r4/x->r5
// matching the target instead of the swapped r5/r4 every prior attempt
// produced.
#include "prelude.h"

EC void func_08050F74(void *self_, u32 x, u32 y)
{
    u8 *self = (u8 *)self_;
    u32 yy = y;
    u32 xx;
    if (yy > 2) {
        yy = yy % 3;
    }
    *(u16 *)(self + 22) = yy;
    xx = x;
    if (xx > 27) {
        xx = xx % 28;
    }
    *(u16 *)(self + 20) = xx;
    self[25] = 0;
}
