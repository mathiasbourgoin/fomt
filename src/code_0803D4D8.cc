#include "prelude.h"

struct InputControllerVTable
{
    void *slots[7];
    i32 (*GetX)(void *self);
    i32 (*GetY)(void *self);
};

struct InputController
{
    void *object;
    InputControllerVTable *vtable;
    u8 movement[1];
};

EC void *func_0803BEB0(void *self, void *arg_r1, void *arg_r2, void *arg_r3);
EC void func_0803C7C8(void *self, i32 x, i32 y, void *input, void *context);

EC i32 func_0803D4D8(
    InputController *self,
    void *input,
    void *arg_r2,
    void *context,
    void *arg_stack)
{
    void *saved_context = context;
    register i32 result asm("r6") =
        (i32)func_0803BEB0(self, arg_r2, saved_context, arg_stack);
    asm("" : "+r"(result));
    if (result == 3)
    {
        i32 x = self->vtable->GetX(self);
        i32 y = self->vtable->GetY(self);
        func_0803C7C8(self->movement, x, y, input, saved_context);
    }
    return result;
}
