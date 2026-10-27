# Loop body for divRemUnsigned — operates on parent's frame (stack[-1])
# Reads/writes: stack[-1].a (dividend), .b (divisor), .q, .r, .i

# if (i < 0) return;
execute store result score _i alu run data get storage computer:alu stack[-1].i
execute if score _i alu matches ..-1 run return 0

# int bit = maskLowBits(shrU(dividend, i), 1);
data modify storage computer:alu a set from storage computer:alu stack[-1].a
data modify storage computer:alu shift set from storage computer:alu stack[-1].i
function computer:alu/int/shr_u
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu bits set value 1
function computer:alu/int/mask_low_bits
data modify storage computer:alu stack[-1]._bit set from storage computer:alu result

# int rShift = shl(r, 1);
data modify storage computer:alu a set from storage computer:alu stack[-1].r
data modify storage computer:alu shift set value 1
function computer:alu/int/shl
data modify storage computer:alu stack[-1]._rShift set from storage computer:alu result

# r = bit == 1 ? add(rShift, 1) : rShift;
execute store result score _bit alu run data get storage computer:alu stack[-1]._bit
data modify storage computer:alu stack[-1].r set from storage computer:alu stack[-1]._rShift
execute if score _bit alu matches 1 run data modify storage computer:alu a set from storage computer:alu stack[-1]._rShift
execute if score _bit alu matches 1 run data modify storage computer:alu b set value 1
execute if score _bit alu matches 1 run function computer:alu/int/add
execute store result score _bit alu run data get storage computer:alu stack[-1]._bit
execute if score _bit alu matches 1 run data modify storage computer:alu stack[-1].r set from storage computer:alu result

# if (compareUnsigned(r, divisor) >= 0) {
data modify storage computer:alu a set from storage computer:alu stack[-1].r
data modify storage computer:alu b set from storage computer:alu stack[-1].b
function computer:alu/int/compare_unsigned
execute store result score _cmp alu run data get storage computer:alu result
data modify storage computer:alu stack[-1]._ge set value 0
execute if score _cmp alu matches 0.. run data modify storage computer:alu stack[-1]._ge set value 1

#   r = sub(r, divisor);
execute store result score _ge alu run data get storage computer:alu stack[-1]._ge
execute if score _ge alu matches 1 run data modify storage computer:alu a set from storage computer:alu stack[-1].r
execute if score _ge alu matches 1 run data modify storage computer:alu b set from storage computer:alu stack[-1].b
execute if score _ge alu matches 1 run function computer:alu/int/sub
execute store result score _ge alu run data get storage computer:alu stack[-1]._ge
execute if score _ge alu matches 1 run data modify storage computer:alu stack[-1].r set from storage computer:alu result

#   q = i == 31 ? flipSignBit(q) : add(q, pow2(i));
execute store result score _ge alu run data get storage computer:alu stack[-1]._ge
execute store result score _i alu run data get storage computer:alu stack[-1].i
execute if score _ge alu matches 1 if score _i alu matches 31 run data modify storage computer:alu a set from storage computer:alu stack[-1].q
execute if score _ge alu matches 1 if score _i alu matches 31 run function computer:alu/int/flip_sign_bit
execute store result score _ge alu run data get storage computer:alu stack[-1]._ge
execute store result score _i alu run data get storage computer:alu stack[-1].i
execute if score _ge alu matches 1 if score _i alu matches 31 run data modify storage computer:alu stack[-1].q set from storage computer:alu result

execute if score _ge alu matches 1 unless score _i alu matches 31 run data modify storage computer:alu n set from storage computer:alu stack[-1].i
execute if score _ge alu matches 1 unless score _i alu matches 31 run function computer:alu/int/pow2
execute store result score _ge alu run data get storage computer:alu stack[-1]._ge
execute store result score _i alu run data get storage computer:alu stack[-1].i
execute if score _ge alu matches 1 unless score _i alu matches 31 run data modify storage computer:alu b set from storage computer:alu result
execute if score _ge alu matches 1 unless score _i alu matches 31 run data modify storage computer:alu a set from storage computer:alu stack[-1].q
execute if score _ge alu matches 1 unless score _i alu matches 31 run function computer:alu/int/add
execute store result score _ge alu run data get storage computer:alu stack[-1]._ge
execute store result score _i alu run data get storage computer:alu stack[-1].i
execute if score _ge alu matches 1 unless score _i alu matches 31 run data modify storage computer:alu stack[-1].q set from storage computer:alu result

# i = hwSub(i, 1);
data modify storage computer:alu a set from storage computer:alu stack[-1].i
data modify storage computer:alu b set value 1
function computer:alu/int/hw_sub
data modify storage computer:alu stack[-1].i set from storage computer:alu result

# recurse
function computer:alu/int/div_rem_unsigned_loop
