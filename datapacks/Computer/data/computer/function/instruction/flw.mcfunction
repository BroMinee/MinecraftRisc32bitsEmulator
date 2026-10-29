#!jvmtimer end _dispatcher
#!jvmtimer start flw
# Input:  computer:cpu _mem_addr
# Output: computer:alu result
# static int flw(Memory mem, int addr) { return mem.readWord(addr); }

function computer:debug/print_log {"message": {"text": "Running flw", "color":"gold"}}

function computer:memory/read_word

#!jvmtimer end flw
