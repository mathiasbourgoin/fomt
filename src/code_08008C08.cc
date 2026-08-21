#include "prelude.h"
#include "m4a.h"

// 2 uncatalogued siblings of func_08008BF8 (m4aMPlayFadeOut wrapper,
// still unported raw asm just above in asm/code_08008BF8.s): same
// (self, u16 speed) idiom, different target calls. Found by
// tools/scripts/scan_hidden_code_blobs_v2.py once its `block_pure_bytes`
// parsing bug was fixed this round (see src/code_08008AE8.cc).
EC void func_08008C08(void *self, u16 speed)
{
    m4aMPlayFadeOutTemporarily((struct MusicPlayer *)*(void **)self, speed);
}

EC void func_08008C18(void *self, u16 speed)
{
    m4aMPlayFadeIn((struct MusicPlayer *)*(void **)self, speed);
}
