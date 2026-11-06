#!jvmtimer end _dispatcher
#!jvmtimer profile file
# Input:  computer:cpu rs1_val, computer:cpu rs2_val (float)
# Output: computer:alu result (float)
# static float fmul_s(float a, float b) { return floatMul(a, b); }

function computer:debug/print_log {"message": {"text": "Running fmul.s", "color":"gold"}}

data modify storage computer:alu a set from storage computer:cpu rs1_val
data modify storage computer:alu b set from storage computer:cpu rs2_val
function computer:alu/float/float_mul

