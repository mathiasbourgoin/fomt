#include "prelude.h"

EC void func_0800080C(void *, int);

#define SCENE_DTOR_WRAPPER(address) \
    EC void func_##address(void *, int) __attribute__((section(".text.func_" #address))); \
    EC void func_##address(void *self, int in_chrg) { func_0800080C(self, in_chrg); }

SCENE_DTOR_WRAPPER(080D3C6C)
SCENE_DTOR_WRAPPER(080D4040)
SCENE_DTOR_WRAPPER(080D6D8C)
SCENE_DTOR_WRAPPER(080DB314)
SCENE_DTOR_WRAPPER(080DC1C8)
SCENE_DTOR_WRAPPER(080DC288)
