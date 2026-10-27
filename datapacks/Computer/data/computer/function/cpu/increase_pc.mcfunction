# pc = SafeAdderInt.add(pc, 4)
# Input:  computer:cpu pc
# Update: computer:cpu pc

data modify storage computer:alu a set from storage computer:cpu pc
data modify storage computer:alu b set value 4
function computer:alu/int/add
data modify storage computer:cpu pc set from storage computer:alu result
