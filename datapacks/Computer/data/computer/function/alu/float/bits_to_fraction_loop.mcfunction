# Loop body for bitsToFraction — operates on parent's frame (stack[-1])
# Reads/writes: stack[-1].a (int bits), .n (int), .res (float), .i (int)

# if (i >= n) return;
execute store result score _i alu run data get storage computer:alu stack[-1].i
execute store result score _n alu run data get storage computer:alu stack[-1].n
execute if score _i alu >= _n alu run return 0

# int bit = maskLowBits(shrU(bits, i), 1);
data modify storage computer:alu a set from storage computer:alu stack[-1].a
data modify storage computer:alu shift set from storage computer:alu stack[-1].i
function computer:alu/int/shr_u
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu bits set value 1
function computer:alu/int/mask_low_bits
data modify storage computer:alu stack[-1]._bit set from storage computer:alu result

# result = floatDiv(result, 2.0f);
data modify storage computer:alu a set from storage computer:alu stack[-1].res
data modify storage computer:alu b set value 2.0f
function computer:alu/float/float_div
data modify storage computer:alu stack[-1].res set from storage computer:alu result

# if (bit == 1) { result = floatAdd(result, 0.5f); }
execute store result score _bit alu run data get storage computer:alu stack[-1]._bit
execute if score _bit alu matches 1 run data modify storage computer:alu a set from storage computer:alu stack[-1].res
execute if score _bit alu matches 1 run data modify storage computer:alu b set value 0.5f
execute if score _bit alu matches 1 run function computer:alu/float/float_add
execute store result score _bit alu run data get storage computer:alu stack[-1]._bit
execute if score _bit alu matches 1 run data modify storage computer:alu stack[-1].res set from storage computer:alu result

# i = hwAdd(i, 1);
data modify storage computer:alu a set from storage computer:alu stack[-1].i
data modify storage computer:alu b set value 1
function computer:alu/int/hw_add
data modify storage computer:alu stack[-1].i set from storage computer:alu result

# recurse
function computer:alu/float/bits_to_fraction_loop
