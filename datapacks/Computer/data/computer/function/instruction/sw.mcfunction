# Input:  computer:cpu _mem_addr, computer:cpu rs2_val
# Output: None
# Update: RAM at _mem_addr
# static void sw(Memory mem, int addr, int val) { mem.writeWord(addr, val); }

function computer:debug/print_log {"message": {"text": "Running sw", "color":"gold"}}

data modify storage computer:alu a set from storage computer:cpu rs2_val
function computer:memory/write_word
