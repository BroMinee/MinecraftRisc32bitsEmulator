#!jvmtimer end _dispatcher
#!jvmtimer start fcvt.s.w
# Input:  computer:cpu rs1_val (signed int)
# Output: computer:alu result (float)
# static float fcvt_s_w(int rs1) { return intToFloat(rs1); }

function computer:debug/print_log {"message": {"text": "Running fcvt.s.w", "color":"gold"}}

data modify storage computer:alu a set from storage computer:cpu rs1_val
function computer:alu/float/int_to_float

#!jvmtimer end fcvt.s.w
