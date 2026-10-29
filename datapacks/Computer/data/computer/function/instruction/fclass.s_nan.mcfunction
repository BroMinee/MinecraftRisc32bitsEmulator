# NaN sub-dispatch: quiet (bit 22 set) vs signaling
# boolean isQuiet = maskLowBits(shrU(mantissa, 22), 1) != 0;
# return isQuiet ? pow2(9) : pow2(8);

data modify storage computer:alu a set from storage computer:cpu _bits
data modify storage computer:alu bits set value 23
function computer:alu/int/mask_low_bits
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu shift set value 22
function computer:alu/int/shr_u
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu bits set value 1
function computer:alu/int/mask_low_bits
execute store result score _quiet alu run data get storage computer:alu result

# isQuiet ? 512 : 256
execute unless score _quiet alu matches 0 run return run data modify storage computer:alu result set value 512
data modify storage computer:alu result set value 256
