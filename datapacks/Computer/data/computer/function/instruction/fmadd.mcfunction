#!jvmtimer end _dispatcher
#!jvmtimer start fmadd
# Input:  computer:cpu rs1_val, computer:cpu rs2_val, computer:cpu rs3_val (IEEE 754 int bits)
# Output: computer:alu result (IEEE 754 int bits)
# static int fmadd_s(int frs1, int frs2, int frs3) { return floatToRawIntBits(floatAdd(floatMul(intBitsToFloat(frs1), intBitsToFloat(frs2)), intBitsToFloat(frs3))); }

function computer:debug/print_log {"message": {"text": "Running fmadd.s", "color":"gold"}}

# float a = intBitsToFloat(frs1)
data modify storage computer:alu a set from storage computer:cpu rs1_val
function computer:alu/float/int_bits_to_float
data modify storage computer:cpu _fa set from storage computer:alu result

# float b = intBitsToFloat(frs2)
data modify storage computer:alu a set from storage computer:cpu rs2_val
function computer:alu/float/int_bits_to_float
data modify storage computer:cpu _fb set from storage computer:alu result

# float c = intBitsToFloat(frs3)
data modify storage computer:alu a set from storage computer:cpu rs3_val
function computer:alu/float/int_bits_to_float
data modify storage computer:cpu _fc set from storage computer:alu result

# float mul = floatMul(a, b)
data modify storage computer:alu a set from storage computer:cpu _fa
data modify storage computer:alu b set from storage computer:cpu _fb
function computer:alu/float/float_mul

# float res = floatAdd(mul, c)
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu b set from storage computer:cpu _fc
function computer:alu/float/float_add

# return floatToRawIntBits(res)
data modify storage computer:alu a set from storage computer:alu result
function computer:alu/float/float_to_raw_int_bits

#!jvmtimer end fmadd
