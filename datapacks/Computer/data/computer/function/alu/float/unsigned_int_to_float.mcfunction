#!jvmtimer start alu_float_unsigned_int_to_float
# Inputs: computer:alu a (int, unsigned)
# Outputs: computer:alu result (float)
# public static float unsignedIntToFloat(int a) {

# push new frame context
function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a

# if (a >= 0) return intToFloat(a);
execute store result score _a alu run data get storage computer:alu stack[-1].a
execute if score _a alu matches 0.. run function computer:alu/float/int_to_float
execute if score _a alu matches 0.. run return run function computer:alu/stack/pop

# float low = intToFloat(low31(a));
data modify storage computer:alu a set from storage computer:alu stack[-1].a
function computer:alu/int/low31
data modify storage computer:alu a set from storage computer:alu result
function computer:alu/float/int_to_float
data modify storage computer:alu stack[-1].low set from storage computer:alu result

# return floatAdd(low, 2147483648.0f);
data modify storage computer:alu a set from storage computer:alu stack[-1].low
data modify storage computer:alu b set value 2147483648.0f
function computer:alu/float/float_add

# pop frame
function computer:alu/stack/pop
#!jvmtimer end alu_float_unsigned_int_to_float
