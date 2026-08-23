#include "prelude.h"

EC void IntrWait(u32 clear, u16 flags);

EC void func_08000554(u16 flags)
{
    IntrWait(0, flags);
}
