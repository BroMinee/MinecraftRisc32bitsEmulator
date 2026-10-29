#!jvmtimer end _dispatcher
#!jvmtimer start fmv.w.x
# Input:  computer:cpu rs1_val (int bits)
# Output: computer:alu result (float)
# f[rd] = Float.intBitsToFloat(x[rs1])

function computer:debug/print_log {"message": {"text": "Running fmv.w.x", "color":"gold"}}

# convert int bits -> float
data modify storage computer:alu a set from storage computer:cpu rs1_val
function computer:alu/float/int_bits_to_float

#!jvmtimer end fmv.w.x
