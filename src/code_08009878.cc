#include "prelude.h"
#include "gbasvc.h"

// 2 hidden functions surfaced by the fixed .byte-blob scanner (round
// w73), sandwiched between func_08009864 and func_080098AC in the same
// "sound API neighbourhood" file explored in round w70
// (asm/code_08008DE8.s, since split further -- see asm/code_080097A4.s).
//
// func_08009878: same OAM-shadow-buffer-flush idiom as func_08009790
// (self+4 copied to OAM via CpuFastSet, 0x100 words) immediately
// followed by a call to func_08009834 (still asm-only, not yet
// characterized).
EC void func_080097A4(void *self);
EC void func_08009834(void *self);

EC void func_08009878(void *self)
{
    CpuFastSet((u8 *)self + 4, (void *)0x07000000, 0x100);
    func_08009834(self);
}

// func_08009898: plain 2-call sequencer, self forwarded unchanged to
// both func_080097A4 and func_08009834.
EC void func_08009898(void *self)
{
    func_080097A4(self);
    func_08009834(self);
}
