#include "prelude.h"

// 2 uncatalogued sibling stubs, byte-for-byte identical to each other,
// sitting right after func_080E10EC (`return 1;`, still unported raw
// asm just above). Found by tools/scripts/scan_hidden_code_blobs_v2.py
// once its `block_pure_bytes` parsing bug was fixed this round (see
// src/code_08008AE8.cc for the full writeup of that fix).
EC int func_080E10F0(void)
{
    return 0;
}

EC int func_080E10F4(void)
{
    return 0;
}
