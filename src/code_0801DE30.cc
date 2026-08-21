#include "prelude.h"

// Uncatalogued sibling of func_0801DE24 (same `push{lr}; ldr r0,[r0,#4];
// bl X; pop{r0}; bx r0` void-wrapper idiom, still unported raw asm just
// above), forwarding self->field4 to a different opaque callee. Found
// by tools/scripts/scan_hidden_code_blobs_v2.py once its
// `block_pure_bytes` parsing bug was fixed this round (see
// src/code_08008AE8.cc for the full writeup of that fix).
EC void *func_080AA89C(void *arg);

EC void func_0801DE30(void *self)
{
    func_080AA89C(((void **)self)[1]);
}
