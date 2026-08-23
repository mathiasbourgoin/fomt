#include "prelude.h"

EC void func_080A19EC(void *location);
EC void SetLocation__12AActorEntityRC13ActorLocation(void *self, void const *location);
EC u32 func_08037A38(void *self, u32 state);
EC void SetAnim__12AActorEntityUi(void *self, u32 anim);

EC void func_08037A04(void *self)
{
    u32 location[2];
    func_080A19EC(location);
    SetLocation__12AActorEntityRC13ActorLocation(self, location);

    u32 anim = func_08037A38(self, 0);
    if (*(u16 *)((u8 *)self + 0x22) != anim)
        SetAnim__12AActorEntityUi(self, anim);
}
