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

extern u32 gUnk_0811783C[];

EC void func_080CC134(u32 *, u32, u32) IN_SECTION(080CC134);
EC void func_080CC134(u32 *out, u32, u32 index)
{
    register u32 offset asm("r2") = index << 2;
    asm("" : "+r"(offset));
    register u32 table asm("r1") = (u32)gUnk_0811783C;
    register u32 address asm("r2") = offset + table;
    register u32 value asm("r1") = *(u32 *)address;
    *out = value;
}

extern u8 *gUnk_0300040C;

EC u32 func_08016D9C() IN_SECTION(08016D9C);
EC u32 func_08016D9C()
{
    register u8 *entry asm("r0") = gUnk_0300040C;
    entry += 0x36c;
    asm("" : "+r"(entry));
    return *(u32 *)(entry + 4);
}

EC void func_080D6F0C(u8 *) IN_SECTION(080D6F0C);
EC void func_080D6F0C(u8 *self)
{
    *(u32 *)(self + 8) = 0;
    *(u32 *)(self + 4) = 0;
    self[0] = 0;
    self[1] = 1;
}

EC void func_080D6F1C(u8 *) IN_SECTION(080D6F1C);
EC void func_080D6F1C(u8 *self)
{
    func_080D6F0C(self + 0x10);
    func_080D6F0C(self + 4);
    self[0] = 0;
    self[1] = 1;
}

EC void func_080D6F3C(u8 *) IN_SECTION(080D6F3C);
EC void func_080D6F3C(u8 *self)
{
    func_080D6F1C(self + 0x20);
    func_080D6F1C(self + 4);
    self[0] = 0;
    self[1] = 1;
}

EC void func_080D6F5C(u8 *) IN_SECTION(080D6F5C);
EC void func_080D6F5C(u8 *self)
{
    func_080D6F3C(self + 0x40);
    func_080D6F3C(self + 4);
    self[0] = 0;
    self[1] = 1;
}

EC void func_080522D8(u8 *, u8 *, u32) IN_SECTION(080522D8);
EC void func_080522D8(u8 *array, u8 *out, u32 index)
{
    u8 *entry = array + index * 4;
    out[0] = entry[0];
    *(u16 *)(out + 2) = *(u16 *)(entry + 2);
}

EC void func_080522E8(u8 *, u8 *, u32) IN_SECTION(080522E8);
EC void func_080522E8(u8 *array, u8 *value, u32 index)
{
    u8 *entry = array + index * 4;
    entry[0] = value[0];
    *(u16 *)(entry + 2) = *(u16 *)(value + 2);
}
