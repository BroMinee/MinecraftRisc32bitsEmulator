#!jvmtimer end _dispatcher
#!jvmtimer start fmin.s
# Input:  computer:cpu rs1_val, computer:cpu rs2_val (IEEE 754 int bits)
# Output: computer:alu result (IEEE 754 int bits)
# static int fmin_s(int frs1, int frs2) { ... return floatToRawIntBits(a < b ? a : b); }

function computer:debug/print_log {"message": {"text": "Running fmin.s", "color":"gold"}}

# float a = intBitsToFloat(frs1)
data modify storage computer:alu a set from storage computer:cpu rs1_val
function computer:alu/float/int_bits_to_float
data modify storage computer:cpu _fa set from storage computer:alu result

# float b = intBitsToFloat(frs2)
data modify storage computer:alu a set from storage computer:cpu rs2_val
function computer:alu/float/int_bits_to_float
data modify storage computer:cpu _fb set from storage computer:alu result

# if (a < b) return floatToRawIntBits(a) else return floatToRawIntBits(b)
# a < b  <==>  (a <= b) AND NOT (a == b)
data modify storage computer:alu a set from storage computer:cpu _fa
data modify storage computer:alu b set from storage computer:cpu _fb
execute if predicate computer:alu/float_le unless predicate computer:alu/float_eq run return run function computer:instruction/fmin.s_return_a

# a >= b, return b
data modify storage computer:alu a set from storage computer:cpu _fb
function computer:alu/float/float_to_raw_int_bits

#!jvmtimer end fmin.s
