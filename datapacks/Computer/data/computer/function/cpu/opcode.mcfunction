# int opcode = SafeAdderInt.maskLowBits(instr, 7);
# Input:  computer:cpu instr
# Output: computer:alu result

data modify storage computer:alu a set from storage computer:cpu instr
data modify storage computer:alu bits set value 7
function computer:alu/int/mask_low_bits