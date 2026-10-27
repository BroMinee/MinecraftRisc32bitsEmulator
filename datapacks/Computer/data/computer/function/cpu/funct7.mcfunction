# Input:  computer:cpu instr
# Output: computer:alu result
# protected static int funct7(int instr) { return SafeAdderInt.maskLowBits(SafeAdderInt.shrU(instr, 25), 7); }

data modify storage computer:alu a set from storage computer:cpu instr
data modify storage computer:alu shift set value 25
function computer:alu/int/shr_u
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu bits set value 7
function computer:alu/int/mask_low_bits
