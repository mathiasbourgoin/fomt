    .syntax unified
    .cpu arm7tdmi
    .thumb

    @ Shared persistent setting record at the end of the verified unused SRAM
    @ sector. Invalid or absent records always mean Original mode (OFF).
    .equ DEFINITIVE_SETTINGS, 0x0E007FF8

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

    bl definitive_mode_enabled
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

    .global definitive_mode_enabled
    .type definitive_mode_enabled, %function
    .thumb_func
definitive_mode_enabled:
    ldr r1, =DEFINITIVE_SETTINGS
    ldrb r0, [r1, #0]
    cmp r0, #'D'
    bne .Lmode_off
    ldrb r0, [r1, #1]
    cmp r0, #'F'
    bne .Lmode_off
    ldrb r0, [r1, #2]
    cmp r0, #'M'
    bne .Lmode_off
    ldrb r0, [r1, #3]
    cmp r0, #'D'
    bne .Lmode_off
    ldrb r0, [r1, #4]
    cmp r0, #1
    bne .Lmode_off

    movs r3, #0
    movs r0, #0
.Lchecksum_loop:
    ldrb r2, [r1, r0]
    adds r3, r3, r2
    adds r0, #1
    cmp r0, #6
    bne .Lchecksum_loop
    ldrb r0, [r1, #7]
    lsls r0, r0, #8
    ldrb r2, [r1, #6]
    orrs r0, r2
    cmp r3, r0
    bne .Lmode_off

    ldrb r0, [r1, #5]
    movs r1, #1
    ands r0, r1
    bx lr

.Lmode_off:
    movs r0, #0
    bx lr

    .global definitive_mode_store
    .type definitive_mode_store, %function
    .thumb_func
definitive_mode_store:
    movs r2, #1
    ands r0, r2
    adds r3, r0, #0
    ldr r1, =DEFINITIVE_SETTINGS

    @ Invalidate first, then publish the leading magic byte last.
    movs r2, #0
    strb r2, [r1, #0]
    movs r2, #'F'
    strb r2, [r1, #1]
    movs r2, #'M'
    strb r2, [r1, #2]
    movs r2, #'D'
    strb r2, [r1, #3]
    movs r2, #1
    strb r2, [r1, #4]
    strb r3, [r1, #5]

    movs r2, #0x8E
    lsls r2, r2, #1
    adds r2, r2, r3
    strb r2, [r1, #6]
    lsrs r2, r2, #8
    strb r2, [r1, #7]
    movs r2, #'D'
    strb r2, [r1, #0]
    adds r0, r3, #0
    bx lr
