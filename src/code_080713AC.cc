#include "prelude.h"

EC void func_08070CA4(void *);

#define TRUE_WRAPPER(address) \
    EC u32 func_##address(void *) __attribute__((section(".text.func_" #address))); \
    EC u32 func_##address(void *self) { func_08070CA4(self); return 1; }

TRUE_WRAPPER(080713AC)
TRUE_WRAPPER(080722D0)
TRUE_WRAPPER(08075328)
