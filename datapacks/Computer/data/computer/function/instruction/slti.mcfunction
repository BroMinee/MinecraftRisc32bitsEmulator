# Input:  computer:cpu rs1_val, computer:cpu imm
# Output: computer:alu result
# static int slti(int rs1, int imm) { return (rs1 < imm) ? 1 : 0; }

function computer:debug/print_log {"message": {"text": "Running slti", "color":"gold"}}

execute store result score _rs1 alu run data get storage computer:cpu rs1_val
execute store result score _imm alu run data get storage computer:cpu imm
data modify storage computer:alu result set value 0
execute if score _rs1 alu < _imm alu run data modify storage computer:alu result set value 1
