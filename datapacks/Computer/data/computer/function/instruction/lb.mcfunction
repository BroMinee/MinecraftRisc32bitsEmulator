# Input:  computer:cpu _mem_addr
# Output: computer:alu result
# static int lb(Memory mem, int addr) { return SafeAdderInt.signExtend8(mem.readByte(addr)); }

function computer:debug/print_log {"message": {"text": "Running lb", "color":"gold"}}

function computer:memory/read_byte
data modify storage computer:alu a set from storage computer:alu result
function computer:alu/int/sign_extend_8
