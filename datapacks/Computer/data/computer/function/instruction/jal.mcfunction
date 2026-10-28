# Input:  computer:cpu pc
# Output: computer:alu result (pc + 4, the return address)
# static int jal(int pc) { return SafeAdderInt.add(pc, 4); }

function computer:debug/print_log {"message": {"text": "Running jal", "color":"gold"}}

data modify storage computer:alu a set from storage computer:cpu pc
data modify storage computer:alu b set value 4
function computer:alu/int/add
