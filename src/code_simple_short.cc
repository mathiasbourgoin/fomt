#include "prelude.h"

#define IN_SECTION(address) __attribute__((section(".text.func_" #address)))

EC u8 func_080B44E0(u8 *) IN_SECTION(080B44E0);
EC u8 func_080B44E0(u8 *self) { return self[0xb30]; }

EC u8 func_080BCCD4(u8 *) IN_SECTION(080BCCD4);
EC u8 func_080BCCD4(u8 *self) { return self[0x610]; }

EC void func_080CAC70(u32 *) IN_SECTION(080CAC70);
EC void func_080CAC70(u32 *self) { self[0] = 0; self[1] = 0; self[2] = 0; }

EC void func_08011510(u8 *) IN_SECTION(08011510);
EC void func_08011510(u8 *self)
{
    *(u32 *)(self + 0) = 0x10;
    *(u32 *)(self + 4) = 0x10;
    self[8] = 0;
}

extern u8 *gUnk_03000420;

EC void func_080D0444(u32, u32) IN_SECTION(080D0444);
EC void func_080D0444(u32 first, u32 second)
{
    register u8 *state asm("r2") = gUnk_03000420;
    *(u32 *)(state + 4) = first;
    *(u32 *)(state + 8) = second;
}

EC i32 func_080093A0(u8 **, u16) IN_SECTION(080093A0);
EC i32 func_080093A0(u8 **self, u16 value)
{
    register u8 *state asm("r2") = *self;
    register u32 old asm("r0") = *(u16 *)(state + 4);
    *(u16 *)(state + 4) = value;
    return (i16)old;
}
