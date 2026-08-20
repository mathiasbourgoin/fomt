// func_0806EA6C (0x0806EA6C) -- byte getter on the "selector widget" family
// documented in SESSION_NOTES.md round 6/7 as part of the New Game naming
// sequence (func_08004C68) support cast: reads a single byte field at
// offset 0x448 inside the sub-object pointed to by (*(self+4)). Sibling
// constructor is func_0806E9D8 (src/code_0806E9D8.cc), which allocates the
// 0x454-byte sub-object this getter reads from.
#include "prelude.h"

EC unsigned char func_0806EA6C(void *self)
{
    return *(unsigned char *)((char *)(*(void **)((char *)self + 4)) + 0x448);
}
