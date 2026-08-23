#include "prelude.h"

struct __attribute__((packed)) Bits {
    u8 bit0 : 1;
    u8 bit1 : 1;
    u8 bit2 : 1;
    u8 bit3 : 1;
    u8 bit4 : 1;
    u8 bit5 : 1;
    u8 bit6 : 1;
    u8 bit7 : 1;
};

EC u32 func_0809E174(u8 *self) { return ((Bits *)(self + 0x624))->bit0; }
EC u32 func_0809E184(u8 *self) { return ((Bits *)(self + 0x625))->bit2; }
EC u32 func_0809E194(u8 *self) { return ((Bits *)(self + 0x625))->bit3; }
EC u32 func_0809E1A4(u8 *self) { return ((Bits *)(self + 0x625))->bit4; }
