// func_08050E50 (0x08050E50) -- thin handle-forwarding wrapper, part of a
// small cluster of tail-call thunks living right after TransitionCtlQuery
// (func_08050DF0, see src/code_08050DF0.cc) in what was originally
// asm/code_0804E9C8.s. Same handle shape as TransitionCtlQuery: `self`'s
// first word is a pointer to the real object; this wrapper just derefs it
// and tail-forwards to func_08050AD8 together with the second argument
// untouched. Plain pointer-chasing C, no vtable/`this` evidence.
#include "prelude.h"

EC void func_08050AD8(void *self, u32 arg1);

EC void func_08050E50(void *self, u32 arg1)
{
    func_08050AD8(*(void **)self, arg1);
}
