#!jvmtimer end _dispatcher
#!jvmtimer start fsgnjx.s
# Input:  computer:cpu rs1_val, computer:cpu rs2_val (float)
# Output: computer:alu result (float)
# f[rd] = intBitsToFloat(xorSignBit(floatToRawIntBits(f[r1]), floatToRawIntBits(f[r2])))

function computer:debug/print_log {"message": {"text": "Running fsgnjx.s", "color":"gold"}}

# convert floats to int bits
data modify storage computer:alu a set from storage computer:cpu rs1_val
function computer:alu/float/float_to_raw_int_bits
data modify storage computer:cpu _bits1 set from storage computer:alu result

data modify storage computer:alu a set from storage computer:cpu rs2_val
function computer:alu/float/float_to_raw_int_bits

# xorSignBit(bits1, bits2)
data modify storage computer:alu b set from storage computer:alu result
data modify storage computer:alu a set from storage computer:cpu _bits1
function computer:alu/int/xor_sign_bit

# convert result int bits back to float
data modify storage computer:alu a set from storage computer:alu result
function computer:alu/float/int_bits_to_float

#!jvmtimer end fsgnjx.s
