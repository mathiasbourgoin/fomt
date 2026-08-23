#include "prelude.h"
#include "m4a.h"

EC void func_08008CA8(void *self, u8 lfo_speed, u16 track_bits)
{
    m4aMPlayLFOSpeedSet(
        (struct MusicPlayer *)*(void **)self, track_bits, lfo_speed);
}
