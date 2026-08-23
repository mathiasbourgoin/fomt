#include "prelude.h"
#include "hardware.hh"

struct Unk_hardware_H
{
    ~Unk_hardware_H();
};

EC Unk_hardware_H * func_08007128(Unk_hardware_H * self)
{
    if (gUnk_03000404 == nullptr)
    {
        gUnk_03000404 = new Unk_hardware_03000404;
    }

    gUnk_03000404->unk_4C++;

    return self;
}

EC Unk_hardware_H * func_08007174(Unk_hardware_H * self, Unk_hardware_H const & other)
{
    gUnk_03000404->unk_4C++;

    return self;
}

Unk_hardware_H::~Unk_hardware_H()
{
    gUnk_03000404->unk_4C--;

    if (gUnk_03000404->unk_4C == 0)
    {
        if (gUnk_03000404 != nullptr)
            delete gUnk_03000404;

        gUnk_03000404 = nullptr;
    }
}

EC void func_08007184(Unk_hardware_H * self) ALIAS(_._14Unk_hardware_H);

EC void func_080071BC(Unk_hardware_H * self, unsigned int from, unsigned int count)
{
    // https://decomp.me/scratch/e4deE (solved, but messy)

    (void)self;

    Unk_hardware_03000404 * h = gUnk_03000404;

    if (h->unk_51 != 0)
    {
        for (unsigned int i = h->unk_50, end = h->unk_50 + h->unk_51; i < end; i++)
        {
            if (h->inl_pred_0(i))
            {
                h->FreeEntry(&h->GetEntry(i));
                h->inl_func_0(i);
            }
        }

        h->unk_51 = 0;
    }

    if (count != 0)
    {
        unsigned int to = count + from;

        for (unsigned int i = 0; i < 0x10; i++)
        {
            if (h->inl_pred_0(i))
            {
                if (from <= i && i < to)
                {
                    h->GetEntry(i).params.unk_02 = 0;
                    h->FreeEntry(&h->GetEntry(i));
                    h->inl_func_0(i);
                    h->unk_48--;
                }
            }
        }

        unsigned int alloc_mask = 0;
        unsigned int target_mask = ((1 << count) - 1u) << from;

        for (;;)
        {
            Unk_hardware_ent_080D6D98 * ent = h->AllocEntry(h->unk_00);

            if (ent == nullptr)
                goto alloc_loop; /* break doesn't match D= */

            h->inl_func_1(h->IndexOf(ent));
            alloc_mask |= 1u << h->IndexOf(ent);

            if ((alloc_mask & target_mask) == target_mask)
                break;
        }

    alloc_loop:
        for (unsigned int i = 0; (alloc_mask & ~target_mask) != 0 && i < 0x10; i++)
        {
            unsigned int bit = 1u << i;

            if (alloc_mask & bit & ~target_mask)
            {
                h->FreeEntry(&h->GetEntry(i));
                h->inl_func_0(i);

                alloc_mask &= ~bit;
            }
        }

        h->unk_50 = from;
        h->unk_51 = count;
    }
}

EC unsigned int func_0800736C()
{
    register Unk_hardware_03000404 *h asm("r2") = gUnk_03000404;
    register Unk_hardware_ent_080D6D98 *entry asm("r3") = h->unk_00;
    register Unk_hardware_ent_080D6D98 *saved_entry asm("r5") = entry;
    register unsigned int result asm("r2");
    if (entry == nullptr)
        goto none;
    h->unk_00 = entry->next_free;
    if (entry == nullptr)
        goto none;

    {
    register int offset asm("r0") = (unsigned int)((u8 *)entry - 4);
    asm("" : "+r"(offset));
    offset -= (unsigned int)h;
    register unsigned int index asm("r4") = offset >> 2;
    if (index <= 0xf)
        h->unk_44 |= 1u << (index & 0x1f);
    register u16 *active asm("r1") = &h->unk_48;
    (*active)++;
    entry->params.unk_00 = 1;

    active++;
    register unsigned int generation asm("r0") = *active + 1;
    register unsigned int maximum asm("r2") = 0xffff;
    if (generation > maximum)
        generation = 1;
    saved_entry->params.unk_02 = generation;
    *active = generation;

    register unsigned int low_mask asm("r1") = 0xf;
    generation = saved_entry->params.unk_02;
    generation &= maximum;
    generation <<= 4;
    result = index;
    result &= low_mask;
    result |= generation;
    goto done;
    }

none:
    result = 0;
done:
    return result;
}
