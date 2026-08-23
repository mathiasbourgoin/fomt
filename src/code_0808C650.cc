#include "prelude.h"

extern u32 vtable_unk_080E7D84[];
EC void func_080E3504(void *self);

EC void func_0808C650(void *self)
{
    register void *vtable asm("r2") = vtable_unk_080E7D84;
    *(void **)((u8 *)self + 4) = vtable;
    func_080E3504(self);
}
