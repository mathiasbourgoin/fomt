    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    .SECTION .franglais_payload, "a"
    .ALIGN 2, 0xFF
    .GLOBAL franglais_payload_start
franglais_payload_start:
    .INCBIN "build/franglais_stub.bin"
    .ALIGN 2, 0xFF
    .GLOBAL franglais_payload_end
franglais_payload_end:

    @ Generated from the matching stub.sym by fomt_patch_pipeline.py.
    @ Hook trampolines reference these linker symbols instead of freezing
    @ absolute addresses that become stale whenever the payload layout moves.
    .INCLUDE "build/franglais_stub_symbols.inc"
