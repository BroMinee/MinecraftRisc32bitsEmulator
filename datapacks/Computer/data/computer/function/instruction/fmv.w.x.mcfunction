#!jvmtimer end _dispatcher
#!jvmtimer start fmv.w.x
# Input:  computer:cpu rs1_val
# Output: computer:alu result
# static int fmv_w_x(int rs1) { return rs1; }

function computer:debug/print_log {"message": {"text": "Running fmv.w.x", "color":"gold"}}

# identity function
data modify storage computer:alu result set from storage computer:cpu rs1_val

#!jvmtimer end fmv.w.x
