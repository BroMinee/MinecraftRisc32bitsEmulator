# Input:  computer:cpu rs1_val, computer:cpu rs2_val (IEEE 754 int bits)
# Output: computer:alu result (IEEE 754 int bits)
# static int fadd_s(int frs1, int frs2) { return floatToRawIntBits(floatAdd(intBitsToFloat(frs1), intBitsToFloat(frs2))); }

function computer:debug/print_log {"message": {"text": "Running fadd.s", "color":"gold"}}

# float a = intBitsToFloat(frs1)
data modify storage computer:alu a set from storage computer:cpu rs1_val
function computer:alu/float/int_bits_to_float
data modify storage computer:cpu _fa set from storage computer:alu result

# float b = intBitsToFloat(frs2)
data modify storage computer:alu a set from storage computer:cpu rs2_val
function computer:alu/float/int_bits_to_float
data modify storage computer:alu b set from storage computer:alu result

# float res = floatAdd(a, b)
data modify storage computer:alu a set from storage computer:cpu _fa
function computer:alu/float/float_add

# return floatToRawIntBits(res)
data modify storage computer:alu a set from storage computer:alu result
function computer:alu/float/float_to_raw_int_bits
