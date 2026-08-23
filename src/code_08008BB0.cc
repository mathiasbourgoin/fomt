#include "prelude.h"
#include "m4a.h"

EC void func_08008BB0(void *self, u16 song_num)
{
    struct Song *song = gSongTable[song_num].song;
    struct MusicPlayer *player = *(struct MusicPlayer **)self;

    if (player->song != song)
    {
        m4aMPlayStart(player, song);
    }
    else if ((i32)player->status < 0)
    {
        m4aMPlayContinue(player);
    }
}
