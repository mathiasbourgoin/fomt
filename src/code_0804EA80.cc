#include "prelude.h"

EC void func_080098AC(void *);
extern u8 vtable_unk_080E7868[];
extern u8 vtable_unk_080E7858[];
extern u8 vtable_unk_080E7848[];
extern u8 vtable_unk_080E7838[];

#define VTABLE_DTOR_WRAPPER(address, table) \
    EC void func_##address(u8 *) __attribute__((section(".text.func_" #address))); \
    EC void func_##address(u8 *self) { \
        register void *vtable asm("r2") = table; \
        *(void **)(self + 8) = vtable; \
        func_080098AC(self); \
    }

VTABLE_DTOR_WRAPPER(0804EA80, vtable_unk_080E7868)
VTABLE_DTOR_WRAPPER(0804EDA0, vtable_unk_080E7858)
VTABLE_DTOR_WRAPPER(0804EE1C, vtable_unk_080E7848)
VTABLE_DTOR_WRAPPER(0804EE88, vtable_unk_080E7838)
