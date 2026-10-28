# Input:  computer:cpu pc, computer:alu result (immU)
# Output: computer:alu result
# static int auipc(int pc, int imm) { return SafeAdderInt.add(pc, imm); }

function computer:debug/print_log {"message": {"text": "Running auipc", "color":"gold"}}

data modify storage computer:alu a set from storage computer:cpu pc
data modify storage computer:alu b set from storage computer:alu result
function computer:alu/int/add
