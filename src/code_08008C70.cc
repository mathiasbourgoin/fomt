#include "prelude.h"
#include "m4a.h"

EC void func_08008C70(void *self, i8 pan, u16 track_bits)
{
    m4aMPlayPanpotControl(
        (struct MusicPlayer *)*(void **)self, track_bits, pan);
}
