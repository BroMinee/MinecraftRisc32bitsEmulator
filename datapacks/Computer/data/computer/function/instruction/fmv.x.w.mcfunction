#!jvmtimer end _dispatcher
#!jvmtimer start fmv.x.w
# Input:  computer:cpu rs1_val (float)
# Output: computer:alu result (int bits)
# x[rd] = Float.floatToRawIntBits(f[rs1])

function computer:debug/print_log {"message": {"text": "Running fmv.x.w", "color":"gold"}}

# convert float -> int bits
data modify storage computer:alu a set from storage computer:cpu rs1_val
function computer:alu/float/float_to_raw_int_bits

#!jvmtimer end fmv.x.w
