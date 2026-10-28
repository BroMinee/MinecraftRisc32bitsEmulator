# Input:  computer:cpu rs1_val (IEEE 754 int bits)
# Output: computer:alu result (unsigned int as signed)
# static int fcvt_wu_s(int frs1) { return floatToUnsignedInt(intBitsToFloat(frs1)); }

function computer:debug/print_log {"message": {"text": "Running fcvt.wu.s", "color":"gold"}}

# float f = intBitsToFloat(frs1)
data modify storage computer:alu a set from storage computer:cpu rs1_val
function computer:alu/float/int_bits_to_float

# return floatToUnsignedInt(f)
data modify storage computer:alu a set from storage computer:alu result
function computer:alu/float/float_to_unsigned_int
