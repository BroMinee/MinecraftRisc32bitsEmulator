#!jvmtimer start alu_float_float_to_unsigned_int
# Inputs: computer:alu a (float)
# Outputs: computer:alu result (int, unsigned)
# public static int floatToUnsignedInt(float a) {

# push new frame context
function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a

# if (a >= 4294967296.0f) return -1;   (0xFFFFFFFF)
# We test: floatSub(a, 4294967296.0f) >= 0
data modify storage computer:alu a set from storage computer:alu stack[-1].a
data modify storage computer:alu b set value 4294967296.0f
function computer:alu/float/float_sub
data modify storage computer:alu a set from storage computer:alu result
function computer:alu/float/float_to_int_trunc
execute store result score _cmp alu run data get storage computer:alu result
execute if score _cmp alu matches 0.. run data modify storage computer:alu result set value -1
execute if score _cmp alu matches 0.. run return run function computer:alu/stack/pop

# if (a <= -0.5f || a < 0.0f) return 0;
# Test a < 0 via conversion to int (negative floats truncate to negative or 0)
data modify storage computer:alu a set from storage computer:alu stack[-1].a
function computer:alu/float/float_to_int_trunc
execute store result score _ai alu run data get storage computer:alu result
# Also check if a is exactly -0.5f or smaller negative
data modify storage computer:alu _temp set from storage computer:alu stack[-1].a
data modify storage computer:alu stack[-1]._neg set value 0
execute if score _ai alu matches ..-1 run data modify storage computer:alu stack[-1]._neg set value 1
execute if data storage computer:alu {_temp:-0.5f} run data modify storage computer:alu stack[-1]._neg set value 1
execute store result score _neg alu run data get storage computer:alu stack[-1]._neg
execute if score _neg alu matches 1 run data modify storage computer:alu result set value 0
execute if score _neg alu matches 1 run return run function computer:alu/stack/pop

# if (a < 2147483648.0f) return floatRoundToInt(a);
data modify storage computer:alu a set from storage computer:alu stack[-1].a
data modify storage computer:alu b set value 2147483648.0f
function computer:alu/float/float_sub
data modify storage computer:alu a set from storage computer:alu result
function computer:alu/float/float_to_int_trunc
execute store result score _cmp alu run data get storage computer:alu result
execute if score _cmp alu matches ..-1 run data modify storage computer:alu a set from storage computer:alu stack[-1].a
execute if score _cmp alu matches ..-1 run function computer:alu/float/float_round_to_int
execute if score _cmp alu matches ..-1 run return run function computer:alu/stack/pop

# float shifted = floatSub(a, 2147483648.0f);
data modify storage computer:alu a set from storage computer:alu stack[-1].a
data modify storage computer:alu b set value 2147483648.0f
function computer:alu/float/float_sub

# int low = floatRoundToInt(shifted);
data modify storage computer:alu a set from storage computer:alu result
function computer:alu/float/float_round_to_int
data modify storage computer:alu stack[-1].low set from storage computer:alu result

# return flipSignBit(low);
data modify storage computer:alu a set from storage computer:alu stack[-1].low
function computer:alu/int/flip_sign_bit

# pop frame
function computer:alu/stack/pop
#!jvmtimer end alu_float_float_to_unsigned_int
