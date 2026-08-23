#include "prelude.h"

#define IN_SECTION(address) __attribute__((section(".text.func_" #address)))

EC u32 func_08021620(u32 value) IN_SECTION(08021620);
EC u32 func_08021620(u32 value)
{
    switch (value) {
    case 0:
        return 6;
    case 1:
        return 8;
    default:
        return 6;
    }
}

EC u32 func_08022B5C(u32 value) IN_SECTION(08022B5C);
EC u32 func_08022B5C(u32 value)
{
    switch (value) {
    case 0:
        return 6;
    case 1:
        return 7;
    default:
        return 6;
    }
}

EC u32 func_080237F0(u32 value) IN_SECTION(080237F0);
EC u32 func_080237F0(u32 value)
{
    if (value <= 1)
        return 1;
    if (value == 2)
        return 2;
    return 1;
}

EC u32 func_080244C4(u32 value) IN_SECTION(080244C4);
EC u32 func_080244C4(u32 value)
{
    switch (value) {
    case 0:
        return 1;
    case 1:
        return 2;
    default:
        return 1;
    }
}

EC u32 func_08023804(u32 value) IN_SECTION(08023804);
EC u32 func_08023804(u32 value)
{
    switch (value) {
    case 0:
        return 9;
    case 1:
        return 11;
    case 2:
        return 12;
    default:
        return 9;
    }
}

EC u32 func_080244D8(u32 value) IN_SECTION(080244D8);
EC u32 func_080244D8(u32 value)
{
    switch (value) {
    case 0:
        return 10;
    case 1:
        return 13;
    default:
        return 10;
    }
}
