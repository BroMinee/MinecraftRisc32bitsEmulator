#!jvmtimer end _dispatcher
#!jvmtimer start slt
# Input:  computer:cpu rs1_val, computer:cpu rs2_val
# Output: computer:alu result
# static int slt(int rs1, int rs2) { return (rs1 < rs2) ? 1 : 0; }

function computer:debug/print_log {"message": {"text": "Running slt", "color":"gold"}}

execute store result score _rs1 alu run data get storage computer:cpu rs1_val
execute store result score _rs2 alu run data get storage computer:cpu rs2_val
data modify storage computer:alu result set value 0
execute if score _rs1 alu < _rs2 alu run data modify storage computer:alu result set value 1

#!jvmtimer end slt
