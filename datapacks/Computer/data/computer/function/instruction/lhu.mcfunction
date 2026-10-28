# Input:  computer:cpu _mem_addr
# Output: computer:alu result
# static int lhu(Memory mem, int addr) { return SafeAdderInt.maskLowBits(mem.readHalf(addr), 16); }

function computer:debug/print_log {"message": {"text": "Running lhu", "color":"gold"}}

# readHalf already returns maskLowBits(word, 16), so result is already correct
function computer:memory/read_half
