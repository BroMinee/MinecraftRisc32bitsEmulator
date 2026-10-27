# Inputs: computer:alu a (float)
# Outputs: computer:alu result (int)
# public static int floatRoundToInt(float a) { // banker's rounding

# push new frame context
function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a

# float f = floatFloor(floatAdd(a, 0.5f));
data modify storage computer:alu b set value 0.5f
function computer:alu/float/float_add
data modify storage computer:alu a set from storage computer:alu result
function computer:alu/float/float_floor
data modify storage computer:alu stack[-1].f set from storage computer:alu result

# int n = floatToIntTrunc(f);
data modify storage computer:alu a set from storage computer:alu stack[-1].f
function computer:alu/float/float_to_int_trunc
data modify storage computer:alu stack[-1].n set from storage computer:alu result

# float frac = floatSub(a, floatFloor(a));
data modify storage computer:alu a set from storage computer:alu stack[-1].a
function computer:alu/float/float_floor
data modify storage computer:alu b set from storage computer:alu result
data modify storage computer:alu a set from storage computer:alu stack[-1].a
function computer:alu/float/float_sub
data modify storage computer:alu stack[-1].frac set from storage computer:alu result

# if (frac == 0.5f || frac == -0.5f) {
data modify storage computer:alu _temp set from storage computer:alu stack[-1].frac
data modify storage computer:alu stack[-1]._half set value 0
execute if data storage computer:alu {_temp:0.5f} run data modify storage computer:alu stack[-1]._half set value 1
execute if data storage computer:alu {_temp:-0.5f} run data modify storage computer:alu stack[-1]._half set value 1

#   int rem = hwSub(n, hwMul(hwDiv(n, 2), 2));
execute store result score _half alu run data get storage computer:alu stack[-1]._half
execute if score _half alu matches 1 run data modify storage computer:alu a set from storage computer:alu stack[-1].n
execute if score _half alu matches 1 run data modify storage computer:alu b set value 2
execute if score _half alu matches 1 run function computer:alu/int/hw_div
execute store result score _half alu run data get storage computer:alu stack[-1]._half
execute if score _half alu matches 1 run data modify storage computer:alu a set from storage computer:alu result
execute if score _half alu matches 1 run data modify storage computer:alu b set value 2
execute if score _half alu matches 1 run function computer:alu/int/hw_mul
execute store result score _half alu run data get storage computer:alu stack[-1]._half
execute if score _half alu matches 1 run data modify storage computer:alu b set from storage computer:alu result
execute if score _half alu matches 1 run data modify storage computer:alu a set from storage computer:alu stack[-1].n
execute if score _half alu matches 1 run function computer:alu/int/hw_sub
execute store result score _half alu run data get storage computer:alu stack[-1]._half
execute if score _half alu matches 1 run data modify storage computer:alu stack[-1]._rem set from storage computer:alu result

#   if (rem != 0) n = hwSub(n, 1);
execute store result score _half alu run data get storage computer:alu stack[-1]._half
execute if score _half alu matches 1 run execute store result score _rem alu run data get storage computer:alu stack[-1]._rem
execute if score _half alu matches 1 unless score _rem alu matches 0 run data modify storage computer:alu a set from storage computer:alu stack[-1].n
execute if score _half alu matches 1 unless score _rem alu matches 0 run data modify storage computer:alu b set value 1
execute if score _half alu matches 1 unless score _rem alu matches 0 run function computer:alu/int/hw_sub
execute store result score _half alu run data get storage computer:alu stack[-1]._half
execute store result score _rem alu run data get storage computer:alu stack[-1]._rem
execute if score _half alu matches 1 unless score _rem alu matches 0 run data modify storage computer:alu stack[-1].n set from storage computer:alu result

# return n;
data modify storage computer:alu result set from storage computer:alu stack[-1].n

# pop frame
function computer:alu/stack/pop
