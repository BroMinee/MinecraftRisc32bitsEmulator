#!jvmtimer end _dispatcher
#!jvmtimer start addi
# Input:  computer:cpu rs1_val, computer:cpu imm
# Output: computer:alu result
# static int addi(int rs1v, int imm) { return SafeAdderInt.add(rs1v, imm); }

function computer:debug/print_log {"message": {"text": "Running addi", "color":"gold"}}

data modify storage computer:alu a set from storage computer:cpu rs1_val
data modify storage computer:alu b set from storage computer:cpu imm
function computer:alu/int/add

#!jvmtimer end addi
