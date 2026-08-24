    .syntax unified
    .cpu arm7tdmi
    .thumb

    @ Runtime-only proof flag. The BIOS clears EWRAM at reset, so OFF is the
    @ default. This scratch address is deliberately limited to the prototype;
    @ production integration must allocate owned state.
    .equ AUTO_ENTER_FLAG, 0x0203FFF0

    .equ BLOCKED_RESOLVER_RESUME, 0x08025375
    .equ GET_ACTOR_LOCATION, 0x0801FE95
    .equ BUILD_FRONT_BOX, 0x0802AB99
    .equ ACTION_RELEASE_HANDLER, 0x0802E0FD

    .global auto_enter_poc
    .type auto_enter_poc, %function
    .thumb_func
auto_enter_poc:
    @ Preserve the blocked-movement arguments, execute the exact original
    @ resolver through its relocated prologue, then apply the optional policy.
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    bl blocked_resolver_trampoline

    ldr r0, =AUTO_ENTER_FLAG
    ldrb r0, [r0]
    cmp r0, #0
    beq .Lreturn

    @ Reuse the vanilla front-tile query. Only terrain kind 100 reaches the
    @ vanilla upper-descriptor action handler; ordinary blocked tiles return.
    sub sp, #16
    mov r0, sp
    adds r1, r4, #0
    ldr r3, =GET_ACTOR_LOCATION
    bl call_via_r3

    add r0, sp, #8
    adds r1, r4, #0
    adds r2, r5, #0
    ldr r3, =BUILD_FRONT_BOX
    bl call_via_r3

    ldr r0, [r4]
    ldr r3, [r0]
    movs r2, #0x9A
    lsls r2, r2, #1
    adds r3, r3, r2
    ldr r3, [r3]
    mov r1, sp
    add r2, sp, #8
    bl call_via_r3
    cmp r0, #100
    bne .Lrelease_locals

    @ The original handler performs the upper-descriptor lookup and invokes
    @ func_0801D9A8 only when a valid event exists. It owns all queue details.
    adds r0, r4, #0
    movs r1, #0
    ldr r3, =ACTION_RELEASE_HANDLER
    bl call_via_r3

.Lrelease_locals:
    add sp, #16
.Lreturn:
    pop {r4, r5, r6}
    pop {r0}
    bx r0

    .thumb_func
blocked_resolver_trampoline:
    @ Instructions replaced by the eight-byte absolute hook at 0x0802536C.
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    ldr r3, =BLOCKED_RESOLVER_RESUME
    bx r3

    .thumb_func
call_via_r3:
    bx r3
