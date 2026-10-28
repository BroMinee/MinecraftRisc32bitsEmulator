# pc = SafeAdderInt.add(pc, immB(instr));
# Input:  computer:cpu instr, pc
# Output: None
# Update: computer:cpu pc

function computer:cpu/imm_b
data modify storage computer:alu a set from storage computer:cpu pc
data modify storage computer:alu b set from storage computer:alu result
function computer:alu/int/add
data modify storage computer:cpu pc set from storage computer:alu result
