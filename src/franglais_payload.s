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
