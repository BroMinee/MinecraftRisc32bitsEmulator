# Input:  computer:cpu rs1_val (signed int)
# Output: computer:alu result (IEEE 754 int bits)
# static int fcvt_s_w(int rs1) { return floatToRawIntBits(intToFloat(rs1)); }

function computer:debug/print_log {"message": {"text": "Running fcvt.s.w", "color":"gold"}}

# float f = intToFloat(rs1)
data modify storage computer:alu a set from storage computer:cpu rs1_val
function computer:alu/float/int_to_float

# return floatToRawIntBits(f)
data modify storage computer:alu a set from storage computer:alu result
function computer:alu/float/float_to_raw_int_bits
