set pagination off

break reload
commands
  silent
  printf "RELOAD global=%d caller_save_needed=%d\n", global, caller_save_needed
  continue
end

break save_call_clobbered_regs
commands
  silent
  printf "CALLER_SAVE_HIT caller_save_needed=%d\n", caller_save_needed
  continue
end

break retry_global_alloc
commands
  silent
  printf "RETRY_GLOBAL_ALLOC regno=%d\n", regno
  continue
end

run -quiet -fno-exceptions -fno-rtti -fvtable-thunks -g -mthumb-interwork -Wimplicit -Wparentheses -Werror -O2 -fhex-asm -o /tmp/e99c-gdb-reload2.s /tmp/w90s10/t58.i
