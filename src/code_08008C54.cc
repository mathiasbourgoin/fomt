#include "prelude.h"
#include "m4a.h"

EC void func_08008C54(void *self, i16 pitch, u16 track_bits)
{
    m4aMPlayPitchControl(
        (struct MusicPlayer *)*(void **)self, track_bits, pitch);
}
