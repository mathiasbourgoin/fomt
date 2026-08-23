#include "prelude.h"

EC void func_08076E0C(void *self);
extern u8 vtable_unk_080E7B2C[];
extern u8 vtable_unk_080E5A28[];

#define VTABLE_TAIL_WRAPPER(address, field_offset, table) \
    EC void func_##address(u8 *) __attribute__((section(".text.func_" #address))); \
    EC void func_##address(u8 *self) { \
        register u32 offset asm("r2") = field_offset; \
        asm("" : "+r"(offset)); \
        register void **slot asm("r3") = (void **)(self + offset); \
        register void *vtable asm("r2") = table; \
        *slot = vtable; \
        func_08076E0C(self); \
    }

VTABLE_TAIL_WRAPPER(08070C88, 0x5B4, vtable_unk_080E7B2C)
VTABLE_TAIL_WRAPPER(080E1A54, 0x9C4, vtable_unk_080E5A28)
