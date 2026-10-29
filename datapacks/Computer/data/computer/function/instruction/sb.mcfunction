#!jvmtimer end _dispatcher
#!jvmtimer start sb
# Input:  computer:cpu _mem_addr, computer:cpu rs2_val
# Output: None
# Update: RAM at _mem_addr
# static void sb(Memory mem, int addr, int val) { mem.writeByte(addr, val); }

function computer:debug/print_log {"message": {"text": "Running sb", "color":"gold"}}

data modify storage computer:alu a set from storage computer:cpu rs2_val
function computer:memory/write_byte

#!jvmtimer end sb
