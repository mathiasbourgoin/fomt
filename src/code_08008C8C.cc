#include "prelude.h"
#include "m4a.h"

EC void func_08008C8C(void *self, u8 mod_depth, u16 track_bits)
{
    m4aMPlayModDepthSet(
        (struct MusicPlayer *)*(void **)self, track_bits, mod_depth);
}
