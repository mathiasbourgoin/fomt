#include "prelude.h"

#include <stdlib.h>

typedef void (*AllocationHook)();
extern AllocationHook gUnk_03000CD4;

EC void *func_080D3BC0(u32 size)
{
    register u32 requested asm("r4") = size;
    register AllocationHook *handler_slot asm("r5") = &gUnk_03000CD4;
    for (;;) {
        register AllocationHook handler asm("r0") = *handler_slot;
        if (handler == nullptr) {
            for (;;) {
            }
        }
        handler();
        void *result = malloc(requested);
        if (result != nullptr)
            return result;
    }
}
