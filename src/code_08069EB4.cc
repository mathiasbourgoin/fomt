#include "prelude.h"

#include "barn.hh"
#include "coop.hh"

// 3 hidden wrapper functions surfaced by the .byte-blob scanner (round
// w78), packed back-to-back in the 96-byte gap between func_08069E98 and
// func_08069F14 in asm/code_08069E98.s. Same idiom repeated 3 times:
// dereference a pointer field at self+0x120 to reach some outer
// container, offset the result to an embedded Barn/Coop sub-object, call
// one of its Count* methods and booleanize the u32 result (nonzero
// animal count -> true). No known bl caller anywhere in asm/*.s.
EC bool func_08069EB4(void *self)
{
    Barn *barn = (Barn *)((u8 *)*(void **)((u8 *)self + 0x120) + 0x5F0);
    return barn->CountSheeps();
}

EC bool func_08069ED4(void *self)
{
    Barn *barn = (Barn *)((u8 *)*(void **)((u8 *)self + 0x120) + 0x5F0);
    return barn->CountCows();
}

EC bool func_08069EF4(void *self)
{
    Coop *coop = (Coop *)((u8 *)*(void **)((u8 *)self + 0x120) + 0x410);
    return coop->CountChickens();
}
