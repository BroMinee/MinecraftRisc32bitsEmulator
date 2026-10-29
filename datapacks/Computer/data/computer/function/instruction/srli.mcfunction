#!jvmtimer end _dispatcher
#!jvmtimer start srli
# Input:  computer:cpu rs1_val, computer:cpu shamt
# Output: computer:alu result
# static int srli(int rs1, int shamt) { return SafeAdderInt.shrU(rs1, shamt); }

function computer:debug/print_log {"message": {"text": "Running srli", "color":"gold"}}

data modify storage computer:alu a set from storage computer:cpu rs1_val
data modify storage computer:alu shift set from storage computer:cpu shamt
function computer:alu/int/shr_u

#!jvmtimer end srli
