#include "prelude.h"
#include "m4a.h"

// func_08008CD0: one of a family of thin MusicPlayerEnt accessors that all
// forward to the m4a music engine (func_08008C28..CC4, same file/struct,
// see asm/code_08008C28.s) -- this one has no m4a call, it just reads the
// MUSICPLAYER_STATUS_PAUSE bit (0x80000000, top bit of MusicPlayer::status)
// straight out of the attached MusicPlayer and reports "not paused".
EC u32 func_08008CD0(MusicPlayerEnt * self)
{
    return ((u32) self->music_player->status >> 31) ^ 1;
}
