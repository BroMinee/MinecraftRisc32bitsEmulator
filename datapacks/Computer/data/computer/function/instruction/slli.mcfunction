# Input:  computer:cpu rs1_val, computer:cpu shamt
# Output: computer:alu result
# static int slli(int rs1, int shamt) { return SafeAdderInt.shl(rs1, shamt); }

function computer:debug/print_log {"message": {"text": "Running slli", "color":"gold"}}

data modify storage computer:alu a set from storage computer:cpu rs1_val
data modify storage computer:alu shift set from storage computer:cpu shamt
function computer:alu/int/shl
