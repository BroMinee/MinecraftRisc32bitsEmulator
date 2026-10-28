# Input:  computer:cpu rs1_val, computer:cpu rs2_val (IEEE 754 int bits)
# Output: computer:alu result
# static int fsgnjx_s(int frs1, int frs2) { return xorSignBit(frs1, frs2); }

function computer:debug/print_log {"message": {"text": "Running fsgnjx.s", "color":"gold"}}

data modify storage computer:alu a set from storage computer:cpu rs1_val
data modify storage computer:alu b set from storage computer:cpu rs2_val
function computer:alu/int/xor_sign_bit
