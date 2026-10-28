# Input:  computer:cpu rs1_val, computer:cpu rs2_val
# Output: computer:alu result (1 if taken, 0 if not)
# static boolean beq(int rs1, int rs2) { return rs1 == rs2; }

function computer:debug/print_log {"message": {"text": "Running beq", "color":"gold"}}

execute store result score _rs1 alu run data get storage computer:cpu rs1_val
execute store result score _rs2 alu run data get storage computer:cpu rs2_val
data modify storage computer:alu result set value 0
execute if score _rs1 alu = _rs2 alu run data modify storage computer:alu result set value 1
