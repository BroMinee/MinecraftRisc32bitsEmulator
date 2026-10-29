#!jvmtimer end _dispatcher
#!jvmtimer start fadd.s
# Input:  computer:cpu rs1_val, computer:cpu rs2_val (float)
# Output: computer:alu result (float)
# static float fadd_s(float a, float b) { return floatAdd(a, b); }

function computer:debug/print_log {"message": {"text": "Running fadd.s", "color":"gold"}}

data modify storage computer:alu a set from storage computer:cpu rs1_val
data modify storage computer:alu b set from storage computer:cpu rs2_val
function computer:alu/float/float_add

#!jvmtimer end fadd.s
