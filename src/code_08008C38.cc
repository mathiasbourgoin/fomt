#include "prelude.h"
#include "m4a.h"

EC void func_08008C38(void *self, u16 volume, u16 track_bits)
{
    m4aMPlayVolumeControl(
        (struct MusicPlayer *)*(void **)self, track_bits, volume);
}
