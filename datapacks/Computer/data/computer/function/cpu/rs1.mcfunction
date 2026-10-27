# Input:  computer:cpu instr
# Output: computer:alu result
# protected static int rs1(int instr) { return SafeAdderInt.maskLowBits(SafeAdderInt.shrU(instr, 15), 5); }

data modify storage computer:alu a set from storage computer:cpu instr
data modify storage computer:alu shift set value 15
function computer:alu/int/shr_u
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu bits set value 5
function computer:alu/int/mask_low_bits
