#include "prelude.h"
#include "m4a.h"

// Uncatalogued sibling of func_08008BE0 (m4aMPlayStop wrapper, still
// unported raw asm just above this in asm/code_08008BF8.s's predecessor
// fragment): same idiom, different target call. Found by
// tools/scripts/scan_hidden_code_blobs_v2.py once its `block_pure_bytes`
// parsing bug was fixed this round (see src/code_08008AE8.cc).
EC void func_08008BEC(void *self)
{
    m4aMPlayContinue((struct MusicPlayer *)*(void **)self);
}
