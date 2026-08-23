#include "prelude.h"

#define CLEAR_LOW_BIT(address, encoded_offset) \
    EC void func_##address(u8 *) __attribute__((section(".text.func_" #address))); \
    EC void func_##address(u8 *self) { \
        register u32 offset asm("r1") = encoded_offset; \
        asm("" : "+r"(offset)); \
        offset <<= 1; \
        asm("" : "+r"(offset)); \
        self += offset; \
        register u32 value asm("r2") = *self; \
        asm("" : "+r"(value)); \
        register u32 mask asm("r1") = 2; \
        asm("" : "+r"(mask)); \
        mask = -mask; \
        mask &= value; \
        *self = mask; \
    }

CLEAR_LOW_BIT(08050B3C, 0xEE)
CLEAR_LOW_BIT(08050C18, 0xF8)
