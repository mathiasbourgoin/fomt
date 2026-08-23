.INCLUDE "asm/macro.inc"
.SYNTAX UNIFIED

	thumb_func_start func_08085584
func_08085584: @ 0x08085584
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	bl func_080C7F58
	ldr r0, .L080855A4 @ =vtable_unk_080E7D30
	str r0, [r5, #4]
	ldr r0, .L080855A8 @ =0x000006A4
	adds r1, r5, r0
	cmp r4, #0
	beq .L080855B2
	cmp r4, #1
	beq .L080855AC
	movs r0, #6
	str r0, [r1]
	b .L080855B4
	.align 2, 0
.L080855A4: .4byte vtable_unk_080E7D30
.L080855A8: .4byte 0x000006A4
.L080855AC:
	movs r0, #5
	str r0, [r1]
	b .L080855B4
.L080855B2:
	str r4, [r1]
.L080855B4:
	movs r1, #0xd5
	lsls r1, r1, #3
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	ldr r2, .L08085618 @ =0x0000072C
	adds r0, r5, r2
	str r1, [r0]
	movs r0, #0x10
	ldr r7, .L0808561C @ =gUnk_080FFC6C
	subs r1, #1
.L080855CA:
	subs r0, #1
	cmp r0, r1
	bne .L080855CA
	ldr r0, .L08085620 @ =0x00003AB4
	adds r6, r5, r0
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x7f
	bls .L080855E2
	movs r4, #0x7f
.L080855E2:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
	ldr r2, .L08085624 @ =0x00003B34
	adds r1, r5, r2
	movs r0, #0
	strb r0, [r1]
	ldr r1, .L08085628 @ =0x00003B98
	adds r0, r5, r1
	movs r1, #0xf
	movs r3, #0
	movs r2, #1
	rsbs r2, r2, #0
.L08085606:
	strb r3, [r0, #4]
	adds r0, #0x84
	subs r1, #1
	cmp r1, r2
	bne .L08085606
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08085618: .4byte 0x0000072C
.L0808561C: .4byte gUnk_080FFC6C
.L08085620: .4byte 0x00003AB4
.L08085624: .4byte 0x00003B34
.L08085628: .4byte 0x00003B98

	.if 0
	thumb_func_start func_0808562C
func_0808562C: @ 0x0808562C
	push {lr}
	ldr r2, .L0808563C @ =vtable_unk_080E7D30
	str r2, [r0, #4]
	bl func_080C8360
	pop {r0}
	bx r0
	.align 2, 0
.L0808563C: .4byte vtable_unk_080E7D30

	.endif
	.section .text.tail08085640, "ax", %progbits
	thumb_func_start func_08085640
func_08085640: @ 0x08085640
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xec
	adds r6, r0, #0
	movs r0, #4
	str r0, [sp, #0xd8]
	adds r3, r6, #0
	adds r3, #0x20
	adds r5, r6, #0
	adds r5, #0x24
	ldr r0, [r6, #0x20]
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r3, r0
	adds r2, r0, #0
	adds r1, r5, #0
	ldr r4, [r3]
	cmp r1, r2
	beq .L08085672
.L0808566C:
	adds r1, #0x10
	cmp r1, r2
	bne .L0808566C
.L08085672:
	subs r0, r0, r5
	asrs r0, r0, #4
	subs r0, r4, r0
	str r0, [r3]
	movs r1, #0
	str r1, [sp, #0xdc]
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r0, [r0]
	cmp r1, r0
	blo .L0808568C
	b .L08085854
.L0808568C:
	mov r3, sp
	adds r3, #0x1c
	str r3, [sp, #0xe4]
	movs r5, #0
	movs r4, #4
	str r4, [sp, #0xe8]
.L08085698:
	movs r7, #0xa9
	lsls r7, r7, #2
	adds r0, r6, r7
	ldr r1, [sp, #0xe8]
	adds r0, r0, r1
	ldr r3, [r0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #2
	ldr r2, .L0808574C @ =gUnk_080FFB90
	add r0, sp, #8
	adds r1, r1, r2
	ldm r1!, {r2, r4, r7}
	stm r0!, {r2, r4, r7}
	ldm r1!, {r2, r4}
	stm r0!, {r2, r4}
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, #0xd0
	str r0, [sp, #0xe0]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq .L080856CE
	cmp r0, #2
	beq .L080856CE
	b .L080857D6
.L080856CE:
	movs r0, #0x10
	ldr r7, [sp, #0xe4]
	str r0, [r7, #4]
	add r4, sp, #0x2c
	adds r0, r4, #0
	ldr r1, .L08085750 @ =gUnk_086678A0
	bl func_0805E6CC
	add r0, sp, #0x5c
	strh r5, [r0]
	strh r5, [r0, #2]
	add r0, sp, #0x60
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	add r0, sp, #0x74
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	movs r1, #0
	strb r1, [r0, #0x10]
	strb r1, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r1, [r0, #0x18]
	add r0, sp, #0x90
	strb r1, [r0]
	add r3, sp, #0x94
	str r5, [r3]
	strh r5, [r3, #4]
	add r2, sp, #0x9c
	str r5, [r2]
	strh r5, [r2, #4]
	add r1, sp, #0xa4
	str r5, [r1]
	strh r5, [r1, #4]
	add r0, sp, #0xac
	str r5, [r0]
	strh r5, [r0, #4]
	ldr r4, [sp, #0xd8]
	lsls r0, r4, #3
	strh r0, [r7]
	ldr r0, [sp, #0x18]
	add r7, sp, #0x1c
	mov r8, r3
	mov sb, r2
	mov sl, r1
	cmp r0, #0
	bne .L08085754
	add r4, sp, #0xd4
	ldr r1, [sp, #8]
	adds r0, r4, #0
	bl __7ArticleUi
	adds r0, r4, #0
	bl GetIconId__C7Article
	b .L08085766
	.align 2, 0
.L0808574C: .4byte gUnk_080FFB90
.L08085750: .4byte gUnk_086678A0
.L08085754:
	mov r4, sp
	adds r4, #0xd5
	ldr r1, [sp, #8]
	adds r0, r4, #0
	bl __4ToolUi
	adds r0, r4, #0
	bl GetIconId__C4Tool
.L08085766:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	add r4, sp, #0x60
	adds r0, r4, #0
	bl func_0805E860
	ldr r1, [sp, #0x60]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r0, [sp, #0x64]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0xb4
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r4, sp, #0xb4
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	mov r0, r8
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2}
	stm r0!, {r1, r2}
	mov r3, sb
	ldr r0, [r3]
	str r0, [r7, #8]
	mov r4, sl
	ldr r0, [r4]
	str r0, [r7, #0xc]
	adds r1, r6, #0
	adds r1, #0x20
	ldr r0, [r6, #0x20]
	cmp r0, #0x27
	bhi .L080857D2
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	beq .L080857CC
	adds r1, r7, #0
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [sp, #0x28]
	str r1, [r0]
.L080857CC:
	ldr r0, [r6, #0x20]
	adds r0, #1
	str r0, [r6, #0x20]
.L080857D2:
	ldr r0, .L08085868 @ =vtable_unk_080E5A28
	str r0, [sp, #0x2c]
.L080857D6:
	ldr r0, [r6, #0x1c]
	ldr r0, [r0, #0x18]
	ldr r7, [sp, #0xd8]
	lsls r4, r7, #6
	adds r0, r0, r4
	adds r0, #4
	ldr r2, [sp, #0xe0]
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0
	mov sb, r3
	str r3, [sp]
	movs r7, #0x20
	str r7, [sp, #4]
	movs r2, #0xc
	movs r3, #2
	bl func_0804E9F4
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r0, r0, r6
	mov r8, r0
	ldr r0, [sp, #0xe8]
	add r0, r8
	ldr r0, [r0]
	cmp r0, #6
	bhi .L08085838
	ldr r0, [r6, #0x1c]
	ldr r1, [r0, #0x18]
	adds r1, r1, r4
	adds r1, #0x32
	ldr r0, [sp, #0x10]
	str r7, [sp]
	movs r2, #0xa0
	movs r3, #0
	bl func_0804EDB4
	ldr r0, [r6, #0x1c]
	ldr r0, [r0, #0x18]
	adds r0, r0, r4
	adds r0, #0x34
	mov r1, sb
	str r1, [sp]
	str r7, [sp, #4]
	movs r1, #0x20
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
.L08085838:
	ldr r2, [sp, #0xd8]
	adds r2, #2
	str r2, [sp, #0xd8]
	ldr r3, [sp, #0xe8]
	adds r3, #4
	str r3, [sp, #0xe8]
	ldr r4, [sp, #0xdc]
	adds r4, #1
	str r4, [sp, #0xdc]
	mov r7, r8
	ldr r0, [r7]
	cmp r4, r0
	bhs .L08085854
	b .L08085698
.L08085854:
	ldr r0, [sp, #0xd8]
	add sp, #0xec
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08085868: .4byte vtable_unk_080E5A28

	thumb_func_start func_0808586C
func_0808586C: @ 0x0808586C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x78
	adds r7, r0, #0
	str r1, [sp, #0x50]
	movs r0, #4
	str r0, [sp, #0x54]
	adds r4, r7, #0
	adds r4, #0x20
	adds r6, r7, #0
	adds r6, #0x24
	ldr r0, [r7, #0x20]
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r4, r0
	adds r2, r0, #0
	adds r1, r6, #0
	ldr r5, [r4]
	ldr r3, [r7, #8]
	cmp r1, r2
	beq .L080858A2
.L0808589C:
	adds r1, #0x10
	cmp r1, r2
	bne .L0808589C
.L080858A2:
	subs r0, r0, r6
	asrs r0, r0, #4
	subs r0, r5, r0
	str r0, [r4]
	movs r1, #0
	str r1, [sp, #0x58]
	b .L08085E8A
.L080858B0:
	movs r2, #0
	str r2, [sp, #0x5c]
	movs r3, #0
	str r3, [sp, #0x60]
	ldr r4, [sp, #0x50]
	cmp r4, #0x1e
	bne .L080858CE
	ldr r0, [r7, #8]
	movs r5, #0xbe
	lsls r5, r5, #3
	adds r0, r0, r5
	bl GetCow__4BarnUi
	str r0, [sp, #0x5c]
	b .L080858DC
.L080858CE:
	ldr r0, [r7, #8]
	movs r6, #0xbe
	lsls r6, r6, #3
	adds r0, r0, r6
	bl GetSheep__4BarnUi
	str r0, [sp, #0x60]
.L080858DC:
	movs r0, #0x10
	str r0, [sp, #0x10]
	add r1, sp, #0xc
	ldr r2, [sp, #0x54]
	lsls r0, r2, #3
	strh r0, [r1]
	ldr r3, [sp, #0x50]
	cmp r3, #0x1e
	bne .L08085900
	ldr r0, .L080858F8 @ =gUnk_08751B4C
	str r0, [sp, #0x14]
	ldr r0, .L080858FC @ =gUnk_08751BCC
	b .L08085906
	.align 2, 0
.L080858F8: .4byte gUnk_08751B4C
.L080858FC: .4byte gUnk_08751BCC
.L08085900:
	ldr r0, .L08085964 @ =gUnk_0875320C
	str r0, [sp, #0x14]
	ldr r0, .L08085968 @ =gUnk_0875328C
.L08085906:
	str r0, [sp, #0x18]
	ldr r0, [r7, #0x20]
	adds r4, r7, #0
	adds r4, #0x20
	cmp r0, #0x27
	bhi .L0808592C
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r4, r0
	cmp r0, #0
	beq .L08085926
	add r1, sp, #0xc
	ldm r1!, {r2, r5, r6}
	stm r0!, {r2, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08085926:
	ldr r0, [r7, #0x20]
	adds r0, #1
	str r0, [r7, #0x20]
.L0808592C:
	ldr r3, [sp, #0x50]
	cmp r3, #0x1e
	bne .L08085974
	ldr r0, [sp, #0x5c]
	bl IsFestivalWinner__C6Animal
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080859AC
	movs r0, #0x20
	str r0, [sp, #0x10]
	ldr r0, .L0808596C @ =gUnk_0875196C
	str r0, [sp, #0x14]
	ldr r0, .L08085970 @ =gUnk_087519EC
	str r0, [sp, #0x18]
	ldr r0, [r7, #0x20]
	cmp r0, #0x27
	bhi .L080859AC
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r4, r0
	cmp r0, #0
	beq .L080859A6
	add r1, sp, #0xc
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	b .L080859A2
	.align 2, 0
.L08085964: .4byte gUnk_0875320C
.L08085968: .4byte gUnk_0875328C
.L0808596C: .4byte gUnk_0875196C
.L08085970: .4byte gUnk_087519EC
.L08085974:
	ldr r0, [sp, #0x60]
	bl IsFestivalWinner__C6Animal
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080859AC
	movs r0, #0x20
	str r0, [sp, #0x10]
	ldr r0, .L08085A0C @ =gUnk_0875196C
	str r0, [sp, #0x14]
	ldr r0, .L08085A10 @ =gUnk_087519EC
	str r0, [sp, #0x18]
	ldr r0, [r7, #0x20]
	cmp r0, #0x27
	bhi .L080859AC
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r4, r0
	cmp r0, #0
	beq .L080859A6
	add r1, sp, #0xc
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
.L080859A2:
	ldr r1, [r1]
	str r1, [r0]
.L080859A6:
	ldr r0, [r7, #0x20]
	adds r0, #1
	str r0, [r7, #0x20]
.L080859AC:
	ldr r5, [sp, #0x58]
	lsls r4, r5, #1
	adds r0, r4, r5
	lsls r0, r0, #6
	adds r0, r0, r5
	lsls r5, r0, #2
	adds r1, r5, r7
	add r0, sp, #0x2c
	movs r6, #0xc
	movs r2, #2
	mov r8, r2
	movs r3, #0
	mov sb, r3
	strh r6, [r0]
	mov r2, r8
	strh r2, [r0, #2]
	ldr r0, [sp, #0x2c]
	ldr r3, .L08085A14 @ =0x00000774
	adds r1, r1, r3
	movs r2, #0
	bl func_0804E7A0
	ldr r0, [sp, #0x50]
	cmp r0, #0x1e
	bne .L08085A18
	ldr r0, [sp, #0x5c]
	bl GetName__C6Animal
	adds r2, r0, #0
	adds r1, r5, r7
	add r0, sp, #0x30
	strh r6, [r0]
	mov r3, r8
	strh r3, [r0, #2]
	ldr r0, [sp, #0x30]
	ldr r5, .L08085A14 @ =0x00000774
	adds r1, r1, r5
	str r2, [sp]
	mov r6, sb
	str r6, [sp, #4]
	movs r2, #1
	str r2, [sp, #8]
	movs r2, #0
	movs r3, #0
	bl func_0804E958
	b .L08085A42
	.align 2, 0
.L08085A0C: .4byte gUnk_0875196C
.L08085A10: .4byte gUnk_087519EC
.L08085A14: .4byte 0x00000774
.L08085A18:
	ldr r0, [sp, #0x60]
	bl GetName__C6Animal
	adds r2, r0, #0
	adds r1, r5, r7
	add r0, sp, #0x34
	strh r6, [r0]
	mov r3, r8
	strh r3, [r0, #2]
	ldr r0, [sp, #0x34]
	ldr r5, .L08085AB8 @ =0x00000774
	adds r1, r1, r5
	str r2, [sp]
	mov r6, sb
	str r6, [sp, #4]
	movs r2, #1
	str r2, [sp, #8]
	movs r2, #0
	movs r3, #0
	bl func_0804E958
.L08085A42:
	ldr r1, [sp, #0x58]
	adds r1, #9
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0xd0
	mov sl, r0
	adds r0, r7, #0
	bl func_08008910
	ldr r3, [sp, #0x58]
	adds r1, r4, r3
	lsls r1, r1, #6
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r7
	ldr r4, .L08085AB8 @ =0x00000774
	adds r1, r1, r4
	adds r5, r0, #0
	mov r6, sl
	lsls r2, r6, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #0x1c
	movs r3, #0xc0
	lsls r3, r3, #2
	bl func_08008F0C
	add r1, sp, #0x1c
	mov sb, r1
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L08085ABC
	cmp r1, #0
	beq .L08085A98
	adds r0, r1, #0
	add r1, sp, #0x1c
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08085A98:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	ldr r5, [sp, #0x54]
	lsls r5, r5, #6
	str r5, [sp, #0x6c]
	mov r6, sl
	lsls r6, r6, #0x10
	mov sl, r6
	ldr r0, [sp, #0x54]
	adds r0, #2
	str r0, [sp, #0x68]
	ldr r1, [sp, #0x58]
	adds r1, #1
	str r1, [sp, #0x64]
	b .L08085BA6
	.align 2, 0
.L08085AB8: .4byte 0x00000774
.L08085ABC:
	str r1, [sp, #0x74]
	movs r2, #1
	str r2, [sp, #0x3c]
	ldr r0, [r5]
	adds r3, r1, #0
	subs r0, r3, r0
	asrs r4, r0, #4
	str r4, [sp, #0x38]
	add r1, sp, #0x3c
	add r0, sp, #0x38
	cmp r4, #1
	bhs .L08085AD6
	adds r0, r1, #0
.L08085AD6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08085AF4
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	str r4, [sp, #0x70]
	cmp r0, #0
	bne .L08085AFA
	adds r0, r4, #0
	bl func_080D3BC0
	b .L08085AFA
.L08085AF4:
	movs r0, #0
	movs r4, #0
	str r4, [sp, #0x70]
.L08085AFA:
	adds r4, r0, #0
	mov r8, r4
	ldr r2, [r5]
	mov ip, r8
	ldr r6, [sp, #0x54]
	lsls r6, r6, #6
	str r6, [sp, #0x6c]
	mov r0, sl
	lsls r0, r0, #0x10
	mov sl, r0
	ldr r1, [sp, #0x54]
	adds r1, #2
	str r1, [sp, #0x68]
	ldr r3, [sp, #0x58]
	adds r3, #1
	str r3, [sp, #0x64]
	ldr r4, [sp, #0x74]
	cmp r2, r4
	beq .L08085B3E
.L08085B20:
	mov r6, ip
	cmp r6, #0
	beq .L08085B32
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08085B32:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	ldr r1, [sp, #0x74]
	cmp r2, r1
	bne .L08085B20
.L08085B3E:
	mov r4, ip
	ldr r0, [sp, #0x3c]
	cmp r0, #1
	bne .L08085B5A
	cmp r4, #0
	beq .L08085B56
	adds r0, r4, #0
	mov r1, sb
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08085B56:
	adds r4, #0x10
	b .L08085B82
.L08085B5A:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L08085B80
.L08085B62:
	cmp r2, #0
	beq .L08085B72
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08085B72:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	adds r2, #0x10
	mov r1, ip
	cmp r1, #0
	bne .L08085B62
.L08085B80:
	adds r4, r2, #0
.L08085B82:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08085B92
.L08085B8C:
	adds r1, #0x10
	cmp r1, r2
	bne .L08085B8C
.L08085B92:
	cmp r0, #0
	beq .L08085B9A
	bl free
.L08085B9A:
	ldr r0, [sp, #0x70]
	add r0, r8
	mov r2, r8
	str r2, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L08085BA6:
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0x18]
	ldr r3, [sp, #0x6c]
	adds r0, r0, r3
	adds r0, #0xc
	mov r4, sl
	lsrs r1, r4, #0x10
	movs r2, #0
	str r2, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	movs r2, #0xc
	movs r3, #2
	bl func_0804E9F4
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	movs r6, #0xca
	lsls r6, r6, #2
	lsls r2, r6, #5
	add r0, sp, #0x1c
	ldr r1, .L08085C08 @ =gUnk_0875254C
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r2, r2, r3
	movs r3, #0x80
	bl func_08008F0C
	add r4, sp, #0x1c
	mov sl, r4
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L08085C0C
	cmp r1, #0
	beq .L08085BFE
	adds r0, r1, #0
	add r1, sp, #0x1c
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08085BFE:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08085CE0
	.align 2, 0
.L08085C08: .4byte gUnk_0875254C
.L08085C0C:
	str r1, [sp, #0x74]
	movs r4, #1
	str r4, [sp, #0x44]
	ldr r1, [r5]
	ldr r6, [sp, #0x74]
	subs r0, r6, r1
	asrs r4, r0, #4
	str r4, [sp, #0x40]
	add r2, sp, #0x44
	add r0, sp, #0x40
	cmp r4, #1
	bhs .L08085C26
	adds r0, r2, #0
.L08085C26:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08085C46
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L08085C42
	mov r0, sb
	bl func_080D3BC0
.L08085C42:
	ldr r1, [r5]
	b .L08085C4A
.L08085C46:
	movs r0, #0
	mov sb, r0
.L08085C4A:
	adds r4, r0, #0
	mov r8, r4
	adds r2, r1, #0
	mov ip, r8
	ldr r0, [sp, #0x74]
	cmp r2, r0
	beq .L08085C76
.L08085C58:
	mov r1, ip
	cmp r1, #0
	beq .L08085C6A
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08085C6A:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	ldr r1, [sp, #0x74]
	cmp r2, r1
	bne .L08085C58
.L08085C76:
	mov r4, ip
	ldr r0, [sp, #0x44]
	cmp r0, #1
	bne .L08085C92
	cmp r4, #0
	beq .L08085C8E
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08085C8E:
	adds r4, #0x10
	b .L08085CBA
.L08085C92:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L08085CB8
.L08085C9A:
	cmp r2, #0
	beq .L08085CAA
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08085CAA:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	adds r2, #0x10
	mov r1, ip
	cmp r1, #0
	bne .L08085C9A
.L08085CB8:
	adds r4, r2, #0
.L08085CBA:
	ldr r2, [r5, #4]
	ldr r1, [r5]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08085CCA
.L08085CC4:
	adds r0, #0x10
	cmp r0, r2
	bne .L08085CC4
.L08085CCA:
	cmp r1, #0
	beq .L08085CD4
	adds r0, r1, #0
	bl free
.L08085CD4:
	mov r0, sb
	add r0, r8
	mov r2, r8
	str r2, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L08085CE0:
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	add r0, sp, #0x1c
	ldr r1, .L08085D18 @ =gUnk_087525CC
	ldr r2, .L08085D1C @ =0x05000020
	movs r3, #0x20
	bl func_08008F0C
	add r3, sp, #0x1c
	mov sl, r3
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L08085D20
	cmp r1, #0
	beq .L08085D10
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r4, r6}
	stm r0!, {r2, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08085D10:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08085DF2
	.align 2, 0
.L08085D18: .4byte gUnk_087525CC
.L08085D1C: .4byte 0x05000020
.L08085D20:
	str r1, [sp, #0x74]
	movs r3, #1
	str r3, [sp, #0x4c]
	ldr r1, [r5]
	ldr r4, [sp, #0x74]
	subs r0, r4, r1
	asrs r4, r0, #4
	str r4, [sp, #0x48]
	add r2, sp, #0x4c
	add r0, sp, #0x48
	cmp r4, #1
	bhs .L08085D3A
	adds r0, r2, #0
.L08085D3A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08085D5A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L08085D56
	mov r0, sb
	bl func_080D3BC0
.L08085D56:
	ldr r1, [r5]
	b .L08085D5E
.L08085D5A:
	movs r0, #0
	mov sb, r0
.L08085D5E:
	adds r4, r0, #0
	mov r8, r4
	adds r2, r1, #0
	mov ip, r8
	ldr r6, [sp, #0x74]
	cmp r2, r6
	beq .L08085D88
.L08085D6C:
	mov r0, ip
	cmp r0, #0
	beq .L08085D7C
	adds r1, r2, #0
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08085D7C:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	ldr r1, [sp, #0x74]
	cmp r2, r1
	bne .L08085D6C
.L08085D88:
	mov r4, ip
	ldr r0, [sp, #0x4c]
	cmp r0, #1
	bne .L08085DA4
	cmp r4, #0
	beq .L08085DA0
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08085DA0:
	adds r4, #0x10
	b .L08085DCC
.L08085DA4:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L08085DCA
.L08085DAC:
	cmp r2, #0
	beq .L08085DBC
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08085DBC:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	adds r2, #0x10
	mov r1, ip
	cmp r1, #0
	bne .L08085DAC
.L08085DCA:
	adds r4, r2, #0
.L08085DCC:
	ldr r2, [r5, #4]
	ldr r1, [r5]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08085DDC
.L08085DD6:
	adds r0, #0x10
	cmp r0, r2
	bne .L08085DD6
.L08085DDC:
	cmp r1, #0
	beq .L08085DE6
	adds r0, r1, #0
	bl free
.L08085DE6:
	mov r0, sb
	add r0, r8
	mov r2, r8
	str r2, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L08085DF2:
	ldr r3, [sp, #0x50]
	cmp r3, #0x1e
	bne .L08085E3E
	movs r5, #0
	ldr r0, [sp, #0x54]
	adds r0, #1
	lsls r0, r0, #6
	mov r8, r0
	movs r4, #0x26
	movs r0, #0xca
	lsls r0, r0, #2
	lsls r6, r0, #0x10
	b .L08085E2A
.L08085E0C:
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0x18]
	add r0, r8
	adds r0, r0, r4
	movs r1, #1
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	lsrs r1, r6, #0x10
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r4, #2
	adds r5, #1
.L08085E2A:
	ldr r0, [sp, #0x5c]
	bl GetAffection__C6Animal
	adds r1, r0, #0
	adds r0, r7, #0
	bl func_08085EC4
	cmp r5, r0
	blo .L08085E0C
	b .L08085E80
.L08085E3E:
	movs r5, #0
	ldr r0, [sp, #0x54]
	adds r0, #1
	lsls r0, r0, #6
	mov r8, r0
	movs r4, #0x26
	movs r2, #0xca
	lsls r2, r2, #2
	lsls r6, r2, #0x10
	b .L08085E6E
.L08085E52:
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0x18]
	add r0, r8
	adds r0, r0, r4
	movs r3, #1
	str r3, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	lsrs r1, r6, #0x10
	movs r2, #1
	bl func_0804E9F4
	adds r4, #2
	adds r5, #1
.L08085E6E:
	ldr r0, [sp, #0x60]
	bl GetAffection__C6Animal
	adds r1, r0, #0
	adds r0, r7, #0
	bl func_08085EC4
	cmp r5, r0
	blo .L08085E52
.L08085E80:
	ldr r4, [sp, #0x68]
	str r4, [sp, #0x54]
	ldr r5, [sp, #0x64]
	str r5, [sp, #0x58]
	ldr r3, [r7, #8]
.L08085E8A:
	movs r6, #0xbe
	lsls r6, r6, #3
	adds r0, r3, r6
	bl GetCapacity__C4Barn
	ldr r1, [sp, #0x58]
	cmp r1, r0
	bhs .L08085EAE
	lsls r0, r1, #3
	ldr r2, .L08085EC0 @ =0x000006AC
	adds r1, r7, r2
	adds r1, r1, r0
	ldr r1, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq .L08085EAE
	b .L080858B0
.L08085EAE:
	ldr r0, [sp, #0x54]
	add sp, #0x78
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08085EC0: .4byte 0x000006AC

	thumb_func_start func_08085EC4
func_08085EC4: @ 0x08085EC4
	push {r4, lr}
	sub sp, #8
	adds r0, r1, #0
	movs r4, #0xa
	str r4, [sp]
	movs r1, #0x19
	bl __udivsi3
	str r0, [sp, #4]
	add r1, sp, #4
	mov r2, sp
	cmp r4, r0
	bls .L08085EE0
	adds r2, r1, #0
.L08085EE0:
	ldr r0, [r2]
	add sp, #8
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_08085EEC
func_08085EEC: @ 0x08085EEC
	push {lr}
	ldr r1, .L08085F00 @ =0x000043D8
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #1
	bls .L08085EFA
	ldr r0, .L08085F04 @ =0x000003E7
.L08085EFA:
	pop {r1}
	bx r1
	.align 2, 0
.L08085F00: .4byte 0x000043D8
.L08085F04: .4byte 0x000003E7

	thumb_func_start func_08085F08
func_08085F08: @ 0x08085F08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	mov r8, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r2, .L08085F40 @ =gUnk_080FFB90
	mov r1, sp
	adds r0, r0, r2
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r0, [sp, #0x10]
	cmp r0, #4
	bls .L08085F34
	bl sub_080868BC
.L08085F34:
	lsls r0, r0, #2
	ldr r1, .L08085F44 @ =.L08085F48
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08085F40: .4byte gUnk_080FFB90
.L08085F44: .4byte .L08085F48
.L08085F48: @ jump table
	.4byte .L08085F5C @ case 0
	.4byte .L08085F86 @ case 1
	.4byte .L08085F70 @ case 2
	.4byte .L08085F86 @ case 3
	.4byte .L08085F92 @ case 4
.L08085F5C:
	add r4, sp, #0x28
	ldr r1, [sp]
	adds r0, r4, #0
	bl __7ArticleUi
	adds r0, r4, #0
	bl GetDesc__C7Article
	adds r1, r0, #0
	b .L08085F88
.L08085F70:
	mov r4, sp
	adds r4, #0x29
	ldr r1, [sp]
	adds r0, r4, #0
	bl __4ToolUi
	adds r0, r4, #0
	bl GetDesc__C4Tool
	adds r1, r0, #0
	b .L08085F88
.L08085F86:
	ldr r1, [sp, #0xc]
.L08085F88:
	mov r0, r8
	bl func_080CABEC
	bl sub_080868BC
.L08085F92:
	mov r4, r8
	ldr r0, [r4, #0x10]
	lsls r0, r0, #3
	ldr r7, .L0808604C @ =0x000006AC
	add r7, r8
	adds r0, r7, r0
	ldr r0, [r0]
	mov sl, r0
	lsls r0, r0, #5
	add r0, sl
	lsls r0, r0, #2
	adds r1, r4, r0
	ldr r2, .L08086050 @ =0x00003B98
	adds r0, r1, r2
	ldrb r0, [r0]
	str r0, [sp, #0x2c]
	cmp r0, #0
	beq .L08085FBA
	bl sub_080868A8
.L08085FBA:
	ldr r3, .L08086054 @ =0x00003B9C
	adds r5, r1, r3
	ldr r6, .L08086058 @ =gUnk_080FFB60
	adds r0, r6, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x7f
	bls .L08085FCE
	movs r4, #0x7f
.L08085FCE:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl memcpy
	adds r0, r5, r4
	add r4, sp, #0x2c
	ldrb r4, [r4]
	strb r4, [r0]
	mov r0, r8
	ldr r1, [r0, #0x10]
	lsls r0, r1, #2
	add r0, r8
	movs r2, #0xe6
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #9
	beq .L08085FF6
	b .L08086430
.L08085FF6:
	mov r3, r8
	ldr r0, [r3, #8]
	movs r4, #0xbe
	lsls r4, r4, #3
	adds r0, r0, r4
	lsls r1, r1, #3
	adds r1, r7, r1
	ldr r1, [r1]
	bl GetCow__4BarnUi
	str r0, [sp, #0x30]
	bl IsSick__C9Livestock
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08086060
	ldr r7, .L0808605C @ =gUnk_080FFC70
	adds r0, r5, #0
	bl strlen
	adds r6, r5, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L080860D6
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08086036
	adds r4, r5, #0
.L08086036:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	add r1, sp, #0x2c
	ldrb r1, [r1]
	strb r1, [r0]
	b .L080860D6
	.align 2, 0
.L0808604C: .4byte 0x000006AC
.L08086050: .4byte 0x00003B98
.L08086054: .4byte 0x00003B9C
.L08086058: .4byte gUnk_080FFB60
.L0808605C: .4byte gUnk_080FFC70
.L08086060:
	ldr r0, [sp, #0x30]
	bl IsUnhappy__C9Livestock
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080860A4
	ldr r7, .L080860A0 @ =gUnk_080FFC80
	adds r0, r5, #0
	bl strlen
	adds r6, r5, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L080860D6
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0808608C
	adds r4, r5, #0
.L0808608C:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	add r2, sp, #0x2c
	ldrb r2, [r2]
	strb r2, [r0]
	b .L080860D6
	.align 2, 0
.L080860A0: .4byte gUnk_080FFC80
.L080860A4:
	ldr r7, .L080861C0 @ =gUnk_080FFC90
	adds r0, r5, #0
	bl strlen
	adds r6, r5, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L080860D6
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080860C4
	adds r4, r5, #0
.L080860C4:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	add r3, sp, #0x2c
	ldrb r3, [r3]
	strb r3, [r0]
.L080860D6:
	ldr r0, [sp, #0x30]
	bl GetAge__C6Animal
	movs r1, #0x78
	bl __udivsi3
	adds r6, r0, #0
	mov r4, sl
	lsls r4, r4, #5
	mov sb, r4
	cmp r6, #9
	bgt .L08086126
	add r4, sl
	lsls r4, r4, #2
	add r4, r8
	ldr r0, .L080861C4 @ =0x00003B9C
	adds r4, r4, r0
	adds r0, r4, #0
	bl strlen
	adds r7, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L08086126
	ldr r0, .L080861C8 @ =gUnk_080FFCA0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08086116
	adds r4, r5, #0
.L08086116:
	adds r0, r7, #0
	ldr r1, .L080861C8 @ =gUnk_080FFCA0
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L08086126:
	add r4, sp, #0x14
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl func_0804EC84
	mov r0, sb
	add r0, sl
	lsls r0, r0, #2
	mov r1, r8
	adds r6, r0, r1
	ldr r2, .L080861C4 @ =0x00003B9C
	adds r6, r6, r2
	adds r0, r6, #0
	bl strlen
	adds r7, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0808616E
	add r0, sp, #0x14
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0808615E
	adds r4, r5, #0
.L0808615E:
	adds r0, r7, #0
	add r1, sp, #0x14
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L0808616E:
	ldr r7, .L080861CC @ =gUnk_080FFCA4
	adds r0, r6, #0
	bl strlen
	adds r6, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0808619E
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0808618E
	adds r4, r5, #0
.L0808618E:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L0808619E:
	ldr r0, [sp, #0x30]
	bl GetAge__C6Animal
	adds r4, r0, #0
	mov r3, r8
	ldr r0, [r3, #8]
	ldrb r1, [r0, #0x11]
	mov r0, sp
	adds r0, #0x2a
	strb r1, [r0]
	adds r6, r0, #0
	cmp r4, #0x1d
	bhi .L080861D0
	adds r5, r4, #0
	movs r4, #0
	b .L080861E4
	.align 2, 0
.L080861C0: .4byte gUnk_080FFC90
.L080861C4: .4byte 0x00003B9C
.L080861C8: .4byte gUnk_080FFCA0
.L080861CC: .4byte gUnk_080FFCA4
.L080861D0:
	adds r0, r4, #0
	movs r1, #0x1e
	bl __umodsi3
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0x1e
	bl __udivsi3
	adds r4, r0, #0
.L080861E4:
	ldrb r0, [r6]
	lsls r1, r0, #0x19
	lsrs r1, r1, #0x1b
	adds r2, r5, #0
	subs r2, #0x1e
	subs r3, r1, r2
	cmp r3, #0x1d
	bhi .L080861F8
	adds r4, #1
	b .L080861FA
.L080861F8:
	subs r3, #0x1e
.L080861FA:
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	movs r1, #4
	rsbs r1, r1, #0
	subs r0, r0, r4
	movs r2, #3
	ands r0, r2
	ldrb r2, [r6]
	ands r1, r2
	orrs r1, r0
	movs r0, #0x1f
	ands r3, r0
	lsls r2, r3, #2
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r1, r0
	orrs r1, r2
	strb r1, [r6]
	add r4, sp, #0x34
	strb r1, [r4]
	lsls r1, r1, #0x1e
	lsrs r6, r1, #0x1e
	cmp r6, #1
	beq .L08086280
	cmp r6, #1
	bgt .L08086234
	cmp r6, #0
	beq .L0808623E
	b .L080862EC
.L08086234:
	cmp r6, #2
	beq .L08086298
	cmp r6, #3
	beq .L080862B0
	b .L080862EC
.L0808623E:
	mov r4, sb
	add r4, sl
	lsls r4, r4, #2
	add r4, r8
	ldr r0, .L08086278 @ =0x00003B9C
	adds r4, r4, r0
	adds r0, r4, #0
	bl strlen
	adds r7, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L080862EC
	ldr r0, .L0808627C @ =gUnk_080FFCC0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08086268
	adds r4, r5, #0
.L08086268:
	adds r0, r7, #0
	ldr r1, .L0808627C @ =gUnk_080FFCC0
	adds r2, r4, #0
	bl memcpy
	adds r0, r7, r4
	strb r6, [r0]
	b .L080862EC
	.align 2, 0
.L08086278: .4byte 0x00003B9C
.L0808627C: .4byte gUnk_080FFCC0
.L08086280:
	mov r4, sb
	add r4, sl
	lsls r4, r4, #2
	add r4, r8
	ldr r1, .L08086290 @ =0x00003B9C
	adds r4, r4, r1
	ldr r7, .L08086294 @ =gUnk_080FFCC8
	b .L080862BE
	.align 2, 0
.L08086290: .4byte 0x00003B9C
.L08086294: .4byte gUnk_080FFCC8
.L08086298:
	mov r4, sb
	add r4, sl
	lsls r4, r4, #2
	add r4, r8
	ldr r2, .L080862A8 @ =0x00003B9C
	adds r4, r4, r2
	ldr r7, .L080862AC @ =gUnk_080FFCD0
	b .L080862BE
	.align 2, 0
.L080862A8: .4byte 0x00003B9C
.L080862AC: .4byte gUnk_080FFCD0
.L080862B0:
	mov r4, sb
	add r4, sl
	lsls r4, r4, #2
	add r4, r8
	ldr r3, .L08086420 @ =0x00003B9C
	adds r4, r4, r3
	ldr r7, .L08086424 @ =gUnk_080FFCD8
.L080862BE:
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L080862EC
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080862DC
	adds r4, r5, #0
.L080862DC:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L080862EC:
	add r4, sp, #0x34
	ldrb r4, [r4]
	lsls r0, r4, #0x19
	lsrs r0, r0, #0x1b
	adds r6, r0, #1
	cmp r6, #9
	bgt .L08086336
	mov r4, sb
	add r4, sl
	lsls r4, r4, #2
	add r4, r8
	ldr r0, .L08086420 @ =0x00003B9C
	adds r4, r4, r0
	ldr r7, .L08086428 @ =gUnk_080FFCA0
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L08086336
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08086326
	adds r4, r5, #0
.L08086326:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L08086336:
	add r1, sp, #0x34
	ldrb r1, [r1]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1b
	adds r0, #1
	add r1, sp, #0x14
	movs r2, #0
	bl func_0804EC84
	mov r0, sb
	add r0, sl
	lsls r0, r0, #2
	mov r2, r8
	adds r6, r0, r2
	ldr r3, .L08086420 @ =0x00003B9C
	adds r6, r6, r3
	adds r0, r6, #0
	bl strlen
	adds r7, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L08086384
	ldr r0, .L08086428 @ =gUnk_080FFCA0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08086374
	adds r4, r5, #0
.L08086374:
	adds r0, r7, #0
	ldr r1, .L08086428 @ =gUnk_080FFCA0
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L08086384:
	adds r0, r6, #0
	bl strlen
	adds r7, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L080863B2
	add r0, sp, #0x14
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080863A2
	adds r4, r5, #0
.L080863A2:
	adds r0, r7, #0
	add r1, sp, #0x14
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L080863B2:
	ldr r7, .L0808642C @ =gUnk_080FFCE0
	adds r0, r6, #0
	bl strlen
	adds r6, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L080863E2
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080863D2
	adds r4, r5, #0
.L080863D2:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L080863E2:
	mov r4, r8
	ldr r1, [r4, #0x10]
	lsls r1, r1, #3
	movs r0, #0xd6
	lsls r0, r0, #3
	add r0, r8
	adds r0, r0, r1
	ldr r6, [r0]
	adds r0, r6, #0
	add r1, sp, #0x14
	movs r2, #0
	bl func_0804EC84
	mov r0, sb
	add r0, sl
	lsls r0, r0, #2
	adds r6, r0, r4
	ldr r0, .L08086420 @ =0x00003B9C
	adds r6, r6, r0
	adds r0, r6, #0
	bl strlen
	adds r7, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	bne .L0808641A
	b .L08086866
.L0808641A:
	add r0, sp, #0x14
	b .L0808684A
	.align 2, 0
.L08086420: .4byte 0x00003B9C
.L08086424: .4byte gUnk_080FFCD8
.L08086428: .4byte gUnk_080FFCA0
.L0808642C: .4byte gUnk_080FFCE0
.L08086430:
	mov r2, r8
	ldr r0, [r2, #8]
	movs r3, #0xbe
	lsls r3, r3, #3
	adds r0, r0, r3
	lsls r1, r1, #3
	adds r1, r7, r1
	ldr r1, [r1]
	bl GetSheep__4BarnUi
	str r0, [sp, #0x3c]
	bl IsSick__C9Livestock
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #0
	beq .L0808648C
	ldr r7, .L08086488 @ =gUnk_080FFCF8
	adds r0, r5, #0
	bl strlen
	adds r6, r5, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L08086500
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08086474
	adds r4, r5, #0
.L08086474:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	add r4, sp, #0x2c
	ldrb r4, [r4]
	strb r4, [r0]
	b .L08086500
	.align 2, 0
.L08086488: .4byte gUnk_080FFCF8
.L0808648C:
	ldr r0, [sp, #0x3c]
	bl IsUnhappy__C9Livestock
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0
	beq .L080864D0
	ldr r7, .L080864CC @ =gUnk_080FFC80
	adds r0, r5, #0
	bl strlen
	adds r6, r5, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L08086500
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080864BA
	adds r4, r5, #0
.L080864BA:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	mov r1, sb
	strb r1, [r0]
	b .L08086500
	.align 2, 0
.L080864CC: .4byte gUnk_080FFC80
.L080864D0:
	ldr r2, .L080865EC @ =gUnk_080FFC90
	mov sb, r2
	adds r0, r5, #0
	bl strlen
	adds r6, r5, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L08086500
	mov r0, sb
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080864F2
	adds r4, r5, #0
.L080864F2:
	adds r0, r6, #0
	mov r1, sb
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	strb r7, [r0]
.L08086500:
	ldr r0, [sp, #0x3c]
	bl GetAge__C6Animal
	movs r1, #0x78
	bl __udivsi3
	adds r6, r0, #0
	mov r3, sl
	lsls r3, r3, #5
	mov sb, r3
	cmp r6, #9
	bgt .L08086552
	mov r4, sb
	add r4, sl
	lsls r4, r4, #2
	add r4, r8
	ldr r0, .L080865F0 @ =0x00003B9C
	adds r4, r4, r0
	adds r0, r4, #0
	bl strlen
	adds r7, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L08086552
	ldr r0, .L080865F4 @ =gUnk_080FFCA0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08086542
	adds r4, r5, #0
.L08086542:
	adds r0, r7, #0
	ldr r1, .L080865F4 @ =gUnk_080FFCA0
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L08086552:
	add r4, sp, #0x14
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl func_0804EC84
	mov r0, sb
	add r0, sl
	lsls r0, r0, #2
	mov r1, r8
	adds r6, r0, r1
	ldr r2, .L080865F0 @ =0x00003B9C
	adds r6, r6, r2
	adds r0, r6, #0
	bl strlen
	adds r7, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0808659A
	add r0, sp, #0x14
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0808658A
	adds r4, r5, #0
.L0808658A:
	adds r0, r7, #0
	add r1, sp, #0x14
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L0808659A:
	ldr r7, .L080865F8 @ =gUnk_080FFD08
	adds r0, r6, #0
	bl strlen
	adds r6, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L080865CA
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080865BA
	adds r4, r5, #0
.L080865BA:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L080865CA:
	ldr r0, [sp, #0x3c]
	bl GetAge__C6Animal
	adds r4, r0, #0
	mov r3, r8
	ldr r0, [r3, #8]
	ldrb r1, [r0, #0x11]
	mov r0, sp
	adds r0, #0x2b
	strb r1, [r0]
	adds r6, r0, #0
	cmp r4, #0x1d
	bhi .L080865FC
	adds r5, r4, #0
	movs r4, #0
	b .L08086610
	.align 2, 0
.L080865EC: .4byte gUnk_080FFC90
.L080865F0: .4byte 0x00003B9C
.L080865F4: .4byte gUnk_080FFCA0
.L080865F8: .4byte gUnk_080FFD08
.L080865FC:
	adds r0, r4, #0
	movs r1, #0x1e
	bl __umodsi3
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0x1e
	bl __udivsi3
	adds r4, r0, #0
.L08086610:
	ldrb r0, [r6]
	lsls r1, r0, #0x19
	lsrs r1, r1, #0x1b
	adds r2, r5, #0
	subs r2, #0x1e
	subs r3, r1, r2
	cmp r3, #0x1d
	bhi .L08086624
	adds r4, #1
	b .L08086626
.L08086624:
	subs r3, #0x1e
.L08086626:
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	movs r1, #4
	rsbs r1, r1, #0
	subs r0, r0, r4
	movs r2, #3
	ands r0, r2
	ldrb r2, [r6]
	ands r1, r2
	orrs r1, r0
	movs r0, #0x1f
	ands r3, r0
	lsls r2, r3, #2
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r1, r0
	orrs r1, r2
	strb r1, [r6]
	add r4, sp, #0x40
	strb r1, [r4]
	lsls r1, r1, #0x1e
	lsrs r6, r1, #0x1e
	cmp r6, #1
	beq .L080866AC
	cmp r6, #1
	bgt .L08086660
	cmp r6, #0
	beq .L0808666A
	b .L08086718
.L08086660:
	cmp r6, #2
	beq .L080866C4
	cmp r6, #3
	beq .L080866DC
	b .L08086718
.L0808666A:
	mov r4, sb
	add r4, sl
	lsls r4, r4, #2
	add r4, r8
	ldr r0, .L080866A4 @ =0x00003B9C
	adds r4, r4, r0
	adds r0, r4, #0
	bl strlen
	adds r7, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L08086718
	ldr r0, .L080866A8 @ =gUnk_080FFCC0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08086694
	adds r4, r5, #0
.L08086694:
	adds r0, r7, #0
	ldr r1, .L080866A8 @ =gUnk_080FFCC0
	adds r2, r4, #0
	bl memcpy
	adds r0, r7, r4
	strb r6, [r0]
	b .L08086718
	.align 2, 0
.L080866A4: .4byte 0x00003B9C
.L080866A8: .4byte gUnk_080FFCC0
.L080866AC:
	mov r4, sb
	add r4, sl
	lsls r4, r4, #2
	add r4, r8
	ldr r1, .L080866BC @ =0x00003B9C
	adds r4, r4, r1
	ldr r7, .L080866C0 @ =gUnk_080FFCC8
	b .L080866EA
	.align 2, 0
.L080866BC: .4byte 0x00003B9C
.L080866C0: .4byte gUnk_080FFCC8
.L080866C4:
	mov r4, sb
	add r4, sl
	lsls r4, r4, #2
	add r4, r8
	ldr r2, .L080866D4 @ =0x00003B9C
	adds r4, r4, r2
	ldr r7, .L080866D8 @ =gUnk_080FFCD0
	b .L080866EA
	.align 2, 0
.L080866D4: .4byte 0x00003B9C
.L080866D8: .4byte gUnk_080FFCD0
.L080866DC:
	mov r4, sb
	add r4, sl
	lsls r4, r4, #2
	add r4, r8
	ldr r3, .L080868CC @ =0x00003B9C
	adds r4, r4, r3
	ldr r7, .L080868D0 @ =gUnk_080FFCD8
.L080866EA:
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L08086718
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08086708
	adds r4, r5, #0
.L08086708:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L08086718:
	add r4, sp, #0x40
	ldrb r4, [r4]
	lsls r0, r4, #0x19
	lsrs r0, r0, #0x1b
	adds r6, r0, #1
	cmp r6, #9
	bgt .L08086762
	mov r4, sb
	add r4, sl
	lsls r4, r4, #2
	add r4, r8
	ldr r0, .L080868CC @ =0x00003B9C
	adds r4, r4, r0
	ldr r7, .L080868D4 @ =gUnk_080FFCA0
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L08086762
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08086752
	adds r4, r5, #0
.L08086752:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L08086762:
	add r1, sp, #0x40
	ldrb r1, [r1]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1b
	adds r0, #1
	add r1, sp, #0x14
	movs r2, #0
	bl func_0804EC84
	mov r0, sb
	add r0, sl
	lsls r0, r0, #2
	mov r2, r8
	adds r6, r0, r2
	ldr r3, .L080868CC @ =0x00003B9C
	adds r6, r6, r3
	adds r0, r6, #0
	bl strlen
	adds r7, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L080867B0
	ldr r0, .L080868D4 @ =gUnk_080FFCA0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080867A0
	adds r4, r5, #0
.L080867A0:
	adds r0, r7, #0
	ldr r1, .L080868D4 @ =gUnk_080FFCA0
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L080867B0:
	adds r0, r6, #0
	bl strlen
	adds r7, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L080867DE
	add r0, sp, #0x14
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080867CE
	adds r4, r5, #0
.L080867CE:
	adds r0, r7, #0
	add r1, sp, #0x14
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L080867DE:
	ldr r7, .L080868D8 @ =gUnk_080FFD24
	adds r0, r6, #0
	bl strlen
	adds r6, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0808680E
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080867FE
	adds r4, r5, #0
.L080867FE:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L0808680E:
	mov r4, r8
	ldr r1, [r4, #0x10]
	lsls r1, r1, #3
	movs r0, #0xd6
	lsls r0, r0, #3
	add r0, r8
	adds r0, r0, r1
	ldr r6, [r0]
	add r4, sp, #0x14
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl func_0804EC84
	mov r0, sb
	add r0, sl
	lsls r0, r0, #2
	mov r1, r8
	adds r6, r0, r1
	ldr r2, .L080868CC @ =0x00003B9C
	adds r6, r6, r2
	adds r0, r6, #0
	bl strlen
	adds r7, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L08086866
	adds r0, r4, #0
.L0808684A:
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08086856
	adds r4, r5, #0
.L08086856:
	adds r0, r7, #0
	add r1, sp, #0x14
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L08086866:
	ldr r7, .L080868DC @ =gUnk_080FFCF4
	adds r0, r6, #0
	bl strlen
	adds r6, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L08086896
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08086886
	adds r4, r5, #0
.L08086886:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L08086896:
	mov r3, sl
	lsls r0, r3, #5
	add r0, sl
	lsls r0, r0, #2
	add r0, r8
	ldr r4, .L080868E0 @ =0x00003B98
	adds r0, r0, r4
	movs r1, #1
	strb r1, [r0]

	thumb_func_start sub_080868A8
sub_080868A8: @ 0x080868A8
	mov r0, sl
	lsls r1, r0, #5
	add r1, sl
	lsls r1, r1, #2
	add r1, r8
	ldr r2, .L080868CC @ =0x00003B9C
	adds r1, r1, r2
	mov r0, r8
	bl func_080CABEC

	thumb_func_start sub_080868BC
sub_080868BC: @ 0x080868BC
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080868CC: .4byte 0x00003B9C
.L080868D0: .4byte gUnk_080FFCD8
.L080868D4: .4byte gUnk_080FFCA0
.L080868D8: .4byte gUnk_080FFD24
.L080868DC: .4byte gUnk_080FFCF4
.L080868E0: .4byte 0x00003B98

	thumb_func_start func_080868E4
func_080868E4: @ 0x080868E4
	push {r4, lr}
	ldr r4, .L0808690C @ =0x00000BB8
	cmp r2, #0
	bne .L08086938
	ldr r0, [r0, #8]
	movs r2, #0xbe
	lsls r2, r2, #3
	adds r0, r0, r2
	bl GetCow__4BarnUi
	bl GetProductRank__C9Livestock
	cmp r0, #4
	bhi .L08086994
	lsls r0, r0, #2
	ldr r1, .L08086910 @ =.L08086914
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0808690C: .4byte 0x00000BB8
.L08086910: .4byte .L08086914
.L08086914: @ jump table
	.4byte .L08086984 @ case 0
	.4byte .L0808698C @ case 1
	.4byte .L08086992 @ case 2
	.4byte .L08086928 @ case 3
	.4byte .L08086930 @ case 4
.L08086928:
	ldr r4, .L0808692C @ =0x00001770
	b .L08086994
	.align 2, 0
.L0808692C: .4byte 0x00001770
.L08086930:
	ldr r4, .L08086934 @ =0x00001B58
	b .L08086994
	.align 2, 0
.L08086934: .4byte 0x00001B58
.L08086938:
	cmp r2, #1
	bne .L08086994
	ldr r0, [r0, #8]
	movs r2, #0xbe
	lsls r2, r2, #3
	adds r0, r0, r2
	bl GetSheep__4BarnUi
	bl GetProductRank__C9Livestock
	cmp r0, #4
	bhi .L08086994
	lsls r0, r0, #2
	ldr r1, .L0808695C @ =.L08086960
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0808695C: .4byte .L08086960
.L08086960: @ jump table
	.4byte .L08086974 @ case 0
	.4byte .L0808697A @ case 1
	.4byte .L08086984 @ case 2
	.4byte .L0808698C @ case 3
	.4byte .L08086992 @ case 4
.L08086974:
	movs r4, #0xfa
	lsls r4, r4, #3
	b .L08086994
.L0808697A:
	ldr r4, .L08086980 @ =0x000009C4
	b .L08086994
	.align 2, 0
.L08086980: .4byte 0x000009C4
.L08086984:
	ldr r4, .L08086988 @ =0x00000BB8
	b .L08086994
	.align 2, 0
.L08086988: .4byte 0x00000BB8
.L0808698C:
	movs r4, #0xfa
	lsls r4, r4, #4
	b .L08086994
.L08086992:
	ldr r4, .L0808699C @ =0x00001388
.L08086994:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
.L0808699C: .4byte 0x00001388

	thumb_func_start func_080869A0
func_080869A0: @ 0x080869A0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r6, #0
	movs r5, #0
	movs r7, #0xbe
	lsls r7, r7, #3
	b .L080869F2
.L080869AE:
	ldr r0, [r4, #8]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r1, r5, #0
	bl GetCow__4BarnUi
	cmp r0, #0
	beq .L080869CC
	ldr r0, [r4, #8]
	adds r0, r0, r7
	adds r1, r5, #0
	bl GetCow__4BarnUi
	b .L080869E4
.L080869CC:
	ldr r0, [r4, #8]
	adds r0, r0, r7
	adds r1, r5, #0
	bl GetSheep__4BarnUi
	cmp r0, #0
	beq .L080869F0
	ldr r0, [r4, #8]
	adds r0, r0, r7
	adds r1, r5, #0
	bl GetSheep__4BarnUi
.L080869E4:
	bl IsPregnant__C10BarnAnimal
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080869F0
	adds r6, #1
.L080869F0:
	adds r5, #1
.L080869F2:
	ldr r0, [r4, #8]
	adds r0, r0, r7
	bl GetCapacity__C4Barn
	cmp r5, r0
	blo .L080869AE
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_08086A08
func_08086A08: @ 0x08086A08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xb4
	adds r7, r0, #0
	bl func_08008724
	adds r0, r7, #0
	bl func_080C85A0
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08086A40
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08086A3A
	movs r0, #0
	str r0, [r2]
.L08086A3A:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08086A40:
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08086A60
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08086A5A
	movs r0, #1
	str r0, [r2]
.L08086A5A:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08086A60:
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08086A80
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08086A7A
	movs r0, #2
	str r0, [r2]
.L08086A7A:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08086A80:
	movs r4, #0xa9
	lsls r4, r4, #2
	adds r1, r7, r4
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08086AA0
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08086A9A
	movs r0, #3
	str r0, [r2]
.L08086A9A:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08086AA0:
	movs r5, #0xa9
	lsls r5, r5, #2
	adds r1, r7, r5
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08086AC0
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08086ABA
	movs r0, #4
	str r0, [r2]
.L08086ABA:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08086AC0:
	movs r6, #0xa9
	lsls r6, r6, #2
	adds r1, r7, r6
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08086AE0
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08086ADA
	movs r0, #5
	str r0, [r2]
.L08086ADA:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08086AE0:
	ldr r0, [r7, #8]
	ldr r1, .L08086C78 @ =0x00001C38
	adds r0, r0, r1
	movs r1, #0x49
	bl GetFirstSlotWithTool__C8RucksackUi
	mvns r0, r0
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	ldr r0, [r7, #8]
	ldr r2, .L08086C7C @ =0x00001C34
	adds r0, r0, r2
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08086B1E
	ldr r0, [r7, #8]
	ldr r3, .L08086C7C @ =0x00001C34
	adds r0, r0, r3
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	add r0, sp, #0x78
	strb r1, [r0]
	bl GetId__C4Tool
	cmp r0, #0x49
	bne .L08086B1E
	movs r4, #1
.L08086B1E:
	ldr r0, [r7, #8]
	movs r5, #0xe0
	lsls r5, r5, #2
	adds r0, r0, r5
	movs r1, #0x49
	bl GetFirstSlotWith__C9ToolChestUi
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq .L08086B36
	movs r4, #1
.L08086B36:
	cmp r4, #0
	bne .L08086B5A
	movs r6, #0xa9
	lsls r6, r6, #2
	adds r1, r7, r6
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08086B5A
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08086B54
	movs r0, #6
	str r0, [r2]
.L08086B54:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08086B5A:
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08086B7A
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08086B74
	movs r0, #7
	str r0, [r2]
.L08086B74:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08086B7A:
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08086B9A
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08086B94
	movs r0, #8
	str r0, [r2]
.L08086B94:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08086B9A:
	movs r3, #0
	mov sb, r3
	mov r4, sp
	adds r4, #0x7c
	str r4, [sp, #0xac]
	mov r5, sp
	adds r5, #0x20
	str r5, [sp, #0xa8]
.L08086BAA:
	mov r6, sb
	lsls r1, r6, #2
	add r1, sb
	lsls r1, r1, #2
	ldr r2, .L08086C80 @ =gUnk_080FFB90
	add r0, sp, #0xc
	adds r1, r1, r2
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r5, r6}
	stm r0!, {r5, r6}
	mov r0, sb
	lsls r4, r0, #1
	adds r0, r4, r0
	lsls r0, r0, #6
	add r0, sb
	lsls r5, r0, #2
	adds r1, r5, r7
	movs r2, #0xee
	lsls r2, r2, #3
	adds r1, r1, r2
	add r0, sp, #0x7c
	movs r3, #0xc
	strh r3, [r0]
	movs r0, #2
	ldr r6, [sp, #0xac]
	strh r0, [r6, #2]
	ldr r0, [sp, #0x7c]
	adds r1, #4
	movs r2, #0
	bl func_0804E7A0
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq .L08086C1E
	cmp r0, #2
	beq .L08086C1E
	adds r1, r5, r7
	movs r2, #0xee
	lsls r2, r2, #3
	adds r1, r1, r2
	ldr r2, [sp, #0x10]
	add r0, sp, #0x80
	movs r3, #0xc
	strh r3, [r0]
	movs r5, #2
	strh r5, [r0, #2]
	ldr r0, [sp, #0x80]
	adds r1, #4
	str r2, [sp]
	movs r6, #0
	str r6, [sp, #4]
	movs r2, #1
	str r2, [sp, #8]
	movs r2, #0
	movs r3, #0
	bl func_0804E958
.L08086C1E:
	add r4, sb
	lsls r5, r4, #3
	adds r5, #0xd0
	adds r0, r7, #0
	bl func_08008910
	lsls r4, r4, #6
	add r4, sb
	lsls r4, r4, #2
	adds r4, r4, r7
	ldr r3, .L08086C84 @ =0x00000774
	adds r4, r4, r3
	adds r6, r0, #0
	lsls r5, r5, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r5, r5, r0
	add r0, sp, #0x20
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #0xc0
	lsls r3, r3, #2
	bl func_08008F0C
	ldr r1, [sp, #0xa8]
	str r1, [sp, #0x9c]
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08086C88
	cmp r1, #0
	beq .L08086C6A
	adds r0, r1, #0
	ldr r1, [sp, #0x9c]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08086C6A:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	movs r5, #1
	add sb, r5
	b .L08086D56
	.align 2, 0
.L08086C78: .4byte 0x00001C38
.L08086C7C: .4byte 0x00001C34
.L08086C80: .4byte gUnk_080FFB90
.L08086C84: .4byte 0x00000774
.L08086C88:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x88]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x84]
	add r1, sp, #0x88
	add r0, sp, #0x84
	cmp r4, #1
	bhs .L08086CA0
	adds r0, r1, #0
.L08086CA0:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08086CBE
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L08086CC2
	mov r0, sl
	bl func_080D3BC0
	b .L08086CC2
.L08086CBE:
	movs r0, #0
	mov sl, r0
.L08086CC2:
	adds r5, r0, #0
	str r5, [sp, #0xb0]
	ldr r2, [r6]
	mov ip, r5
	movs r1, #1
	add sb, r1
	cmp r2, r8
	beq .L08086CEE
.L08086CD2:
	mov r3, ip
	cmp r3, #0
	beq .L08086CE4
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L08086CE4:
	adds r2, #0x10
	movs r4, #0x10
	add ip, r4
	cmp r2, r8
	bne .L08086CD2
.L08086CEE:
	mov r5, ip
	ldr r0, [sp, #0x88]
	cmp r0, #1
	bne .L08086D0A
	cmp r5, #0
	beq .L08086D06
	adds r0, r5, #0
	ldr r1, [sp, #0x9c]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08086D06:
	adds r5, #0x10
	b .L08086D32
.L08086D0A:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L08086D30
.L08086D12:
	cmp r2, #0
	beq .L08086D22
	adds r0, r2, #0
	ldr r1, [sp, #0x9c]
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L08086D22:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L08086D12
.L08086D30:
	adds r5, r2, #0
.L08086D32:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08086D42
.L08086D3C:
	adds r1, #0x10
	cmp r1, r2
	bne .L08086D3C
.L08086D42:
	cmp r0, #0
	beq .L08086D4A
	bl free
.L08086D4A:
	ldr r0, [sp, #0xb0]
	add r0, sl
	ldr r1, [sp, #0xb0]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08086D56:
	mov r2, sb
	cmp r2, #8
	bhi .L08086D5E
	b .L08086BAA
.L08086D5E:
	movs r2, #0
	movs r1, #0xf
	ldr r3, .L08086E30 @ =0x00004354
	adds r0, r7, r3
.L08086D66:
	strb r2, [r0]
	subs r0, #0x84
	subs r1, #1
	cmp r1, #0
	bge .L08086D66
	adds r0, r7, #0
	bl func_08085640
	adds r5, r0, #0
	ldr r0, [r7, #0x1c]
	movs r4, #0xc
	ldrsh r1, [r7, r4]
	bl func_08075C88
	ldr r0, [r7, #0x1c]
	adds r1, r5, #0
	adds r1, #8
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	bl func_08075E24
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r7
	movs r5, #0xaa
	lsls r5, r5, #2
	adds r0, r0, r5
	ldr r1, [r0]
	adds r0, r7, #0
	bl func_08085F08
	adds r0, r7, #0
	bl func_08008918
	add r1, sp, #0xc
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	movs r0, #0x10
	bl __builtin_new
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_08008918
	adds r1, r0, #0
	movs r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	ldr r0, .L08086E34 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp, #0xc]
	ldr r1, .L08086E38 @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r6, #0
	str r6, [sp, #0xa0]

	non_word_aligned_thumb_func_start sub_08086DFA
sub_08086DFA: @ 0x08086DFA
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	ldr r3, [sp, #0xc]
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L08086E16
	bl .L0808814C
.L08086E16:
	ldr r0, [sp, #0xa0]
	cmp r0, #0
	beq .L08086E3C
	ldr r0, [r3, #8]
	ldr r2, [r0, #0xc]
	adds r0, r3, #0
	movs r1, #3
	bl _call_via_r2
	movs r0, #1
	rsbs r0, r0, #0
	bl .L08088156
	.align 2, 0
.L08086E30: .4byte 0x00004354
.L08086E34: .4byte vtable_unk_080E5B80
.L08086E38: .4byte 0x00000889
.L08086E3C:
	ldr r1, .L08086E54 @ =0x000006A4
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0xc
	bls .L08086E4A
	bl .L0808814C
.L08086E4A:
	lsls r0, r0, #2
	ldr r1, .L08086E58 @ =.L08086E5C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08086E54: .4byte 0x000006A4
.L08086E58: .4byte .L08086E5C
.L08086E5C: @ jump table
	.4byte .L08086E90 @ case 0
	.4byte .L08087764 @ case 1
	.4byte .L080878FC @ case 2
	.4byte .L08087AF8 @ case 3
	.4byte .L08087CB0 @ case 4
	.4byte .L08087E60 @ case 5
	.4byte .L08087E60 @ case 6
	.4byte .L08087E90 @ case 7
	.4byte .L08087EC0 @ case 8
	.4byte .L08087EEC @ case 9
	.4byte .L08087F5C @ case 10
	.4byte .L080880E4 @ case 11
	.4byte .L08088124 @ case 12
.L08086E90:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x10]
	cmp r0, r1
	beq .L08086EAA
	lsls r0, r1, #2
	adds r0, r0, r7
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r7, #0
	bl func_08085F08
.L08086EAA:
	ldr r0, [r7, #0x10]
	str r0, [r7, #0x14]
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r4, r7, r3
	ldr r1, [r4]
	adds r0, r7, #0
	bl func_080C9020
	ldr r5, .L08086F00 @ =0x000006A1
	adds r0, r7, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne .L08086ECA
	bl sub_08087710
.L08086ECA:
	add r3, sp, #0x10
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r4, r0
	ldr r4, [r0]
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #2
	ldr r2, .L08086F04 @ =gUnk_080FFB90
	adds r0, r3, #0
	adds r1, r1, r2
	ldm r1!, {r2, r5, r6}
	stm r0!, {r2, r5, r6}
	ldm r1!, {r2, r6}
	stm r0!, {r2, r6}
	ldr r0, [r3, #0x10]
	cmp r0, #1
	bne .L08086EF2
	b .L08087384
.L08086EF2:
	cmp r0, #1
	bgt .L08086F08
	cmp r0, #0
	beq .L08086F18
	bl .L0808814C
	.align 2, 0
.L08086F00: .4byte 0x000006A1
.L08086F04: .4byte gUnk_080FFB90
.L08086F08:
	cmp r0, #2
	bne .L08086F0E
	b .L080870A0
.L08086F0E:
	cmp r0, #3
	bne .L08086F14
	b .L08087428
.L08086F14:
	bl .L0808814C
.L08086F18:
	ldr r1, [r7, #8]
	ldr r3, .L08086F4C @ =0x00001AA8
	adds r0, r1, r3
	ldr r2, [r0]
	movs r3, #0
	ldr r0, [sp, #0x18]
	cmp r2, r0
	bhs .L08086F2A
	movs r3, #1
.L08086F2A:
	mov sl, r3
	cmp r3, #0
	beq .L08086F58
	ldr r1, .L08086F50 @ =gUnk_080FFD3C
	adds r0, r7, #0
	bl func_080CABA0
	movs r4, #0xd2
	lsls r4, r4, #2
	adds r0, r7, r4
	movs r1, #0xb4
	bl func_08050E50
	ldr r5, .L08086F54 @ =0x000006A4
	adds r1, r7, r5
	bl .L08087F4E
	.align 2, 0
.L08086F4C: .4byte 0x00001AA8
.L08086F50: .4byte gUnk_080FFD3C
.L08086F54: .4byte 0x000006A4
.L08086F58:
	movs r6, #0xbe
	lsls r6, r6, #3
	adds r0, r1, r6
	bl GetStoredBushelCount__C4Barn
	ldr r1, .L08086F78 @ =0x000003E6
	cmp r0, r1
	bls .L08086F84
	ldr r1, .L08086F7C @ =gUnk_080FFD5C
	adds r0, r7, #0
	bl func_080CABA0
	ldr r0, .L08086F80 @ =0x000006A4
	adds r1, r7, r0
	bl .L08087F4E
	.align 2, 0
.L08086F78: .4byte 0x000003E6
.L08086F7C: .4byte gUnk_080FFD5C
.L08086F80: .4byte 0x000006A4
.L08086F84:
	ldr r0, [r7, #8]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	bl GetStoredBushelCount__C4Barn
	ldr r1, .L08087090 @ =0x000003E7
	subs r1, r1, r0
	str r1, [sp, #0xa4]
	ldr r0, [r7, #8]
	movs r2, #0xbe
	lsls r2, r2, #3
	adds r0, r0, r2
	bl GetStoredBushelCount__C4Barn
	add r1, sp, #0x30
	movs r2, #7
	bl func_0804EC84
	add r5, sp, #0x8c
	ldr r1, [sp, #0x10]
	adds r0, r5, #0
	bl __7ArticleUi
	ldr r3, .L08087094 @ =0x00003B34
	adds r4, r7, r3
	mov r6, sl
	strb r6, [r4]
	adds r0, r5, #0
	bl GetName__C7Article
	mov sb, r0
	mov r5, sb
	adds r0, r4, #0
	bl strlen
	adds r1, r4, r0
	mov r8, r1
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L08086FF8
	adds r0, r5, #0
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L08086FE6
	adds r5, r6, #0
.L08086FE6:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r2, r8
	adds r0, r2, r5
	mov r3, sl
	strb r3, [r0]
.L08086FF8:
	ldr r5, .L08087098 @ =gUnk_080FFD90
	mov sb, r5
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	mov r8, r6
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L0808702E
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0808701C
	adds r5, r6, #0
.L0808701C:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r0, r8
	adds r1, r0, r5
	movs r0, #0
	strb r0, [r1]
.L0808702E:
	ldr r0, .L0808709C @ =gUnk_08117828
	ldr r0, [r0]
	mov sb, r0
	adds r0, r4, #0
	bl strlen
	adds r1, r4, r0
	mov r8, r1
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L08087066
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L08087054
	adds r5, r6, #0
.L08087054:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r2, r8
	adds r1, r2, r5
	movs r0, #0
	strb r0, [r1]
.L08087066:
	adds r0, r4, #0
	bl strlen
	adds r3, r4, r0
	mov r8, r3
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	bne .L0808707A
	b .L080872FC
.L0808707A:
	add r0, sp, #0x30
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L08087088
	adds r5, r6, #0
.L08087088:
	mov r0, r8
	add r1, sp, #0x30
	b .L080872EE
	.align 2, 0
.L08087090: .4byte 0x000003E7
.L08087094: .4byte 0x00003B34
.L08087098: .4byte gUnk_080FFD90
.L0808709C: .4byte gUnk_08117828
.L080870A0:
	ldr r3, [r7, #8]
	ldr r5, .L080870D4 @ =0x00001AA8
	adds r0, r3, r5
	ldr r1, [r0]
	movs r2, #0
	ldr r0, [sp, #0x18]
	cmp r1, r0
	bhs .L080870B2
	movs r2, #1
.L080870B2:
	cmp r2, #0
	beq .L080870E0
	ldr r1, .L080870D8 @ =gUnk_080FFD3C
	adds r0, r7, #0
	bl func_080CABA0
	movs r6, #0xd2
	lsls r6, r6, #2
	adds r0, r7, r6
	movs r1, #0xb4
	bl func_08050E50
	ldr r0, .L080870DC @ =0x000006A4
	adds r1, r7, r0
	bl .L08087F4E
	.align 2, 0
.L080870D4: .4byte 0x00001AA8
.L080870D8: .4byte gUnk_080FFD3C
.L080870DC: .4byte 0x000006A4
.L080870E0:
	cmp r4, #3
	bhs .L080870E8
	bl .L0808814C
.L080870E8:
	cmp r4, #5
	bls .L080870F6
	cmp r4, #6
	bne .L080870F2
	b .L08087374
.L080870F2:
	bl .L0808814C
.L080870F6:
	movs r5, #0
	ldr r1, .L08087118 @ =0x00001C38
	adds r0, r3, r1
	movs r1, #0x4a
	bl GetAvailableSpaceForTool__C8RucksackUi
	adds r6, r0, #0
	ldr r0, [r7, #8]
	ldr r4, .L0808711C @ =0x00001C34
	adds r0, r0, r4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08087120
	movs r5, #0x63
	b .L0808715C
	.align 2, 0
.L08087118: .4byte 0x00001C38
.L0808711C: .4byte 0x00001C34
.L08087120:
	ldr r0, [r7, #8]
	ldr r2, .L08087190 @ =0x00001C34
	adds r0, r0, r2
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x8d
	strb r1, [r0]
	bl GetId__C4Tool
	movs r2, #0
	ldr r1, [sp, #0x10]
	cmp r0, r1
	bne .L08087140
	movs r2, #1
.L08087140:
	cmp r2, #0
	beq .L0808715C
	ldr r0, [r7, #8]
	adds r0, r0, r4
	bl GetAmount__C9ToolStack
	cmp r0, #0x63
	beq .L0808715C
	ldr r0, [r7, #8]
	adds r0, r0, r4
	bl GetAmount__C9ToolStack
	movs r1, #0x63
	subs r5, r1, r0
.L0808715C:
	ldr r0, [r7, #8]
	movs r3, #0xe0
	lsls r3, r3, #2
	adds r0, r0, r3
	ldr r1, [sp, #0x10]
	bl GetAvailableSpaceFor__C9ToolChestUi
	adds r1, r6, r5
	adds r1, r1, r0
	str r1, [sp, #0xa4]
	cmp r1, #0
	bne .L0808719C
	ldr r1, .L08087194 @ =gUnk_080FFD98
	adds r0, r7, #0
	bl func_080CABA0
	movs r4, #0xd2
	lsls r4, r4, #2
	adds r0, r7, r4
	movs r1, #0xb4
	bl func_08050E50
	ldr r5, .L08087198 @ =0x000006A4
	adds r1, r7, r5
	bl .L08087F4E
	.align 2, 0
.L08087190: .4byte 0x00001C34
.L08087194: .4byte gUnk_080FFD98
.L08087198: .4byte 0x000006A4
.L0808719C:
	ldr r0, [r7, #8]
	ldr r6, .L08087354 @ =0x00001C38
	adds r0, r0, r6
	ldr r1, [sp, #0x10]
	bl GetAmountOfTool__C8RucksackUi
	adds r6, r0, #0
	movs r0, #0
	mov r8, r0
	ldr r0, [r7, #8]
	movs r1, #0xe0
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [sp, #0x10]
	bl GetAmountOf__C9ToolChestUi
	adds r4, r0, #0
	ldr r0, [r7, #8]
	ldr r5, .L08087358 @ =0x00001C34
	adds r0, r0, r5
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080871FA
	ldr r0, [r7, #8]
	adds r0, r0, r5
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x8e
	strb r1, [r0]
	bl GetId__C4Tool
	movs r2, #0
	ldr r1, [sp, #0x10]
	cmp r0, r1
	bne .L080871EC
	movs r2, #1
.L080871EC:
	cmp r2, #0
	beq .L080871FA
	ldr r0, [r7, #8]
	adds r0, r0, r5
	bl GetAmount__C9ToolStack
	mov r8, r0
.L080871FA:
	mov r2, r8
	adds r0, r6, r2
	adds r0, r0, r4
	add r1, sp, #0x24
	movs r2, #7
	bl func_0804EC84
	mov r5, sp
	adds r5, #0x8f
	ldr r1, [sp, #0x10]
	adds r0, r5, #0
	bl __4ToolUi
	ldr r3, .L0808735C @ =0x00003B34
	adds r4, r7, r3
	movs r6, #0
	mov sl, r6
	mov r0, sl
	strb r0, [r4]
	adds r0, r5, #0
	bl GetName__C4Tool
	mov sb, r0
	mov r5, sb
	adds r0, r4, #0
	bl strlen
	adds r1, r4, r0
	mov r8, r1
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L0808725C
	adds r0, r5, #0
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0808724A
	adds r5, r6, #0
.L0808724A:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r2, r8
	adds r0, r2, r5
	mov r3, sl
	strb r3, [r0]
.L0808725C:
	ldr r5, .L08087360 @ =gUnk_080FFD90
	mov sb, r5
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	mov r8, r6
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L08087292
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L08087280
	adds r5, r6, #0
.L08087280:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r0, r8
	adds r1, r0, r5
	movs r0, #0
	strb r0, [r1]
.L08087292:
	ldr r0, .L08087364 @ =gUnk_08117828
	ldr r0, [r0]
	mov sb, r0
	adds r0, r4, #0
	bl strlen
	adds r1, r4, r0
	mov r8, r1
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L080872CA
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L080872B8
	adds r5, r6, #0
.L080872B8:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r2, r8
	adds r1, r2, r5
	movs r0, #0
	strb r0, [r1]
.L080872CA:
	adds r0, r4, #0
	bl strlen
	adds r3, r4, r0
	mov r8, r3
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L080872FC
	add r0, sp, #0x24
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L080872EA
	adds r5, r6, #0
.L080872EA:
	mov r0, r8
	add r1, sp, #0x24
.L080872EE:
	adds r2, r5, #0
	bl memcpy
	mov r6, r8
	adds r1, r6, r5
	movs r0, #0
	strb r0, [r1]
.L080872FC:
	ldr r0, .L08087368 @ =gUnk_08117814
	ldr r0, [r0]
	mov r8, r0
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L08087330
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08087320
	adds r4, r5, #0
.L08087320:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L08087330:
	ldr r0, .L0808735C @ =0x00003B34
	adds r1, r7, r0
	adds r0, r7, #0
	bl func_080CABEC
	ldr r1, .L0808736C @ =0x00000684
	adds r0, r7, r1
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0xa4]
	movs r3, #5
	bl func_080CA8B4
	ldr r2, .L08087370 @ =0x000006A4
	adds r1, r7, r2
	movs r0, #2
	str r0, [r1]
	bl .L0808814C
	.align 2, 0
.L08087354: .4byte 0x00001C38
.L08087358: .4byte 0x00001C34
.L0808735C: .4byte 0x00003B34
.L08087360: .4byte gUnk_080FFD90
.L08087364: .4byte gUnk_08117828
.L08087368: .4byte gUnk_08117814
.L0808736C: .4byte 0x00000684
.L08087370: .4byte 0x000006A4
.L08087374:
	ldr r3, .L08087380 @ =0x000006A4
	adds r1, r7, r3
	movs r0, #3
	str r0, [r1]
	bl .L0808814C
	.align 2, 0
.L08087380: .4byte 0x000006A4
.L08087384:
	ldr r1, [r7, #8]
	ldr r4, .L080873B8 @ =0x00001AA8
	adds r0, r1, r4
	ldr r2, [r0]
	movs r3, #0
	ldr r0, [sp, #0x18]
	cmp r2, r0
	bhs .L08087396
	movs r3, #1
.L08087396:
	cmp r3, #0
	beq .L080873C4
	ldr r1, .L080873BC @ =gUnk_080FFD3C
	adds r0, r7, #0
	bl func_080CABA0
	movs r5, #0xd2
	lsls r5, r5, #2
	adds r0, r7, r5
	movs r1, #0xb4
	bl func_08050E50
	ldr r6, .L080873C0 @ =0x000006A4
	adds r1, r7, r6
	bl .L08087F4E
	.align 2, 0
.L080873B8: .4byte 0x00001AA8
.L080873BC: .4byte gUnk_080FFD3C
.L080873C0: .4byte 0x000006A4
.L080873C4:
	movs r5, #0xbe
	lsls r5, r5, #3
	adds r0, r1, r5
	bl GetCapacity__C4Barn
	adds r4, r0, #0
	ldr r0, [r7, #8]
	adds r0, r0, r5
	bl CountBarnAnimals__C4Barn
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_080869A0
	subs r4, r4, r5
	cmp r4, r0
	bne .L08087400
	ldr r1, .L080873F8 @ =gUnk_080FFDBC
	adds r0, r7, #0
	bl func_080CABA0
	ldr r0, .L080873FC @ =0x000006A4
	adds r1, r7, r0
	bl .L08087F4E
	.align 2, 0
.L080873F8: .4byte gUnk_080FFDBC
.L080873FC: .4byte 0x000006A4
.L08087400:
	ldr r1, .L08087420 @ =gUnk_080FFDD4
	adds r0, r7, #0
	bl func_080CABA0
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r1, #0xb5
	bl func_08050E50
	ldr r2, .L08087424 @ =0x000006A4
	adds r1, r7, r2
	movs r0, #4
	str r0, [r1]
	bl .L0808814C
	.align 2, 0
.L08087420: .4byte gUnk_080FFDD4
.L08087424: .4byte 0x000006A4
.L08087428:
	ldr r2, [sp, #0x10]
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xf
	ldr r4, .L08087458 @ =0x00000724
	adds r0, r7, r4
.L08087434:
	str r3, [r0]
	subs r0, #8
	subs r1, #1
	cmp r1, #0
	bge .L08087434
	cmp r2, #7
	beq .L08087444
	b .L08087584
.L08087444:
	ldr r0, [r7, #8]
	movs r4, #0xbe
	lsls r4, r4, #3
	adds r0, r0, r4
	bl method_0800D058__C4Barn
	mov r8, r0
	movs r6, #0
	b .L0808748E
	.align 2, 0
.L08087458: .4byte 0x00000724
.L0808745C:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r8, r0
	beq .L08087468
	cmp r6, r8
	beq .L0808748C
.L08087468:
	ldr r0, [r7, #8]
	adds r0, r0, r4
	adds r1, r6, #0
	bl GetCow__4BarnUi
	adds r5, r0, #0
	cmp r5, #0
	beq .L0808748C
	bl IsPregnant__C10BarnAnimal
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808748C
	adds r0, r5, #0
	bl GetGrowthStage__C3Cow
	cmp r0, #2
	beq .L0808749A
.L0808748C:
	adds r6, #1
.L0808748E:
	ldr r0, [r7, #8]
	adds r0, r0, r4
	bl GetCapacity__C4Barn
	cmp r6, r0
	blo .L0808745C
.L0808749A:
	ldr r0, [r7, #8]
	movs r4, #0xbe
	lsls r4, r4, #3
	adds r0, r0, r4
	bl GetCapacity__C4Barn
	cmp r6, r0
	bne .L080874C4
	ldr r1, .L080874BC @ =gUnk_080FFDF8
	adds r0, r7, #0
	bl func_080CABA0
	ldr r5, .L080874C0 @ =0x000006A4
	adds r1, r7, r5
	bl .L08087F4E
	.align 2, 0
.L080874BC: .4byte gUnk_080FFDF8
.L080874C0: .4byte 0x000006A4
.L080874C4:
	ldr r6, .L080874EC @ =0x0000072C
	adds r2, r7, r6
	movs r0, #0xe6
	lsls r0, r0, #3
	adds r1, r7, r0
	ldr r0, [r2]
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r2, r0
	subs r0, r0, r1
	asrs r0, r0, #2
	ldr r1, [r2]
	subs r1, r1, r0
	str r1, [r2]
	movs r1, #0
	mov sb, r1
	movs r6, #0
	mov sl, r4
	b .L08087564
	.align 2, 0
.L080874EC: .4byte 0x0000072C
.L080874F0:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r8, r0
	beq .L080874FC
	cmp r6, r8
	beq .L08087562
.L080874FC:
	ldr r0, [r7, #8]
	add r0, sl
	adds r1, r6, #0
	bl GetCow__4BarnUi
	adds r5, r0, #0
	cmp r5, #0
	beq .L08087562
	bl IsPregnant__C10BarnAnimal
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08087562
	adds r0, r5, #0
	bl GetGrowthStage__C3Cow
	cmp r0, #2
	bne .L08087562
	movs r2, #9
	ldr r3, .L0808757C @ =0x0000072C
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #0xf
	bhi .L0808753E
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	beq .L08087538
	str r2, [r0]
.L08087538:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0808753E:
	mov r5, sb
	lsls r4, r5, #3
	ldr r1, .L08087580 @ =0x000006AC
	adds r0, r7, r1
	adds r0, r0, r4
	str r6, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080868E4
	movs r2, #0xd6
	lsls r2, r2, #3
	adds r1, r7, r2
	adds r1, r1, r4
	str r0, [r1]
	movs r3, #1
	add sb, r3
.L08087562:
	adds r6, #1
.L08087564:
	ldr r0, [r7, #8]
	add r0, sl
	bl GetCapacity__C4Barn
	cmp r6, r0
	blo .L080874F0
	ldr r0, [r7, #0x1c]
	bl func_08075DD4
	adds r0, r7, #0
	movs r1, #0x1e
	b .L080876C2
	.align 2, 0
.L0808757C: .4byte 0x0000072C
.L08087580: .4byte 0x000006AC
.L08087584:
	ldr r0, [r7, #8]
	movs r4, #0xbe
	lsls r4, r4, #3
	adds r0, r0, r4
	bl method_0800D058__C4Barn
	mov r8, r0
	movs r6, #0
	b .L080875C8
.L08087596:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r8, r0
	beq .L080875A2
	cmp r6, r8
	beq .L080875C6
.L080875A2:
	ldr r0, [r7, #8]
	adds r0, r0, r4
	adds r1, r6, #0
	bl GetSheep__4BarnUi
	adds r5, r0, #0
	cmp r5, #0
	beq .L080875C6
	bl IsPregnant__C10BarnAnimal
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080875C6
	adds r0, r5, #0
	bl GetGrowthStage__C5Sheep
	cmp r0, #1
	beq .L080875D4
.L080875C6:
	adds r6, #1
.L080875C8:
	ldr r0, [r7, #8]
	adds r0, r0, r4
	bl GetCapacity__C4Barn
	cmp r6, r0
	blo .L08087596
.L080875D4:
	ldr r0, [r7, #8]
	movs r4, #0xbe
	lsls r4, r4, #3
	adds r0, r0, r4
	bl GetCapacity__C4Barn
	cmp r6, r0
	bne .L080875F8
	ldr r1, .L080875F4 @ =gUnk_080FFE24
	adds r0, r7, #0
	bl func_080CABA0
	adds r4, #0xb4
	bl .L08087F4C
	.align 2, 0
.L080875F4: .4byte gUnk_080FFE24
.L080875F8:
	ldr r5, .L08087620 @ =0x0000072C
	adds r2, r7, r5
	movs r6, #0xe6
	lsls r6, r6, #3
	adds r1, r7, r6
	ldr r0, [r2]
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r2, r0
	subs r0, r0, r1
	asrs r0, r0, #2
	ldr r1, [r2]
	subs r1, r1, r0
	str r1, [r2]
	movs r0, #0
	mov sb, r0
	movs r6, #0
	mov r8, r4
	b .L080876AC
	.align 2, 0
.L08087620: .4byte 0x0000072C
.L08087624:
	ldr r0, [r7, #8]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	bl method_0800D058__C4Barn
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq .L08087644
	ldr r0, [r7, #8]
	add r0, r8
	bl method_0800D058__C4Barn
	cmp r6, r0
	beq .L080876AA
.L08087644:
	ldr r0, [r7, #8]
	add r0, r8
	adds r1, r6, #0
	bl GetSheep__4BarnUi
	adds r5, r0, #0
	cmp r5, #0
	beq .L080876AA
	bl IsPregnant__C10BarnAnimal
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080876AA
	adds r0, r5, #0
	bl GetGrowthStage__C5Sheep
	cmp r0, #1
	bne .L080876AA
	movs r2, #0xa
	ldr r3, .L08087704 @ =0x0000072C
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #0xf
	bhi .L08087686
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	beq .L08087680
	str r2, [r0]
.L08087680:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08087686:
	mov r5, sb
	lsls r4, r5, #3
	ldr r1, .L08087708 @ =0x000006AC
	adds r0, r7, r1
	adds r0, r0, r4
	str r6, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #1
	bl func_080868E4
	movs r2, #0xd6
	lsls r2, r2, #3
	adds r1, r7, r2
	adds r1, r1, r4
	str r0, [r1]
	movs r3, #1
	add sb, r3
.L080876AA:
	adds r6, #1
.L080876AC:
	ldr r0, [r7, #8]
	add r0, r8
	bl GetCapacity__C4Barn
	cmp r6, r0
	blo .L08087624
	ldr r0, [r7, #0x1c]
	bl func_08075DD4
	adds r0, r7, #0
	movs r1, #0x1f
.L080876C2:
	bl func_0808586C
	adds r5, r0, #0
	movs r4, #0
	strh r4, [r7, #0xc]
	movs r6, #0xc9
	lsls r6, r6, #3
	adds r1, r7, r6
	movs r0, #0x28
	str r0, [r1]
	ldr r0, [r7, #0x1c]
	movs r2, #0xc
	ldrsh r1, [r7, r2]
	bl func_08075DB8
	ldr r0, [r7, #0x1c]
	adds r1, r5, #0
	adds r1, #8
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	bl func_08075E24
	str r4, [r7, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x14]
	ldr r3, .L0808770C @ =0x000006A4
	adds r1, r7, r3
	movs r0, #1
	str r0, [r1]
	bl .L0808814C
	.align 2, 0
.L08087704: .4byte 0x0000072C
.L08087708: .4byte 0x000006AC
.L0808770C: .4byte 0x000006A4

	thumb_func_start sub_08087710
sub_08087710: @ 0x08087710
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne .L08087722
	bl .L0808814C
.L08087722:
	movs r4, #0xd5
	lsls r4, r4, #3
	adds r0, r7, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq .L0808773C
	ldr r1, .L08087738 @ =gUnk_080FFE50
	adds r0, r7, #0
	bl func_080CABA0
	b .L08087744
	.align 2, 0
.L08087738: .4byte gUnk_080FFE50
.L0808773C:
	ldr r1, .L0808775C @ =gUnk_080FFE88
	adds r0, r7, #0
	bl func_080CABA0
.L08087744:
	movs r5, #0xd2
	lsls r5, r5, #2
	adds r0, r7, r5
	movs r1, #0xb4
	bl func_08050E50
	ldr r6, .L08087760 @ =0x000006A4
	adds r1, r7, r6
	movs r0, #0xb
	str r0, [r1]
	bl .L0808814C
	.align 2, 0
.L0808775C: .4byte gUnk_080FFE88
.L08087760: .4byte 0x000006A4
.L08087764:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x10]
	cmp r0, r1
	beq .L0808777E
	lsls r0, r1, #2
	adds r0, r0, r7
	movs r1, #0xe6
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r7, #0
	bl func_08085F08
.L0808777E:
	ldr r0, [r7, #0x10]
	str r0, [r7, #0x14]
	ldr r2, .L08087888 @ =0x0000072C
	adds r0, r7, r2
	ldr r1, [r0]
	adds r0, r7, #0
	bl func_080C9020
	ldr r3, .L0808788C @ =0x000006A1
	adds r0, r7, r3
	ldrb r4, [r0]
	cmp r4, #0
	bne .L0808779A
	b .L080878A8
.L0808779A:
	ldr r5, .L08087890 @ =0x00003AB4
	adds r4, r7, r5
	movs r6, #0
	mov sl, r6
	mov r0, sl
	strb r0, [r4]
	ldr r1, [r7, #0x10]
	lsls r1, r1, #3
	movs r2, #0xd6
	lsls r2, r2, #3
	adds r0, r7, r2
	adds r0, r0, r1
	ldr r0, [r0]
	add r1, sp, #0x24
	movs r2, #0
	bl func_0804EC84
	ldr r3, .L08087894 @ =gUnk_080FFE9C
	mov sb, r3
	adds r0, r4, #0
	bl strlen
	adds r5, r4, r0
	mov r8, r5
	movs r1, #0x7f
	subs r6, r1, r0
	cmp r6, #0
	beq .L080877F2
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L080877E0
	adds r5, r6, #0
.L080877E0:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r6, r8
	adds r0, r6, r5
	mov r1, sl
	strb r1, [r0]
.L080877F2:
	adds r0, r4, #0
	bl strlen
	adds r2, r4, r0
	mov r8, r2
	movs r1, #0x7f
	subs r6, r1, r0
	cmp r6, #0
	beq .L08087824
	add r0, sp, #0x24
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L08087812
	adds r5, r6, #0
.L08087812:
	mov r0, r8
	add r1, sp, #0x24
	adds r2, r5, #0
	bl memcpy
	mov r3, r8
	adds r1, r3, r5
	movs r0, #0
	strb r0, [r1]
.L08087824:
	ldr r5, .L08087898 @ =gUnk_080FFEA8
	mov r8, r5
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L08087856
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08087846
	adds r4, r5, #0
.L08087846:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L08087856:
	ldr r6, .L08087890 @ =0x00003AB4
	adds r1, r7, r6
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r2, .L0808789C @ =gUnk_080FFEAC
	ldr r3, .L080878A0 @ =gUnk_080FFEB0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	adds r0, r4, #0
	bl func_08050E30
	adds r0, r4, #0
	movs r1, #0xb4
	bl func_08050E50
	ldr r2, .L080878A4 @ =0x000006A4
	adds r1, r7, r2
	movs r0, #0xa
	str r0, [r1]
	bl .L0808814C
	.align 2, 0
.L08087888: .4byte 0x0000072C
.L0808788C: .4byte 0x000006A1
.L08087890: .4byte 0x00003AB4
.L08087894: .4byte gUnk_080FFE9C
.L08087898: .4byte gUnk_080FFEA8
.L0808789C: .4byte gUnk_080FFEAC
.L080878A0: .4byte gUnk_080FFEB0
.L080878A4: .4byte 0x000006A4
.L080878A8:
	ldr r3, .L080878F4 @ =0x000006A3
	adds r0, r7, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080878B6
	bl .L0808814C
.L080878B6:
	ldr r0, [r7, #0x1c]
	bl func_08075DD4
	adds r0, r7, #0
	bl func_08085640
	adds r5, r0, #0
	strh r4, [r7, #0xc]
	movs r6, #0xc9
	lsls r6, r6, #3
	adds r1, r7, r6
	movs r0, #0x28
	str r0, [r1]
	ldr r0, [r7, #0x1c]
	movs r2, #0xc
	ldrsh r1, [r7, r2]
	bl func_08075DB8
	ldr r0, [r7, #0x1c]
	adds r1, r5, #0
	adds r1, #8
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	bl func_08075E24
	ldr r3, .L080878F8 @ =0x000006A4
	adds r0, r7, r3
	str r4, [r0]
	str r4, [r7, #0x10]
	bl .L080880D6
	.align 2, 0
.L080878F4: .4byte 0x000006A3
.L080878F8: .4byte 0x000006A4
.L080878FC:
	adds r0, r7, #0
	bl func_080088CC
	adds r4, r0, #0
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	bne .L0808790E
	b .L08087AB8
.L0808790E:
	ldr r4, .L08087980 @ =0x00000684
	adds r0, r7, r4
	ldr r5, [r0, #0x14]
	mov r8, r5
	bl func_080CAAF4
	add r3, sp, #0x10
	movs r6, #0xa9
	lsls r6, r6, #2
	adds r4, r7, r6
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r4, r0
	ldr r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r2, .L08087984 @ =gUnk_080FFB90
	adds r0, r3, #0
	adds r1, r1, r2
	ldm r1!, {r2, r5, r6}
	stm r0!, {r2, r5, r6}
	ldm r1!, {r2, r5}
	stm r0!, {r2, r5}
	ldr r0, [r7, #8]
	ldr r6, .L08087988 @ =0x00001AA8
	adds r0, r0, r6
	ldr r1, [r3, #8]
	mov r2, r8
	muls r2, r1, r2
	adds r1, r2, #0
	bl func_0809ACC0
	adds r0, r7, #0
	bl func_080C8550
	ldr r3, .L0808798C @ =0x000006A4
	adds r1, r7, r3
	movs r0, #7
	str r0, [r1]
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, #4
	adds r4, r4, r0
	ldr r4, [r4]
	cmp r4, #0
	bne .L08087994
	ldr r0, [r7, #8]
	movs r4, #0xbe
	lsls r4, r4, #3
	adds r0, r0, r4
	mov r1, r8
	bl AddStoredBushels__4BarnUi
	ldr r1, .L08087990 @ =gUnk_080FFEB4
	b .L08087A86
	.align 2, 0
.L08087980: .4byte 0x00000684
.L08087984: .4byte gUnk_080FFB90
.L08087988: .4byte 0x00001AA8
.L0808798C: .4byte 0x000006A4
.L08087990: .4byte gUnk_080FFEB4
.L08087994:
	cmp r4, #5
	bls .L0808799A
	b .L08087A9C
.L0808799A:
	cmp r4, #3
	bhs .L080879A0
	b .L08087A9C
.L080879A0:
	movs r4, #0
	ldr r0, [r7, #8]
	ldr r6, .L080879E8 @ =0x00001C34
	adds r0, r0, r6
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080879EC
	mov r5, r8
	cmp r5, #0x63
	bls .L080879BC
	movs r0, #0x63
	mov r8, r0
.L080879BC:
	ldr r5, [r7, #8]
	adds r5, r5, r6
	add r6, sp, #0x24
	add r4, sp, #0x90
	ldr r1, [sp, #0x10]
	adds r0, r4, #0
	bl __4ToolUi
	ldrb r1, [r4]
	adds r0, r6, #0
	mov r2, r8
	bl __9ToolStackG4ToolUi
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #2
	bl memcpy
	movs r1, #0
	mov r8, r1
	b .L08087A3E
	.align 2, 0
.L080879E8: .4byte 0x00001C34
.L080879EC:
	ldr r0, [r7, #8]
	ldr r2, .L08087A78 @ =0x00001C34
	adds r0, r0, r2
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x91
	strb r1, [r0]
	bl GetId__C4Tool
	movs r2, #0
	ldr r1, [sp, #0x10]
	cmp r0, r1
	bne .L08087A0C
	movs r2, #1
.L08087A0C:
	cmp r2, #0
	beq .L08087A40
	ldr r0, [r7, #8]
	adds r0, r0, r6
	bl GetAmount__C9ToolStack
	cmp r0, #0x63
	beq .L08087A40
	ldr r0, [r7, #8]
	adds r0, r0, r6
	bl GetAmount__C9ToolStack
	movs r1, #0x63
	subs r4, r1, r0
	cmp r8, r4
	bhs .L08087A2E
	mov r4, r8
.L08087A2E:
	ldr r0, [r7, #8]
	adds r0, r0, r6
	adds r1, r4, #0
	bl AddAmount__9ToolStackUi
	mov r3, r8
	subs r3, r3, r4
	mov r8, r3
.L08087A3E:
	movs r4, #1
.L08087A40:
	mov r5, r8
	cmp r5, #0
	beq .L08087A94
	ldr r0, [r7, #8]
	ldr r6, .L08087A7C @ =0x00001C38
	adds r0, r0, r6
	ldr r1, [sp, #0x10]
	mov r2, r8
	bl AddAmountOfTool__8RucksackUiUi
	adds r2, r0, #0
	cmp r8, r2
	beq .L08087A5C
	movs r4, #1
.L08087A5C:
	cmp r2, #0
	beq .L08087A94
	ldr r0, [r7, #8]
	movs r1, #0xe0
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [sp, #0x10]
	bl AddAmountOf__9ToolChestUiUi
	cmp r4, #0
	beq .L08087A84
	ldr r1, .L08087A80 @ =gUnk_080FFEEC
	b .L08087A86
	.align 2, 0
.L08087A78: .4byte 0x00001C34
.L08087A7C: .4byte 0x00001C38
.L08087A80: .4byte gUnk_080FFEEC
.L08087A84:
	ldr r1, .L08087A90 @ =gUnk_080FFF38
.L08087A86:
	adds r0, r7, #0
	bl func_080CABA0
	b .L08087A9C
	.align 2, 0
.L08087A90: .4byte gUnk_080FFF38
.L08087A94:
	ldr r1, .L08087AB4 @ =gUnk_080FFF84
	adds r0, r7, #0
	bl func_080CABA0
.L08087A9C:
	movs r2, #0xd5
	lsls r2, r2, #3
	adds r0, r7, r2
	movs r1, #1
	strb r1, [r0]
	movs r3, #0xd2
	lsls r3, r3, #2
	adds r0, r7, r3
	movs r1, #0xb4
	bl func_08050E50
	b .L0808814C
	.align 2, 0
.L08087AB4: .4byte gUnk_080FFF84
.L08087AB8:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L08087AE0
	ldr r5, .L08087AD8 @ =0x00000684
	adds r0, r7, r5
	bl func_080CAAF4
	ldr r6, .L08087ADC @ =0x000006A4
	adds r0, r7, r6
	str r4, [r0]
	b .L080880D6
	.align 2, 0
.L08087AD8: .4byte 0x00000684
.L08087ADC: .4byte 0x000006A4
.L08087AE0:
	ldr r0, .L08087AF4 @ =0x00000684
	adds r1, r7, r0
	ldrb r0, [r1, #8]
	cmp r0, #0
	bne .L08087AEC
	b .L0808814C
.L08087AEC:
	adds r0, r1, #0
	bl func_080CA98C
	b .L0808814C
	.align 2, 0
.L08087AF4: .4byte 0x00000684
.L08087AF8:
	add r4, sp, #0x10
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r7
	movs r1, #0xaa
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r2, .L08087B58 @ =gUnk_080FFB90
	adds r0, r4, #0
	adds r1, r1, r2
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldm r1!, {r2, r6}
	stm r0!, {r2, r6}
	ldr r0, [r7, #8]
	ldr r3, .L08087B5C @ =0x00001C34
	adds r0, r0, r3
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08087B60
	ldr r5, [r7, #8]
	ldr r4, .L08087B5C @ =0x00001C34
	adds r5, r5, r4
	add r6, sp, #0x24
	mov r4, sp
	adds r4, #0x92
	adds r0, r4, #0
	movs r1, #0x49
	bl __4ToolUi
	ldrb r1, [r4]
	adds r0, r6, #0
	movs r2, #1
	bl __9ToolStackG4ToolUi
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #2
	bl memcpy
	b .L08087B7C
	.align 2, 0
.L08087B58: .4byte gUnk_080FFB90
.L08087B5C: .4byte 0x00001C34
.L08087B60:
	ldr r0, [r7, #8]
	ldr r5, .L08087B88 @ =0x00001C38
	adds r0, r0, r5
	movs r1, #0x49
	bl GetAvailableSpaceForTool__C8RucksackUi
	cmp r0, #0
	beq .L08087B90
	ldr r0, [r7, #8]
	adds r0, r0, r5
	movs r1, #0x49
	movs r2, #1
	bl AddAmountOfTool__8RucksackUiUi
.L08087B7C:
	ldr r1, .L08087B8C @ =gUnk_080FFF84
	adds r0, r7, #0
	bl func_080CABA0
	b .L08087BDC
	.align 2, 0
.L08087B88: .4byte 0x00001C38
.L08087B8C: .4byte gUnk_080FFF84
.L08087B90:
	ldr r0, [r7, #8]
	movs r6, #0xe0
	lsls r6, r6, #2
	adds r0, r0, r6
	movs r1, #0x49
	bl GetAvailableSpaceFor__C9ToolChestUi
	cmp r0, #0
	bne .L08087BC4
	ldr r1, .L08087BBC @ =gUnk_080FFD98
	adds r0, r7, #0
	bl func_080CABA0
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r1, #0xb4
	bl func_08050E50
	ldr r2, .L08087BC0 @ =0x000006A4
	adds r1, r7, r2
	b .L08087F4E
	.align 2, 0
.L08087BBC: .4byte gUnk_080FFD98
.L08087BC0: .4byte 0x000006A4
.L08087BC4:
	ldr r0, [r7, #8]
	movs r3, #0xe0
	lsls r3, r3, #2
	adds r0, r0, r3
	movs r1, #0x49
	movs r2, #1
	bl AddAmountOf__9ToolChestUiUi
	ldr r1, .L08087CA4 @ =gUnk_080FFF38
	adds r0, r7, #0
	bl func_080CABA0
.L08087BDC:
	ldr r0, [r7, #8]
	ldr r4, .L08087CA8 @ =0x00001AA8
	adds r0, r0, r4
	ldr r1, [sp, #0x18]
	bl func_0809ACC0
	adds r0, r7, #0
	bl func_080C8550
	movs r5, #0xd5
	lsls r5, r5, #3
	adds r1, r7, r5
	movs r0, #1
	strb r0, [r1]
	movs r6, #0xd2
	lsls r6, r6, #2
	adds r0, r7, r6
	movs r1, #0xb4
	bl func_08050E50
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #0
	beq .L08087C14
	subs r0, #1
	str r0, [r1]
.L08087C14:
	ldr r0, [r1]
	cmp r0, #0
	beq .L08087C1E
	subs r0, #1
	str r0, [r1]
.L08087C1E:
	ldr r0, [r1]
	cmp r0, #0
	beq .L08087C28
	subs r0, #1
	str r0, [r1]
.L08087C28:
	movs r2, #7
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08087C42
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	beq .L08087C3C
	str r2, [r0]
.L08087C3C:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08087C42:
	movs r2, #8
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08087C62
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	beq .L08087C5C
	str r2, [r0]
.L08087C5C:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08087C62:
	ldr r0, [r7, #0x1c]
	bl func_08075DD4
	adds r0, r7, #0
	bl func_08085640
	adds r5, r0, #0
	movs r4, #0
	strh r4, [r7, #0xc]
	movs r6, #0xc9
	lsls r6, r6, #3
	adds r1, r7, r6
	movs r0, #0x28
	str r0, [r1]
	ldr r0, [r7, #0x1c]
	movs r2, #0xc
	ldrsh r1, [r7, r2]
	bl func_08075DB8
	ldr r0, [r7, #0x1c]
	adds r1, r5, #0
	adds r1, #8
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	bl func_08075E24
	ldr r3, .L08087CAC @ =0x000006A4
	adds r1, r7, r3
	str r4, [r7, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x14]
	b .L08087E82
	.align 2, 0
.L08087CA4: .4byte gUnk_080FFF38
.L08087CA8: .4byte 0x00001AA8
.L08087CAC: .4byte 0x000006A4
.L08087CB0:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r7, r4
	ldr r6, [r0]
	cmp r6, #3
	beq .L08087CBE
	b .L0808814C
.L08087CBE:
	add r3, sp, #0x10
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r7
	movs r5, #0xaa
	lsls r5, r5, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r2, .L08087D70 @ =gUnk_080FFB90
	adds r0, r3, #0
	adds r1, r1, r2
	ldm r1!, {r2, r4, r5}
	stm r0!, {r2, r4, r5}
	ldm r1!, {r2, r4}
	stm r0!, {r2, r4}
	ldr r0, [r7, #8]
	ldr r5, .L08087D74 @ =0x00001AA8
	adds r0, r0, r5
	ldr r1, [r3, #8]
	bl func_0809ACC0
	adds r0, r7, #0
	bl func_080C8550
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne .L08087D90
	add r1, sp, #0x2c
	movs r4, #0x25
	ldrh r2, [r1]
	ldr r3, .L08087D78 @ =0xFFFFFC00
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r4
	strh r0, [r1]
	movs r5, #0xb8
	ldrb r2, [r1, #1]
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r5
	strb r0, [r1, #1]
	movs r4, #1
	ldrh r2, [r1, #2]
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r4
	strh r0, [r1, #2]
	ldrb r0, [r1, #3]
	ands r6, r0
	orrs r6, r5
	strb r6, [r1, #3]
	ldrh r0, [r1, #4]
	ands r3, r0
	orrs r3, r4
	strh r3, [r1, #4]
	add r4, sp, #0x24
	movs r6, #0
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	strb r6, [r4, #6]
	add r5, sp, #0x40
	ldr r1, .L08087D7C @ =gUnk_080FFB60
	movs r0, #0xe
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0xe
	bl __3CowPCcRC13ActorLocationUiUi
	ldr r0, [r7, #8]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r1, r5, #0
	bl InsertCow__4BarnRC3Cow
	adds r4, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne .L08087D84
	ldr r2, .L08087D80 @ =0x000006A4
	adds r1, r7, r2
	b .L08087E82
	.align 2, 0
.L08087D70: .4byte gUnk_080FFB90
.L08087D74: .4byte 0x00001AA8
.L08087D78: .4byte 0xFFFFFC00
.L08087D7C: .4byte gUnk_080FFB60
.L08087D80: .4byte 0x000006A4
.L08087D84:
	ldr r3, .L08087D8C @ =0x000043D8
	adds r0, r7, r3
	str r6, [r0]
	b .L08087E20
	.align 2, 0
.L08087D8C: .4byte 0x000043D8
.L08087D90:
	cmp r0, #2
	beq .L08087D96
	b .L0808814C
.L08087D96:
	add r1, sp, #0x64
	movs r4, #0x25
	ldrh r2, [r1]
	ldr r3, .L08087E0C @ =0xFFFFFC00
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r4
	strh r0, [r1]
	ldrb r2, [r1, #1]
	adds r0, r6, #0
	ands r0, r2
	movs r4, #8
	orrs r0, r4
	strb r0, [r1, #1]
	movs r5, #2
	ldrh r2, [r1, #2]
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r5
	strh r0, [r1, #2]
	ldrb r0, [r1, #3]
	ands r6, r0
	orrs r6, r4
	strb r6, [r1, #3]
	ldrh r0, [r1, #4]
	ands r3, r0
	orrs r3, r5
	strh r3, [r1, #4]
	add r4, sp, #0x5c
	movs r5, #0
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	strb r5, [r4, #6]
	add r5, sp, #0x24
	ldr r1, .L08087E10 @ =gUnk_080FFB60
	movs r0, #0xe
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0xe
	bl __5SheepPCcRC13ActorLocationUiUi
	ldr r0, [r7, #8]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r1, r5, #0
	bl InsertSheep__4BarnRC5Sheep
	adds r4, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne .L08087E18
	ldr r2, .L08087E14 @ =0x000006A4
	adds r1, r7, r2
	b .L08087E82
	.align 2, 0
.L08087E0C: .4byte 0xFFFFFC00
.L08087E10: .4byte gUnk_080FFB60
.L08087E14: .4byte 0x000006A4
.L08087E18:
	ldr r3, .L08087E50 @ =0x000043D8
	adds r1, r7, r3
	movs r0, #1
	str r0, [r1]
.L08087E20:
	ldr r0, [sp, #0xc]
	ldr r1, .L08087E54 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	ldr r5, .L08087E58 @ =0x000006A4
	adds r1, r7, r5
	movs r0, #0xc
	str r0, [r1]
	ldr r6, .L08087E5C @ =0x000043DC
	adds r0, r7, r6
	str r4, [r0]
	b .L0808814C
	.align 2, 0
.L08087E50: .4byte 0x000043D8
.L08087E54: .4byte 0x00000889
.L08087E58: .4byte 0x000006A4
.L08087E5C: .4byte 0x000043DC
.L08087E60:
	ldr r1, .L08087E88 @ =gUnk_080FFF94
	adds r0, r7, #0
	bl func_080CABA0
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r1, #0xb4
	bl func_08050E50
	movs r2, #0xd5
	lsls r2, r2, #3
	adds r1, r7, r2
	movs r0, #1
	strb r0, [r1]
	ldr r3, .L08087E8C @ =0x000006A4
	adds r1, r7, r3
.L08087E82:
	movs r0, #7
	str r0, [r1]
	b .L0808814C
	.align 2, 0
.L08087E88: .4byte gUnk_080FFF94
.L08087E8C: .4byte 0x000006A4
.L08087E90:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r0, #3
	beq .L08087E9E
	b .L0808814C
.L08087E9E:
	ldr r1, .L08087EB8 @ =gUnk_080FFFC4
	adds r0, r7, #0
	bl func_080CABA0
	movs r5, #0xd2
	lsls r5, r5, #2
	adds r0, r7, r5
	movs r1, #0xb4
	bl func_08050E50
	ldr r6, .L08087EBC @ =0x000006A4
	adds r1, r7, r6
	b .L08087F4E
	.align 2, 0
.L08087EB8: .4byte gUnk_080FFFC4
.L08087EBC: .4byte 0x000006A4
.L08087EC0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #3
	beq .L08087ECE
	b .L0808814C
.L08087ECE:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x14]
	movs r2, #0xd2
	lsls r2, r2, #2
	adds r0, r7, r2
	bl func_08050E5C
	ldr r3, .L08087EE8 @ =0x000006A4
	adds r1, r7, r3
	movs r0, #0
	str r0, [r1]
	b .L0808814C
	.align 2, 0
.L08087EE8: .4byte 0x000006A4
.L08087EEC:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r0, #3
	beq .L08087EFA
	b .L0808814C
.L08087EFA:
	ldr r0, [r7, #0x1c]
	bl func_08075DD4
	adds r0, r7, #0
	bl func_08085640
	adds r5, r0, #0
	movs r4, #0
	strh r4, [r7, #0xc]
	movs r6, #0xc9
	lsls r6, r6, #3
	adds r1, r7, r6
	movs r0, #0x28
	str r0, [r1]
	ldr r0, [r7, #0x1c]
	movs r2, #0xc
	ldrsh r1, [r7, r2]
	bl func_08075DB8
	ldr r0, [r7, #0x1c]
	adds r1, r5, #0
	adds r1, #8
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	bl func_08075E24
	str r4, [r7, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x14]
	ldr r1, .L08087F54 @ =gUnk_080FFFC4
	adds r0, r7, #0
	bl func_080CABA0
	movs r3, #0xd2
	lsls r3, r3, #2
	adds r0, r7, r3
	movs r1, #0xb4
	bl func_08050E50
	ldr r4, .L08087F58 @ =0x000006A4
.L08087F4C:
	adds r1, r7, r4
.L08087F4E:
	movs r0, #8
	str r0, [r1]
	b .L0808814C
	.align 2, 0
.L08087F54: .4byte gUnk_080FFFC4
.L08087F58: .4byte 0x000006A4
.L08087F5C:
	movs r5, #0xd4
	lsls r5, r5, #2
	adds r0, r7, r5
	ldr r0, [r0]
	cmp r0, #3
	beq .L08087F6A
	b .L0808814C
.L08087F6A:
	movs r6, #0xd2
	lsls r6, r6, #2
	adds r4, r7, r6
	adds r0, r4, #0
	bl func_08050DF0
	cmp r0, #1
	beq .L08087F82
	cmp r0, #2
	bne .L08087F80
	b .L080880C8
.L08087F80:
	b .L0808814C
.L08087F82:
	ldr r0, [r7, #0x10]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldr r1, .L080880AC @ =0x000006AC
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	add r4, sp, #0x94
	str r0, [r4]
	str r1, [r4, #4]
	ldr r0, [r7, #8]
	ldr r2, .L080880B0 @ =0x00001AA8
	adds r0, r0, r2
	ldr r1, [r4, #4]
	bl func_0809ABD8
	adds r0, r7, #0
	bl func_080C8550
	ldr r0, [r7, #8]
	movs r3, #0xbe
	lsls r3, r3, #3
	adds r0, r0, r3
	ldr r1, [r4]
	bl Remove__4BarnUi
	ldr r4, .L080880B4 @ =0x00003AB4
	adds r5, r7, r4
	ldr r6, .L080880B8 @ =gUnk_080FFB60
	adds r0, r6, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x7f
	bls .L08087FCA
	movs r4, #0x7f
.L08087FCA:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl memcpy
	adds r0, r5, r4
	movs r6, #0
	mov sb, r6
	strb r6, [r0]
	ldr r0, .L080880BC @ =gUnk_080FFFE8
	mov r8, r0
	adds r0, r5, #0
	bl strlen
	adds r6, r5, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0808800E
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08087FFE
	adds r4, r5, #0
.L08087FFE:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	mov r1, sb
	strb r1, [r0]
.L0808800E:
	ldr r0, [r7, #8]
	adds r0, #0x14
	bl method_08009AF4__C4Farm
	mov sb, r0
	ldr r2, .L080880B4 @ =0x00003AB4
	adds r4, r7, r2
	mov r8, sb
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0808804C
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0808803C
	adds r4, r5, #0
.L0808803C:
	adds r0, r6, #0
	mov r1, sb
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L0808804C:
	ldr r3, .L080880B4 @ =0x00003AB4
	adds r4, r7, r3
	ldr r5, .L080880C0 @ =gUnk_080FFFFC
	mov r8, r5
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L08088082
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08088072
	adds r4, r5, #0
.L08088072:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L08088082:
	ldr r6, .L080880B4 @ =0x00003AB4
	adds r1, r7, r6
	adds r0, r7, #0
	bl func_080CABA0
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r1, #0xb5
	bl func_08050E50
	ldr r2, .L080880C4 @ =0x000006A4
	adds r1, r7, r2
	movs r0, #9
	str r0, [r1]
	movs r3, #0xd5
	lsls r3, r3, #3
	adds r1, r7, r3
	movs r0, #1
	strb r0, [r1]
	b .L0808814C
	.align 2, 0
.L080880AC: .4byte 0x000006AC
.L080880B0: .4byte 0x00001AA8
.L080880B4: .4byte 0x00003AB4
.L080880B8: .4byte gUnk_080FFB60
.L080880BC: .4byte gUnk_080FFFE8
.L080880C0: .4byte gUnk_080FFFFC
.L080880C4: .4byte 0x000006A4
.L080880C8:
	adds r0, r4, #0
	bl func_08050E5C
	ldr r4, .L080880E0 @ =0x000006A4
	adds r0, r7, r4
	movs r1, #1
	str r1, [r0]
.L080880D6:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x14]
	b .L0808814C
	.align 2, 0
.L080880E0: .4byte 0x000006A4
.L080880E4:
	movs r5, #0xd4
	lsls r5, r5, #2
	adds r0, r7, r5
	ldr r0, [r0]
	cmp r0, #3
	bne .L0808814C
	ldr r2, [sp, #0xc]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0808814C
	movs r6, #1
	str r6, [sp, #0xa0]
	ldr r1, .L08088120 @ =0x00000889
	adds r0, r2, #0
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	b .L0808814C
	.align 2, 0
.L08088120: .4byte 0x00000889
.L08088124:
	ldr r3, [sp, #0xc]
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0808814C
	ldr r1, .L08088148 @ =0x000043DC
	adds r0, r7, r1
	ldr r4, [r0]
	ldr r0, [r3, #8]
	ldr r2, [r0, #0xc]
	adds r0, r3, #0
	movs r1, #3
	bl _call_via_r2
	adds r0, r4, #0
	b .L08088156
	.align 2, 0
.L08088148: .4byte 0x000043DC
.L0808814C:
	adds r0, r7, #0
	bl func_080C96C4
	bl sub_08086DFA
.L08088156:
	add sp, #0xb4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
