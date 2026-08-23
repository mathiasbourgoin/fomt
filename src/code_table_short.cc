#include "prelude.h"

extern u16 gUnk_081078A0[];
extern u16 gUnk_0810827C[];
extern u16 gUnk_0810788A[];

#define TABLE_GETTER(address, table_symbol, field_offset) \
    EC u32 func_##address(u8 *) __attribute__((section(".text.func_" #address))); \
    EC u32 func_##address(u8 *self) { \
        register u16 *table asm("r1") = table_symbol; \
        register u32 offset asm("r2") = field_offset; \
        register u8 *field asm("r0") = self + offset; \
        register u32 index asm("r0") = *(u32 *)field; \
        return table[index]; \
    }

TABLE_GETTER(080B3A10, gUnk_081078A0, 0x934)
TABLE_GETTER(080C7B64, gUnk_0810827C, 0x984)

EC u16 func_080B39BC(u8 *, u32) __attribute__((section(".text.func_080B39BC")));
EC u16 func_080B39BC(u8 *self, u32 slot)
{
    register u16 *table asm("r2") = gUnk_0810788A;
    slot <<= 2;
    register u32 offset asm("r3") = 0x87;
    asm("" : "+r"(offset));
    offset <<= 4;
    register u8 *entry asm("r0") = self + offset + slot;
    register u32 index asm("r0") = *(u32 *)entry;
    index <<= 1;
    asm("add %0, %1" : "+r"(index) : "r"(table));
    return *(u16 *)index;
}
