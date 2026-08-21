#include "prelude.h"

extern "C" i32 __divsi3(i32, i32);

// Fixed-point affine/rotation-matrix helper, in the style of the GBA BIOS
// ObjAffineSet: given a 2x2 matrix of Q8.8-ish coefficients (angle_coeffs,
// rescaled below by *17/16 -- factor/origin of this scale not otherwise
// elucidated) and a width/height pair, solves for the (x, y) delta that
// keeps (width/2, height/2) mapped to itself under the linear transform,
// and accumulates that delta into *out_x/*out_y. Used by the 2-sprite
// compositor func_0805E99C to re-derive an affine sprite's position from
// its current rotation/scale state.
extern "C" void func_0805EC24(i32 *out_x, i32 *out_y, u32 width, u32 height, i16 *angle_coeffs)
{
    i32 cx = (*out_x + (i32)(width >> 1)) << 8;
    i32 cy = (*out_y + (i32)(height >> 1)) << 8;

    i16 c0 = (i16)(angle_coeffs[0] * 17 * 16 / 256);
    i16 c1 = (i16)(angle_coeffs[1] * 17 * 16 / 256);
    i16 c2 = (i16)(angle_coeffs[2] * 17 * 16 / 256);
    i16 c3 = (i16)(angle_coeffs[3] * 17 * 16 / 256);

    i32 det = (i32)(c0 * c3 - c1 * c2) / 256;
    if (det == 0)
        return;

    i32 num_x = c3 * cx - c1 * cy;
    i32 num_y = c0 * cy - c2 * cx;

    i32 rx, ry;
    if (det == 0x100)
    {
        rx = num_x / 256;
        ry = num_y / 256;
    }
    else if (det == -0x100)
    {
        rx = num_x / 256;
        rx = -rx;
        ry = num_y / 256;
        ry = -ry;
    }
    else
    {
        rx = __divsi3(num_x, det);
        ry = __divsi3(num_y, det);
    }

    *out_x += (rx - cx) >> 8;
    *out_y += (ry - cy) >> 8;
}
