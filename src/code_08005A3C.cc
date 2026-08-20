// func_08005A3C (0x08005A3C) -- byte getter on the "confirm screen" widget
// family (SESSION_NOTES.md round 6: func_0800598C/func_08005A00/
// func_08005A3C/func_080059D0), sibling of func_08007110/func_08005A3C's
// counterpart in the text-capture widget family. Reads a single byte at
// offset 0x1A76 from the sub-object pointed to by self->field4.
#include "prelude.h"

EC unsigned char func_08005A3C(void *self)
{
    return *(unsigned char *)((char *)(*(void **)((char *)self + 4)) + 0x1A76);
}
