#!jvmtimer end _dispatcher
#!jvmtimer start fsub.s
# Input:  computer:cpu rs1_val, computer:cpu rs2_val (float)
# Output: computer:alu result (float)
# static float fsub_s(float a, float b) { return floatSub(a, b); }

function computer:debug/print_log {"message": {"text": "Running fsub.s", "color":"gold"}}

data modify storage computer:alu a set from storage computer:cpu rs1_val
data modify storage computer:alu b set from storage computer:cpu rs2_val
function computer:alu/float/float_sub

#!jvmtimer end fsub.s
