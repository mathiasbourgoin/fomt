OUTPUT_ARCH(arm)

_M4aNumMusicPlayers = 5;
_M4aMaxLines = 0x50;

gMPlayJumpTableTemplate = 0x08139A88;
gScaleTable = 0x08139B18;
gFreqTable = 0x08139BCC;
gPcmSamplesPerVBlankTable = 0x08139BFC;
gCgbScaleTable = 0x08139C14;
gCgbFreqTable = 0x08139C98;
gNoiseTable = 0x08139CB0;
gCgb3Vol = 0x08139CEC;
gClockTable = 0x08139CFC;
gXcmdTable = 0x08139D30;

MEMORY
{
    EWRAM (w!x) : ORIGIN = 0x02000000, LENGTH = 256K
    IWRAM (w!x) : ORIGIN = 0x03000000, LENGTH = 32K
    ROM   (rx)  : ORIGIN = 0x08000000, LENGTH = 32M
}

SECTIONS
{
    .ewram_bss (NOLOAD) : ALIGN(4)
    {
        . = ALIGN(4); src/sound_data.o(.sbss);
        . = ALIGN(4); src/m4a.o(.gSoundInfo);
        . = ALIGN(4); src/m4a.o(.gMPlayJumpTable);
        . = ALIGN(4); src/m4a.o(.gCgbChans);
        . = ALIGN(4); src/m4a.o(.gMusicPlayerA);
        . = ALIGN(4); src/m4a.o(.gMusicPlayerB);
        . = ALIGN(4); src/m4a.o(.gMusicPlayerC);
        . = ALIGN(4); src/m4a.o(.gMusicPlayerE);
        . = ALIGN(4); src/m4a.o(.gMPlayMemAccArea);
        . = ALIGN(4); src/m4a.o(.gMusicPlayerD);
        __ewram_bss_end = .;
    } > EWRAM

    .bss (NOLOAD) : ALIGN(4)
    {
        . = ALIGN(4); src/m4a.o(.bss);
        . = ALIGN(4);
        . = 0x000400; gUnk_03000400 = .;
        . = 0x000402; gUnk_03000402 = .;
        . = 0x000404; gUnk_03000404 = .;
        . = 0x000408; gUnk_03000408 = .;
        . = 0x00040C; gUnk_0300040C = .;
        . = 0x000410; gUnk_03000410 = .;
        . = 0x000414; gUnk_03000414 = .;
        . = 0x000418; gUnk_03000418 = .;
        . = 0x00041C; gUnk_0300041C = .;
        . = 0x000420; gUnk_03000420 = .;
        . = 0x000430; gUnk_03000430 = .;
        . = 0x000450; gUnk_03000450 = .;
        . = 0x000490; /* end */
    } > IWRAM

    .rom : ALIGN(4)
    {
        src/crt0.o(.rom_header);
        asm/main.o(.text);
        asm/sram_proxy_1.o(.text);
        asm/interrupt.o(.text);
        src/code_0800057C.o(.text);
        src/new.o(.text);
        src/pure_virtual.o(.text);
        asm/sram_proxy_2.o(.text);
        src/scene.o(.text);
        asm/scene.o(.text);
        asm/intro_scene.o(.text);
        src/code_0800371C.o(.text);
        asm/code_0800374C.o(.text);
        asm/new_game.o(.text);
        src/code_08004BDC.o(.text);
        asm/code_08004C0C.o(.text);
        src/code_08004C54.o(.text);
        asm/code_08004C68.o(.text);
        src/code_0800598C.o(.text);
        src/code_080059D0.o(.text);
        asm/code_08005A00.o(.text);
        src/code_08005A3C.o(.text);
        asm/code_08005A58.o(.text);
        src/code_08007078.o(.text);
        src/code_080070A4.o(.text);
        asm/code_080070D4.o(.text);
        src/code_08007110.o(.text);
        src/code_0800711C.o(.text);
        src/hardware.o(.text);
        asm/hardware.o(.text);
        src/code_08008A68.o(.text);
        asm/code_08008AE0.o(.text);
        src/code_08008DB8.o(.text);
        asm/code_08008DE8.o(.text);
        src/code_080099EC.o(.text);
        src/farm.o(.text);
        src/field.o(.text);
        src/shipping_bin.o(.text);
        src/tool_chest.o(.text);
        src/fridge.o(.text);
        src/shelf.o(.text);
        src/record_player.o(.text);
        src/code_0800BC58.o(.text);
        src/farm_house.o(.text);
        src/coop.o(.text);
        src/barn.o(.text);
        src/item.o(.text);
        src/code_0800E2E4.o(.text);
        src/farmer.o(.text);
        src/rucksack_item.o(.text);
        src/held_item.o(.text);
        src/rucksack.o(.text);
        asm/more_items.o(.text);
        asm/game_scene.o(.text);
        src/code_080100F0.o(.text);
        src/code_08010158.o(.text);
        asm/code_080101A0.o(.text);
        asm/game_state.o(.text);
        src/code_08010F04.o(.text);
        asm/code_08010F0C.o(.text);
        src/code_08010F14.o(.text);
        src/game_state.o(.text);
        asm/code_08010F54.o(.text);
        src/code_08011FE8.o(.text);
        asm/code_08012028.o(.text);
        src/entity.o(.text);
        src/code_entity_08020018.o(.text);
        asm/code_entities.o(.text);
        src/entity_actor.o(.text);
        asm/code_entities_080320DC.o(.text);
        src/npc_entity.o(.text);
        asm/code_entities_08034CEC.o(.text);

        asm/code_0803A8A4.o(.text);
        src/script_engine.o(.text);
        . = . + 0x108;
        asm/code_0803EE94.o(.text);
        src/code_0804E8F0.o(.text);
        src/code_0804E958.o(.text);
        asm/code_0804E9C8.o(.text);
        src/code_080521BC.o(.text);
        asm/code_080521FC.o(.text);
        src/code_08057E1C.o(.text);
        asm/code_08057E5C.o(.text);
        src/code_0805CEFC.o(.text);
        asm/code_0805CF3C.o(.text);
        src/code_0805E658.o(.text);
        asm/code_0805E698.o(.text);
        src/code_0805E6CC.o(.text);
        asm/code_0805E760.o(.text);
        src/code_0805FD04.o(.text);
        asm/code_0805FD44.o(.text);
        src/code_08069E58.o(.text);
        asm/code_08069E98.o(.text);
        src/code_0806D918.o(.text);
        asm/code_0806D948.o(.text);
        src/code_0806E9D8.o(.text);
        src/code_0806EA00.o(.text);
        asm/code_0806EA30.o(.text);
        src/code_0806EA6C.o(.text);
        asm/code_0806EA78.o(.text);
        src/code_080709D8.o(.text);
        asm/code_08070A08.o(.text);
        src/code_0807561C.o(.text);
        asm/code_0807565C.o(.text);
        src/code_0807DD68.o(.text);
        asm/code_0807DDA8.o(.text);
        src/code_0807EE44.o(.text);
        asm/code_0807EE84.o(.text);
        src/code_0807F5B0.o(.text);
        asm/code_0807F5F0.o(.text);
        src/code_0808048C.o(.text);
        asm/code_080804CC.o(.text);
        src/code_08080DC4.o(.text);
        asm/code_08080E04.o(.text);
        src/code_08081A70.o(.text);
        asm/code_08081AB0.o(.text);
        src/code_08082144.o(.text);
        asm/code_08082184.o(.text);
        src/code_08083AEC.o(.text);
        asm/code_08083B2C.o(.text);
        src/code_08085528.o(.text);
        asm/code_08085568.o(.text);
        src/code_080881AC.o(.text);
        asm/code_080881EC.o(.text);
        src/code_0808AB68.o(.text);
        asm/code_0808ABA8.o(.text);
        src/code_0808C59C.o(.text);
        asm/code_0808C5DC.o(.text);
        src/code_0808ED08.o(.text);
        asm/code_0808ED48.o(.text);
        src/code_08090E84.o(.text);
        asm/code_08090EC4.o(.text);
        src/code_080925C4.o(.text);
        asm/code_08092604.o(.text);
        src/code_080931E0.o(.text);
        asm/code_08093220.o(.text);
        src/code_08093A88.o(.text);
        asm/code_08093AC8.o(.text);
        src/code_0809A518.o(.text);
        asm/code_0809A558.o(.text);

        src/actor.o(.text);
        src/animal.o(.text);
        src/pet.o(.text);
        src/livestock.o(.text);
        src/barn_animal.o(.text);
        src/dog.o(.text);
        src/horse.o(.text);
        src/chicken.o(.text);
        src/cow.o(.text);
        src/sheep.o(.text);
        src/code_actor_0809BFE8.o(.text);
        asm/code_actor_0809BFE8.o(.text);
        src/npc.o(.text);
        src/bachelorette.o(.text);
        src/harvest_sprite.o(.text);

        asm/code_809E804.o(.text);
        src/code_080B3C0C.o(.text);
        asm/code_080B3C3C.o(.text);
        src/code_080BC8C0.o(.text);
        asm/code_080BC8F0.o(.text);
        src/code_080C0D44.o(.text);
        asm/code_080C0D74.o(.text);
        src/code_080C7ED0.o(.text);
        asm/code_080C7F00.o(.text);

        src/m4a_1.o(.text);
        src/m4a.o(.text);
        asm/code_lib_syscall.o(.text);
        asm/code_lib_sram.o(.text);
        *libgcc.a:_call_via_rX.o(.text);
        /* these need to be recompiled using -mthumb-interwork */
        /* *libc.a:memcmp.o(.text); */
        /* *libc.a:memcpy.o(.text); */
        /* *libc.a:memmove.o(.text); */
        /* *libc.a:memset.o(.text); */
        /* *libc.a:strcat.o(.text); */
        /* *libc.a:strcpy.o(.text); */
        /* *libc.a:strlen.o(.text); */
        asm/code_libc_string.o(.text);

        asm/code_linkonce.o(.text.code_080D3BC0);
        *(.gnu.linkonce.t.__as__6AnimalRC6Animal);
        asm/code_linkonce.o(.text.code_080D68C0);
        src/code_080D6D98.o(.text);
        asm/code_080D6DB8.o(.text);
        *(.gnu.linkonce.t.__as__5SheepRC5Sheep);
        *(.gnu.linkonce.t.__as__3CowRC3Cow);
        *(.gnu.linkonce.t.__as__9LivestockRC9Livestock);
        *(.gnu.linkonce.t.push_back__t8FixedVec2Z12RucksackItemUl8G12RucksackItem);
        *(.gnu.linkonce.t.push_front__t8FixedVec2Z12RucksackItemUl8G12RucksackItem);
        *(.gnu.linkonce.t.push_back__t8FixedVec2Z9ToolStackUl8G9ToolStack);
        *(.gnu.linkonce.t.push_front__t8FixedVec2Z9ToolStackUl8G9ToolStack);
        asm/code_linkonce.o(.text.code_080D7CFC);
        src/code_080E09B0.o(.text);
        asm/code_080E09BC.o(.text);
        *(.gnu.linkonce.t.__lower_bound__H4ZPC12JumpTableEntZiZ28ScriptJumpTableSearchCompareZl_X01T0RCX11X21PX31_X01);
        asm/code_linkonce.o(.text.code_080E0EF0);
        src/code_080E41B0.o(.text);
        asm/code_080E41E8.o(.text);

        *(.gnu.linkonce.d.__vt_6AScene);
        *(.gnu.linkonce.d.__vt_13AUnk_0800080C);
        . = ALIGN(4); asm/vtables.o(.rodata);
        *(.gnu.linkonce.d.__vt_7AEntity);
        . = ALIGN(4); asm/vtables.o(.rodata.080E6284);
        *(.gnu.linkonce.d.__vt_13AScriptEngine);
        . = ALIGN(4); asm/vtables.o(.rodata.080E7824);

        . = ALIGN(4); asm/data/data_080E8610.o(.rodata);
        src/shipping_bin.o(.rodata);
        src/record_player.o(.rodata);
        . = . + 0x28;
        . = ALIGN(4); src/item.o(.rodata);
        /* . = ALIGN(4); src/code_0800E2E4.o(.rodata); */
        . = ALIGN(4); asm/data/data_080F0348.o(.rodata);
        . = ALIGN(4); src/data_schedules.o(.rodata);
        . = ALIGN(4); asm/data/data_080F1A80.o(.rodata);
        . = ALIGN(4); src/script_engine.o(.rodata);
        . = . + 0x08;
        . = ALIGN(4); asm/data/data_080F9EB8.o(.rodata);
        . = ALIGN(4); src/sound_data.o(.rodata.*);
        . = ALIGN(4); asm/data/data_0813B288.o(.rodata);
    } > ROM = 0xFF

    .iwram : ALIGN(4)
    {
        asm/code_iwram.o(.iwram);
    } > IWRAM AT> ROM = 0xFF

    __iwram_vma     = ADDR(.iwram);
    __iwram_vma_end = ADDR(.iwram) + SIZEOF(.iwram);
    __iwram_lma     = LOADADDR(.iwram);

    .pad : ALIGN(4)
    {
        LONG(0);
        . = 0x08800000 - 0x0875C240;
    } > ROM = 0xFF

    .franglais_payload 0x08800000 : ALIGN(4)
    {
        src/franglais_payload.o(.franglais_payload);
    } > ROM = 0xFF

    /* DWARF 2 sections */
    .debug_aranges  0 : { *(.debug_aranges) }
    .debug_pubnames 0 : { *(.debug_pubnames) }
    .debug_info     0 : { *(.debug_info) }
    .debug_abbrev   0 : { *(.debug_abbrev) }
    .debug_line     0 : { *(.debug_line) }
    .debug_frame    0 : { *(.debug_frame) }
    .debug_str      0 : { *(.debug_str) }
    .debug_loc      0 : { *(.debug_loc) }
    .debug_macinfo  0 : { *(.debug_macinfo) }

    /* Discard everything not specifically mentioned above. */
    /DISCARD/ :
    {
        *(*);
    }
}
