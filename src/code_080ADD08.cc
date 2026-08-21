#include "prelude.h"

// Generic 32-byte (8-word) block, copied via the compiler's ldm/stm chunking.
// Layout unverified beyond its size -- kept opaque (no field names guessed).
struct Blob32
{
    u32 words[8];
};

// Copy-assignment-like helper: *dest = **src, returning dest (ignored by its
// only caller, in asm/code_0804E9C8.s).
EC Blob32 * func_080ADD08(Blob32 * dest, Blob32 ** src)
{
    *dest = **src;
    return dest;
}
