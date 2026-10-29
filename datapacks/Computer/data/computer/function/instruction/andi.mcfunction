#!jvmtimer end _dispatcher
#!jvmtimer start andi
# Input:  computer:cpu rs1_val, computer:cpu imm
# Output: computer:alu result
# static int andi(int rs1, int imm) { return SafeAdderInt.and(rs1, imm); }

function computer:debug/print_log {"message": {"text": "Running andi", "color":"gold"}}

data modify storage computer:alu a set from storage computer:cpu rs1_val
data modify storage computer:alu b set from storage computer:cpu imm
function computer:alu/int/and

#!jvmtimer end andi
