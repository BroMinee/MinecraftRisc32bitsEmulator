#!jvmtimer end _dispatcher
#!jvmtimer start fmax.s
# Input:  computer:cpu rs1_val, computer:cpu rs2_val (float)
# Output: computer:alu result (float)
# static float fmax_s(float a, float b) { ... return a > b ? a : b; }

function computer:debug/print_log {"message": {"text": "Running fmax.s", "color":"gold"}}

data modify storage computer:alu a set from storage computer:cpu rs1_val
data modify storage computer:alu b set from storage computer:cpu rs2_val

# if (a > b) return a else return b
# a > b  <==>  NOT (a <= b)
execute unless predicate computer:alu/float_le run return run data modify storage computer:alu result set from storage computer:cpu rs1_val

# a <= b, return b
data modify storage computer:alu result set from storage computer:cpu rs2_val

#!jvmtimer end fmax.s
