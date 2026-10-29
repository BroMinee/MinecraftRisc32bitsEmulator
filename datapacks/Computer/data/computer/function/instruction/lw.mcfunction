#!jvmtimer end _dispatcher
#!jvmtimer start lw
# Input:  computer:cpu _mem_addr
# Output: computer:alu result
# static int lw(Memory mem, int addr) { return mem.readWord(addr); }

function computer:debug/print_log {"message": {"text": "Running lw", "color":"gold"}}

function computer:memory/read_word

#!jvmtimer end lw
