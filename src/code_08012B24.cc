#include "prelude.h"

struct PendingEvent
{
    u32 words[2];
};

struct PendingEventQueue
{
    u32 count;
    PendingEvent events[1];
};

extern u8 *gUnk_0300040C;

EC void func_08012B24(void *, PendingEvent const &event, i32 queue_id)
{
    register u8 *state asm("r3") = gUnk_0300040C;
    register PendingEventQueue *small_queue asm("r4") =
        (PendingEventQueue *)(state + 0x378);
    PendingEventQueue *queue;
    PendingEvent *destination;
    asm("" : "+r"(state), "+r"(small_queue));

    switch (queue_id)
    {
    case 0:
    {
        if (small_queue->count > 1)
            return;
        PendingEvent *small_destination = &small_queue->events[small_queue->count];
        if (small_destination != nullptr)
            *small_destination = event;
        ++small_queue->count;
        return;
    }

    case 1:
        queue = (PendingEventQueue *)(state + 0x38C);
        if (queue->count > 39)
            return;
        destination = &queue->events[queue->count];
        break;

    case 2:
        queue = (PendingEventQueue *)(state + 0x4D0);
        if (queue->count != 0)
            return;
        destination = (PendingEvent *)(state + 0x4D4);
        break;

    default:
        return;
    }

    if (destination != nullptr)
        *destination = event;
    ++queue->count;
}
