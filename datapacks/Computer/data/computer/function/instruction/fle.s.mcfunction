#!jvmtimer end _dispatcher
#!jvmtimer start fle.s
# Input:  computer:cpu rs1_val, computer:cpu rs2_val (float)
# Output: computer:alu result (int: 1 if less or equal, 0 if not)
# static int fle_s(float a, float b) { return (a <= b) ? 1 : 0; }

function computer:debug/print_log {"message": {"text": "Running fle.s", "color":"gold"}}

data modify storage computer:alu a set from storage computer:cpu rs1_val
data modify storage computer:alu b set from storage computer:cpu rs2_val

# (a <= b) ? 1 : 0
execute if predicate computer:alu/float_le run return run data modify storage computer:alu result set value 1
data modify storage computer:alu result set value 0

#!jvmtimer end fle.s
