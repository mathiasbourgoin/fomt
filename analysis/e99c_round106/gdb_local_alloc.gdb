set pagination off
set logging file /tmp/e99c-local-alloc.log
set logging overwrite on
set logging enabled on

break local-alloc.c:1465
commands
  silent
  printf "ALLOC block=%d qty=%d first=%d phys=%d birth=%d death=%d refs=%d mode=%d\n", b, q, qty_first_reg[q], qty_phys_reg[q], qty_birth[q], qty_death[q], qty_n_refs[q], qty_mode[q]
  continue
end

run -quiet -fno-exceptions -fno-rtti -fvtable-thunks -g -mthumb-interwork -Wimplicit -Wparentheses -Werror -O2 -fhex-asm -o /tmp/e99c-local-alloc.s /tmp/w90s10/candidate_force_flags.i
