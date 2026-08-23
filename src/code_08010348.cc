#include "prelude.h"
#include <stdlib.h>

EC i32 func_08010348()
{
    i32 value;
    do {
        value = rand();
    } while (value == 0);
    return value;
}
