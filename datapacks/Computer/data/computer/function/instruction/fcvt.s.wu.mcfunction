#!jvmtimer end _dispatcher
#!jvmtimer start fcvt.s.wu
# Input:  computer:cpu rs1_val (unsigned int as signed)
# Output: computer:alu result (float)
# static float fcvt_s_wu(int rs1) { return unsignedIntToFloat(rs1); }

function computer:debug/print_log {"message": {"text": "Running fcvt.s.wu", "color":"gold"}}

data modify storage computer:alu a set from storage computer:cpu rs1_val
function computer:alu/float/unsigned_int_to_float

#!jvmtimer end fcvt.s.wu
