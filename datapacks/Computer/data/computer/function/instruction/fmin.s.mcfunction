#!jvmtimer end _dispatcher
#!jvmtimer start fmin.s
# Input:  computer:cpu rs1_val, computer:cpu rs2_val (float)
# Output: computer:alu result (float)
# static float fmin_s(float a, float b) { ... return a < b ? a : b; }

function computer:debug/print_log {"message": {"text": "Running fmin.s", "color":"gold"}}

data modify storage computer:alu a set from storage computer:cpu rs1_val
data modify storage computer:alu b set from storage computer:cpu rs2_val

# if (a < b) return a else return b
# a < b  <==>  (a <= b) AND NOT (a == b)
execute if predicate computer:alu/float_le unless predicate computer:alu/float_eq run return run data modify storage computer:alu result set from storage computer:cpu rs1_val

# a >= b, return b
data modify storage computer:alu result set from storage computer:cpu rs2_val

#!jvmtimer end fmin.s
