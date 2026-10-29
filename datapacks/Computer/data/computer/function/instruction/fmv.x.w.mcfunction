#!jvmtimer end _dispatcher
#!jvmtimer start fmv.x.w
# Input:  computer:cpu rs1_val
# Output: computer:alu result
# static int fmv_x_w(int frs1) { return frs1; }

function computer:debug/print_log {"message": {"text": "Running fmv.x.w", "color":"gold"}}

# identity function
data modify storage computer:alu result set from storage computer:cpu rs1_val

#!jvmtimer end fmv.x.w
