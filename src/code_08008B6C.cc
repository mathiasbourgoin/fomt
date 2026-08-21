#include "prelude.h"
#include "m4a.h"

// Same MusicPlayerEnt accessor family as asm/code_08008C28.s
// (func_08008C28..CC4) -- forwards to m4a's MPlayStart after resolving the
// song number through gSongTable.
EC void func_08008B6C(MusicPlayerEnt * self, u16 song_num)
{
    m4aMPlayStart(self->music_player, gSongTable[song_num].song);
}

// Sibling of func_08008B6C: only (re)starts the song if it isn't already
// the one playing, or if the music player is currently paused
// (MUSICPLAYER_STATUS_PAUSE, top bit of MusicPlayer::status).
EC void func_08008B88(MusicPlayerEnt * self, u16 song_num)
{
    struct Song * song = gSongTable[song_num].song;
    struct MusicPlayer * mp = self->music_player;

    if (mp->song != song || (i32) mp->status < 0)
    {
        m4aMPlayStart(mp, song);
    }
}
