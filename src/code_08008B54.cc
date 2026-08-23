#include "prelude.h"
#include "m4a.h"

EC struct MusicPlayer *func_08008B24(u32 index);

EC void *func_08008B54(void *self, u8 index)
{
    *(struct MusicPlayer **)self = func_08008B24(index);
    return self;
}
