# Input:  computer:cpu rs1_val, computer:cpu rs2_val (IEEE 754 int bits)
# Output: computer:alu result (1 if less than, 0 if not)
# static int flt_s(int frs1, int frs2) { return (intBitsToFloat(frs1) < intBitsToFloat(frs2)) ? 1 : 0; }

function computer:debug/print_log {"message": {"text": "Running flt.s", "color":"gold"}}

# float a = intBitsToFloat(rs1_val)
data modify storage computer:alu a set from storage computer:cpu rs1_val
function computer:alu/float/int_bits_to_float
data modify storage computer:cpu _fa set from storage computer:alu result

# float b = intBitsToFloat(rs2_val)
data modify storage computer:alu a set from storage computer:cpu rs2_val
function computer:alu/float/int_bits_to_float
data modify storage computer:alu b set from storage computer:alu result

# a = first float, b = second float
data modify storage computer:alu a set from storage computer:cpu _fa

# (a < b) ? 1 : 0   =>   (a <= b) AND NOT (a == b)
execute if predicate computer:alu/float_le unless predicate computer:alu/float_eq run return run data modify storage computer:alu result set value 1
data modify storage computer:alu result set value 0
