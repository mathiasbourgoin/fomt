#include "prelude.h"

extern u16 gUnk_081078A0[];
extern u16 gUnk_0810827C[];

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
