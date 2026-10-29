#!jvmtimer end _dispatcher
#!jvmtimer start fcvt.w.s
# Input:  computer:cpu rs1_val (float)
# Output: computer:alu result (signed int)
# static int fcvt_w_s(float a) {
#   if (Float.isNaN(a)) return MAX_INT;
#   if (a >= intToFloat(MAX_INT)) return MAX_INT;
#   if (a <= intToFloat(MIN_INT)) return MIN_INT;
#   return floatRoundToInt(a);
# }

function computer:debug/print_log {"message": {"text": "Running fcvt.w.s", "color":"gold"}}

# if (isNaN(a)) return MAX_INT  — NaN != NaN
data modify storage computer:alu a set from storage computer:cpu rs1_val
data modify storage computer:alu b set from storage computer:cpu rs1_val
execute unless predicate computer:alu/float_eq run return run data modify storage computer:alu result set value 2147483647

# if (a >= intToFloat(MAX_INT)) return MAX_INT
# intToFloat(2147483647) — compute it
data modify storage computer:alu a set value 2147483647
function computer:alu/float/int_to_float
data modify storage computer:cpu _fmax set from storage computer:alu result
# a >= fmax  =>  fmax <= a  =>  swap and use float_le
data modify storage computer:alu a set from storage computer:cpu _fmax
data modify storage computer:alu b set from storage computer:cpu rs1_val
execute if predicate computer:alu/float_le run return run data modify storage computer:alu result set value 2147483647

# if (a <= intToFloat(MIN_INT)) return MIN_INT
data modify storage computer:alu a set value -2147483648
function computer:alu/float/int_to_float
data modify storage computer:cpu _fmin set from storage computer:alu result
# a <= fmin
data modify storage computer:alu a set from storage computer:cpu rs1_val
data modify storage computer:alu b set from storage computer:cpu _fmin
execute if predicate computer:alu/float_le run return run data modify storage computer:alu result set value -2147483648

# return floatRoundToInt(a)
data modify storage computer:alu a set from storage computer:cpu rs1_val
function computer:alu/float/float_round_to_int

#!jvmtimer end fcvt.w.s
