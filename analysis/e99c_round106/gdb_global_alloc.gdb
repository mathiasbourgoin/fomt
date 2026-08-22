set pagination off
set logging file /tmp/e99c-global-alloc.log
set logging overwrite on
set logging enabled on

break global.c:1602
commands
  silent
  printf "GLOBAL allocno=%d regno=%d hard=%d refs=%d live=%d\n", allocno, allocno_reg[allocno], best_reg, allocno_n_refs[allocno], allocno_live_length[allocno]
  continue
end

run -quiet -fno-exceptions -fno-rtti -fvtable-thunks -g -mthumb-interwork -Wimplicit -Wparentheses -Werror -O2 -fhex-asm -o /tmp/e99c-global-alloc.s /tmp/w90s10/candidate_force_flags.i
