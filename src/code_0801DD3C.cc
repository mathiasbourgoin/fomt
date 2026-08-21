#include "prelude.h"

// 5 hidden wrapper functions surfaced by the fixed .byte-blob scanner
// (round w73), packed back-to-back in the 60-byte gap between
// func_0801DD30 and func_0801DD78 in asm/code_08012028.s. Identical
// idiom repeated 5 times, matching the already-ported func_0801DD30
// immediately before them: dereference self+4 (a pointer field) and
// forward it to a distinct target function -- only the callee differs
// each time. No known bl caller anywhere in asm/*.s.
EC void func_080A6234(void *self);
EC void func_080A6278(void *self);
EC void func_080A62BC(void *self);
EC void func_080A607C(void *self);
EC void func_080A6024(void *self);

EC void func_0801DD3C(void *self)
{
    func_080A6234(*(void **)((u8 *)self + 4));
}

EC void func_0801DD48(void *self)
{
    func_080A6278(*(void **)((u8 *)self + 4));
}

EC void func_0801DD54(void *self)
{
    func_080A62BC(*(void **)((u8 *)self + 4));
}

EC void func_0801DD60(void *self)
{
    func_080A607C(*(void **)((u8 *)self + 4));
}

EC void func_0801DD6C(void *self)
{
    func_080A6024(*(void **)((u8 *)self + 4));
}
