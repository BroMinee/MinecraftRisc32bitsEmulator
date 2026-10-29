#!jvmtimer end _dispatcher
#!jvmtimer start ori
# Input:  computer:cpu rs1_val, computer:cpu imm
# Output: computer:alu result
# static int ori(int rs1, int imm) { return SafeAdderInt.or(rs1, imm); }

function computer:debug/print_log {"message": {"text": "Running ori", "color":"gold"}}

data modify storage computer:alu a set from storage computer:cpu rs1_val
data modify storage computer:alu b set from storage computer:cpu imm
function computer:alu/int/or

#!jvmtimer end ori
