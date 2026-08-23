#include "prelude.h"

EC void func_08076EA8(void *);
EC void func_08093308(void *);
EC u32 func_080088C4(void *);
EC u32 func_080088CC(void *);
EC void func_080D0644(void *, u8);
EC void func_080D0454(u32);
EC void func_080D0444(void *, void *);
EC void func_080D0558(void *, void *, void *, void *);

#define IN_SECTION(address) __attribute__((section(".text.func_" #address)))

EC u32 func_080E1A48(void *) IN_SECTION(080E1A48);
EC u32 func_080E1A48(void *self) { func_08076EA8(self); return 1; }

EC void func_080E35DC(u8 *) IN_SECTION(080E35DC);
EC void func_080E35DC(u8 *self) { func_08093308(self - 8); }

EC u32 func_080E385C(u8 *) IN_SECTION(080E385C);
EC u32 func_080E385C(u8 *self) { return func_080088C4(self - 8); }

EC u32 func_080E3868(u8 *) IN_SECTION(080E3868);
EC u32 func_080E3868(u8 *self) { return func_080088CC(self - 8); }

EC void func_080E3A5C(void *, void *, u8) IN_SECTION(080E3A5C);
EC void func_080E3A5C(void *, void *value, u8 kind) { func_080D0644(value, kind); }

EC void func_080E3A6C(void *, void *, void *, void *, void *) IN_SECTION(080E3A6C);
EC void func_080E3A6C(void *, void *first, void *second, void *third, void *fourth)
{
    func_080D0558(first, second, third, fourth);
}

EC void func_080E3A80(void *) IN_SECTION(080E3A80);
EC void func_080E3A80(void *) { func_080D0454(0); }

EC void func_080E3A8C(void *, void *, void *) IN_SECTION(080E3A8C);
EC void func_080E3A8C(void *, void *first, void *second) { func_080D0444(first, second); }
