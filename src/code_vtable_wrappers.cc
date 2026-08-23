#include "prelude.h"

EC void func_080E3504(void *);
EC void func_080C8360(void *);
extern u8 vtable_unk_080E7DD8[];
extern u8 vtable_unk_080E7D4C[];
extern u8 vtable_unk_080E7D30[];
extern u8 vtable_unk_080E7D14[];
extern u8 vtable_unk_080E7CE8[];
extern u8 vtable_unk_080E7C40[];

#define VTABLE_WRAPPER(address, table, destroy) \
    EC void func_##address(u8 *) __attribute__((section(".text.func_" #address))); \
    EC void func_##address(u8 *self) { \
        register void *vtable asm("r2") = table; \
        *(void **)(self + 4) = vtable; \
        destroy(self); \
    }

VTABLE_WRAPPER(08092690, vtable_unk_080E7DD8, func_080E3504)
VTABLE_WRAPPER(08088304, vtable_unk_080E7D4C, func_080E3504)
VTABLE_WRAPPER(0808562C, vtable_unk_080E7D30, func_080C8360)
VTABLE_WRAPPER(08083C50, vtable_unk_080E7D14, func_080C8360)
VTABLE_WRAPPER(08082250, vtable_unk_080E7CE8, func_080C8360)
VTABLE_WRAPPER(0807E508, vtable_unk_080E7C40, func_080C8360)
