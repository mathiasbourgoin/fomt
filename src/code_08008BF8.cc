#include "prelude.h"
#include "m4a.h"

// Music-player handle wrapper paired with func_08008C08: normalize the speed
// to the callee's u16 ABI, dereference the handle, then forward unchanged.
EC void func_08008BF8(void *self, u16 speed)
{
    m4aMPlayFadeOut((struct MusicPlayer *)*(void **)self, speed);
}
