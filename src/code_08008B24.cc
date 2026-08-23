#include "prelude.h"
#include "m4a.h"

extern char _M4aNumMusicPlayers[];

EC struct MusicPlayer *func_08008B24(u32 index)
{
    u16 count = (u16)_M4aNumMusicPlayers;
    if (index >= count)
        index %= count;
    return gMusicPlayerTable[index].music_player;
}
