#include "prelude.h"

EC void func_080098AC(void *);

#define ENTITY_DTOR_WRAPPER(address) \
    EC void func_##address(void *self) { func_080098AC(self); }

ENTITY_DTOR_WRAPPER(080E1018)
ENTITY_DTOR_WRAPPER(080E1024)
ENTITY_DTOR_WRAPPER(080E1030)
