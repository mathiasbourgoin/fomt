#include "prelude.h"

EC void IntrWait(u32 clear, u16 flags);

EC void func_08000568(u16 flags)
{
    IntrWait(1, flags);
}
