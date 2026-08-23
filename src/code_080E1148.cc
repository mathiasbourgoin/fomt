#include "prelude.h"

EC void func_080073E0(void *self, void *object);
EC void func_08007184(void *self, int in_chrg);
EC void func_08007C28(void *self, void *object);
EC void func_080079E8(void *self, int in_chrg);
EC void func_080086BC(void *self, int in_chrg);
extern u32 vtable_unk_080E5A28[];

EC void func_080E1148(void *self, int in_chrg)
{
    register u8 *saved asm("r5") = (u8 *)self;
    register int charge asm("r6") = in_chrg;
    register u8 *subobject asm("r4") = saved + 0xb0;
    func_080073E0(subobject, *(void **)(subobject + 4));
    func_08007184(subobject, 2);
    subobject -= 8;
    func_08007C28(subobject, *(void **)(subobject + 4));
    func_080079E8(subobject, 2);
    *(void ***)(saved + 0x10) = (void **)vtable_unk_080E5A28;
    func_080086BC(saved, charge);
}
