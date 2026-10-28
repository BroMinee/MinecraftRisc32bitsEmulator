# Input:  computer:cpu rs1_val, computer:cpu rs2_val (IEEE 754 int bits)
# Output: computer:alu result
# static int fsgnjn_s(int frs1, int frs2) { return copyNegatedSignBit(frs1, frs2); }

function computer:debug/print_log {"message": {"text": "Running fsgnjn.s", "color":"gold"}}

data modify storage computer:alu a set from storage computer:cpu rs1_val
data modify storage computer:alu b set from storage computer:cpu rs2_val
function computer:alu/int/copy_negated_sign_bit
