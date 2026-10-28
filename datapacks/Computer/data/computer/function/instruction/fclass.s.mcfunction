# Input:  computer:cpu rs1_val (IEEE 754 int bits)
# Output: computer:alu result (fclass bitmask)
# static int fclass_s(int bits) {

function computer:debug/print_log {"message": {"text": "Running fclass.s", "color":"gold"}}

# int sign = maskLowBits(shrU(bits, 31), 1);
data modify storage computer:alu a set from storage computer:cpu rs1_val
data modify storage computer:alu shift set value 31
function computer:alu/int/shr_u
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu bits set value 1
function computer:alu/int/mask_low_bits
execute store result score _sign alu run data get storage computer:alu result

# int exp = maskLowBits(shrU(bits, 23), 8);
data modify storage computer:alu a set from storage computer:cpu rs1_val
data modify storage computer:alu shift set value 23
function computer:alu/int/shr_u
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu bits set value 8
function computer:alu/int/mask_low_bits
execute store result score _exp alu run data get storage computer:alu result

# int mantissa = maskLowBits(bits, 23);
data modify storage computer:alu a set from storage computer:cpu rs1_val
data modify storage computer:alu bits set value 23
function computer:alu/int/mask_low_bits
execute store result score _mant alu run data get storage computer:alu result

# if (isMaxExp && !isZeroMant) -> NaN
execute if score _exp alu matches 255 unless score _mant alu matches 0 run return run function computer:instruction/fclass.s_nan

# if (isMaxExp && isZeroMant) -> +-Inf
execute if score _exp alu matches 255 if score _mant alu matches 0 if score _sign alu matches 1 run return run data modify storage computer:alu result set value 1
execute if score _exp alu matches 255 if score _mant alu matches 0 if score _sign alu matches 0 run return run data modify storage computer:alu result set value 128

# if (isZeroExp && isZeroMant) -> +-Zero
execute if score _exp alu matches 0 if score _mant alu matches 0 if score _sign alu matches 1 run return run data modify storage computer:alu result set value 8
execute if score _exp alu matches 0 if score _mant alu matches 0 if score _sign alu matches 0 run return run data modify storage computer:alu result set value 16

# if (isZeroExp && !isZeroMant) -> +-Subnormal
execute if score _exp alu matches 0 unless score _mant alu matches 0 if score _sign alu matches 1 run return run data modify storage computer:alu result set value 4
execute if score _exp alu matches 0 unless score _mant alu matches 0 if score _sign alu matches 0 run return run data modify storage computer:alu result set value 32

# Normal
execute if score _sign alu matches 1 run return run data modify storage computer:alu result set value 2
data modify storage computer:alu result set value 64
