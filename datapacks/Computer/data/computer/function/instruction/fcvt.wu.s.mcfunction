#!jvmtimer end _dispatcher
#!jvmtimer start fcvt.wu.s
# Input:  computer:cpu rs1_val (float)
# Output: computer:alu result (unsigned int as signed)
# static int fcvt_wu_s(float a) { return floatToUnsignedInt(a); }

function computer:debug/print_log {"message": {"text": "Running fcvt.wu.s", "color":"gold"}}

data modify storage computer:alu a set from storage computer:cpu rs1_val
function computer:alu/float/float_to_unsigned_int

#!jvmtimer end fcvt.wu.s
