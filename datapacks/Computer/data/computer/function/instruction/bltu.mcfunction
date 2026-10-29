#!jvmtimer end _dispatcher
#!jvmtimer start bltu
# Input:  computer:cpu rs1_val, computer:cpu rs2_val
# Output: computer:alu result (1 if taken, 0 if not)
# static boolean bltu(int rs1, int rs2) { return SafeAdderInt.compareUnsigned(rs1, rs2) < 0; }

function computer:debug/print_log {"message": {"text": "Running bltu", "color":"gold"}}

data modify storage computer:alu a set from storage computer:cpu rs1_val
data modify storage computer:alu b set from storage computer:cpu rs2_val
function computer:alu/int/compare_unsigned
execute store result score _cmp alu run data get storage computer:alu result
data modify storage computer:alu result set value 0
execute if score _cmp alu matches ..-1 run data modify storage computer:alu result set value 1

#!jvmtimer end bltu
