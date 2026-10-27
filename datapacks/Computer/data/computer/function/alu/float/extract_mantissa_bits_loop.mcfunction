# Loop body for extractMantissaBits — operates on parent's frame (stack[-1])
# Reads/writes: stack[-1].f (float), .bits (int), .i (int)

# if (i < 0) return;
execute store result score _i alu run data get storage computer:alu stack[-1].i
execute if score _i alu matches ..-1 run return 0

# f = floatMul(f, 2.0f);
data modify storage computer:alu a set from storage computer:alu stack[-1].f
data modify storage computer:alu b set value 2.0f
function computer:alu/float/float_mul
data modify storage computer:alu stack[-1].f set from storage computer:alu result

# if (f >= 1.0f) {
#   data get on a float truncates to int, so f >= 1.0 iff truncated >= 1
execute store result score _fint alu run data get storage computer:alu stack[-1].f
execute if score _fint alu matches 1.. run data modify storage computer:alu stack[-1]._ge1 set value 1
execute unless score _fint alu matches 1.. run data modify storage computer:alu stack[-1]._ge1 set value 0

#   bits = or(bits, shl(1, i));
execute store result score _ge1 alu run data get storage computer:alu stack[-1]._ge1
execute if score _ge1 alu matches 1 run data modify storage computer:alu a set value 1
execute if score _ge1 alu matches 1 run data modify storage computer:alu shift set from storage computer:alu stack[-1].i
execute if score _ge1 alu matches 1 run function computer:alu/int/shl
execute store result score _ge1 alu run data get storage computer:alu stack[-1]._ge1
execute if score _ge1 alu matches 1 run data modify storage computer:alu stack[-1]._shl_result set from storage computer:alu result

execute store result score _ge1 alu run data get storage computer:alu stack[-1]._ge1
execute if score _ge1 alu matches 1 run data modify storage computer:alu a set from storage computer:alu stack[-1].bits
execute if score _ge1 alu matches 1 run data modify storage computer:alu b set from storage computer:alu stack[-1]._shl_result
execute if score _ge1 alu matches 1 run function computer:alu/int/or
execute store result score _ge1 alu run data get storage computer:alu stack[-1]._ge1
execute if score _ge1 alu matches 1 run data modify storage computer:alu stack[-1].bits set from storage computer:alu result

#   f = floatSub(f, 1.0f);
execute store result score _ge1 alu run data get storage computer:alu stack[-1]._ge1
execute if score _ge1 alu matches 1 run data modify storage computer:alu a set from storage computer:alu stack[-1].f
execute if score _ge1 alu matches 1 run data modify storage computer:alu b set value 1.0f
execute if score _ge1 alu matches 1 run function computer:alu/float/float_sub
execute store result score _ge1 alu run data get storage computer:alu stack[-1]._ge1
execute if score _ge1 alu matches 1 run data modify storage computer:alu stack[-1].f set from storage computer:alu result

# i = hwSub(i, 1);
data modify storage computer:alu a set from storage computer:alu stack[-1].i
data modify storage computer:alu b set value 1
function computer:alu/int/hw_sub
data modify storage computer:alu stack[-1].i set from storage computer:alu result

# recurse
function computer:alu/float/extract_mantissa_bits_loop
