#include "prelude.h"
#include "m4a.h"

EC void func_08008C28(void *self, u16 tempo)
{
    m4aMPlayTempoControl((struct MusicPlayer *)*(void **)self, tempo);
}
