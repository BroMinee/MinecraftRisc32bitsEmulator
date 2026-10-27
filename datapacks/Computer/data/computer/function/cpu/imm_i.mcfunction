# Input:  computer:cpu instr
# Output: computer:alu result
# private static int immI(int instr) { return SafeAdderInt.shrS(instr, 20); }

data modify storage computer:alu a set from storage computer:cpu instr
data modify storage computer:alu shift set value 20
function computer:alu/int/shr_s
