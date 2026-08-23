#include "input.hh"

EC void func_08009154(void *);

EC InputState *func_08009140(InputState *) __attribute__((section(".text.func_08009140")));
EC InputState *func_08009140(InputState *self)
{
    self->held = func_0800912C();
    return self;
}

EC u32 func_08009158(InputState *out)
{
    u32 value = func_0800912C();
    out->held = value;
    return value;
}

EC InputState *func_08009168(InputState *self)
{
    func_08009140(self);
    self->pressed = self->held;
    return self;
}

EC InputState *func_0800917C(InputState *self)
{
    func_08009154(self);
    self->pressed = self->held;
    return self;
}

EC u32 func_08009190(InputState *self)
{
    u32 previous = self->held;
    u32 value = func_08009158(self);
    value &= ~previous;
    self->pressed = value;
    return value;
}
