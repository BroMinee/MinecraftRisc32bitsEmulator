#!jvmtimer end _dispatcher
#!jvmtimer start jalr
# Input:  computer:cpu rs1_val, computer:cpu imm
# Output: computer:alu result (target address)
# static int jalr(int rs1, int imm) { return SafeAdderInt.clearBit0(SafeAdderInt.add(rs1, imm)); }

function computer:debug/print_log {"message": {"text": "Running jalr", "color":"gold"}}

data modify storage computer:alu a set from storage computer:cpu rs1_val
data modify storage computer:alu b set from storage computer:cpu imm
function computer:alu/int/add
data modify storage computer:alu a set from storage computer:alu result
function computer:alu/int/clear_bit0

#!jvmtimer end jalr
