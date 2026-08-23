#include "prelude.h"

EC void func_080A198C(void *location);
EC void SetLocation__12AActorEntityRC13ActorLocation(void *self, void const *location);
EC u32 func_080378EC(void *self, u32 state);
EC void SetAnim__12AActorEntityUi(void *self, u32 anim);

EC void func_080378B8(void *self)
{
    u32 location[2];
    func_080A198C(location);
    SetLocation__12AActorEntityRC13ActorLocation(self, location);

    u32 anim = func_080378EC(self, 0);
    if (*(u16 *)((u8 *)self + 0x22) != anim)
        SetAnim__12AActorEntityUi(self, anim);
}
