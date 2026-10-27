# Input:  computer:cpu instr
# Output: computer:alu result
# private static int immU(int instr) {
#     return SafeAdderInt.sub(instr, SafeAdderInt.maskLowBits(instr, 12));
# }

# maskLowBits(instr, 12)
data modify storage computer:alu a set from storage computer:cpu instr
data modify storage computer:alu bits set value 12
function computer:alu/int/mask_low_bits

# sub(instr, result)
data modify storage computer:alu a set from storage computer:cpu instr
data modify storage computer:alu b set from storage computer:alu result
function computer:alu/int/sub
