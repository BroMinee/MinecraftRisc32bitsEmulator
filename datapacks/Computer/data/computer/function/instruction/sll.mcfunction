# Input:  computer:cpu rs1_val, computer:cpu rs2_val
# Output: computer:alu result
# static int sll(int rs1, int rs2) { return SafeAdderInt.shl(rs1, SafeAdderInt.maskLowBits(rs2, 5)); }

function computer:debug/print_log {"message": {"text": "Running sll", "color":"gold"}}

data modify storage computer:alu a set from storage computer:cpu rs2_val
data modify storage computer:alu bits set value 5
function computer:alu/int/mask_low_bits

data modify storage computer:alu shift set from storage computer:alu result
data modify storage computer:alu a set from storage computer:cpu rs1_val
function computer:alu/int/shl
