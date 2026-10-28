# Input:  computer:cpu _mem_addr
# Output: computer:alu result
# static int lbu(Memory mem, int addr) { return SafeAdderInt.maskLowBits(mem.readByte(addr), 8); }

function computer:debug/print_log {"message": {"text": "Running lbu", "color":"gold"}}

# readByte already returns maskLowBits(word, 8), so result is already correct
function computer:memory/read_byte
