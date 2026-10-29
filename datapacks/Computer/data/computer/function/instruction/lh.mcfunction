#!jvmtimer end _dispatcher
#!jvmtimer start lh
# Input:  computer:cpu _mem_addr
# Output: computer:alu result
# static int lh(Memory mem, int addr) { return SafeAdderInt.signExtend16(mem.readHalf(addr)); }

function computer:debug/print_log {"message": {"text": "Running lh", "color":"gold"}}

function computer:memory/read_half
data modify storage computer:alu a set from storage computer:alu result
function computer:alu/int/sign_extend_16

#!jvmtimer end lh
