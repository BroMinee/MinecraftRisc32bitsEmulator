# Inputs: computer:alu a (int bits)
# Outputs: computer:alu result (float)
# public static float intBitsToFloat(int a) {

# push new frame context
function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a

# int sign = maskLowBits(shrU(a, 31), 1);
data modify storage computer:alu a set from storage computer:alu stack[-1].a
data modify storage computer:alu shift set value 31
function computer:alu/int/shr_u
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu bits set value 1
function computer:alu/int/mask_low_bits
data modify storage computer:alu stack[-1].sign set from storage computer:alu result

# int biasedExp = maskLowBits(shrU(a, 23), 8);
data modify storage computer:alu a set from storage computer:alu stack[-1].a
data modify storage computer:alu shift set value 23
function computer:alu/int/shr_u
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu bits set value 8
function computer:alu/int/mask_low_bits
data modify storage computer:alu stack[-1].biasedExp set from storage computer:alu result

# int mantissaBits = maskLowBits(a, 23);
data modify storage computer:alu a set from storage computer:alu stack[-1].a
data modify storage computer:alu bits set value 23
function computer:alu/int/mask_low_bits
data modify storage computer:alu stack[-1].mantissaBits set from storage computer:alu result

# Branch on biasedExp and mantissaBits
execute store result score _exp alu run data get storage computer:alu stack[-1].biasedExp
execute store result score _mant alu run data get storage computer:alu stack[-1].mantissaBits

# if (biasedExp == 0 && mantissaBits == 0) -> +-Zero
execute if score _exp alu matches 0 if score _mant alu matches 0 run data modify storage computer:alu stack[-1].res set value 0.0f
execute if score _exp alu matches 0 if score _mant alu matches 0 run function computer:alu/float/int_bits_to_float_apply_sign
execute if score _exp alu matches 0 if score _mant alu matches 0 run return run function computer:alu/stack/pop

# if (biasedExp == 0 && mantissaBits != 0) -> Denormal
execute store result score _exp alu run data get storage computer:alu stack[-1].biasedExp
execute store result score _mant alu run data get storage computer:alu stack[-1].mantissaBits
execute if score _exp alu matches 0 unless score _mant alu matches 0 run function computer:alu/float/int_bits_to_float_denorm
execute store result score _exp alu run data get storage computer:alu stack[-1].biasedExp
execute store result score _mant alu run data get storage computer:alu stack[-1].mantissaBits
execute if score _exp alu matches 0 unless score _mant alu matches 0 run function computer:alu/float/int_bits_to_float_apply_sign
execute if score _exp alu matches 0 unless score _mant alu matches 0 run return run function computer:alu/stack/pop

# if (biasedExp == 255 && mantissaBits == 0) -> +-Infinity
execute store result score _exp alu run data get storage computer:alu stack[-1].biasedExp
execute store result score _mant alu run data get storage computer:alu stack[-1].mantissaBits
execute if score _exp alu matches 255 if score _mant alu matches 0 run data modify storage computer:alu a set value 1.0f
execute if score _exp alu matches 255 if score _mant alu matches 0 run data modify storage computer:alu b set value 0.0f
execute if score _exp alu matches 255 if score _mant alu matches 0 run function computer:alu/float/float_div
execute store result score _exp alu run data get storage computer:alu stack[-1].biasedExp
execute store result score _mant alu run data get storage computer:alu stack[-1].mantissaBits
execute if score _exp alu matches 255 if score _mant alu matches 0 run data modify storage computer:alu stack[-1].res set from storage computer:alu result
execute if score _exp alu matches 255 if score _mant alu matches 0 run function computer:alu/float/int_bits_to_float_apply_sign
execute if score _exp alu matches 255 if score _mant alu matches 0 run return run function computer:alu/stack/pop

# if (biasedExp == 255 && mantissaBits != 0) -> NaN
execute store result score _exp alu run data get storage computer:alu stack[-1].biasedExp
execute store result score _mant alu run data get storage computer:alu stack[-1].mantissaBits
execute if score _exp alu matches 255 unless score _mant alu matches 0 run data modify storage computer:alu a set value 1.0f
execute if score _exp alu matches 255 unless score _mant alu matches 0 run data modify storage computer:alu b set value 0.0f
execute if score _exp alu matches 255 unless score _mant alu matches 0 run function computer:alu/float/float_div
execute store result score _exp alu run data get storage computer:alu stack[-1].biasedExp
execute store result score _mant alu run data get storage computer:alu stack[-1].mantissaBits
execute if score _exp alu matches 255 unless score _mant alu matches 0 run data modify storage computer:alu stack[-1]._inf set from storage computer:alu result
execute if score _exp alu matches 255 unless score _mant alu matches 0 run data modify storage computer:alu a set from storage computer:alu stack[-1]._inf
execute if score _exp alu matches 255 unless score _mant alu matches 0 run data modify storage computer:alu b set from storage computer:alu stack[-1]._inf
execute if score _exp alu matches 255 unless score _mant alu matches 0 run function computer:alu/float/float_sub
execute store result score _exp alu run data get storage computer:alu stack[-1].biasedExp
execute if score _exp alu matches 255 run data modify storage computer:alu stack[-1].res set from storage computer:alu result
execute if score _exp alu matches 255 run function computer:alu/float/int_bits_to_float_apply_sign
execute if score _exp alu matches 255 run return run function computer:alu/stack/pop

# Normal: value = (1 + mantissa/2^23) * 2^(exp-127)
# float mantissa = floatAdd(1.0f, bitsToFraction(mantissaBits, 23));
data modify storage computer:alu a set from storage computer:alu stack[-1].mantissaBits
data modify storage computer:alu n set value 23
function computer:alu/float/bits_to_fraction
data modify storage computer:alu a set value 1.0f
data modify storage computer:alu b set from storage computer:alu result
function computer:alu/float/float_add
data modify storage computer:alu stack[-1].res set from storage computer:alu result

# int exp = hwSub(biasedExp, 127);
data modify storage computer:alu a set from storage computer:alu stack[-1].biasedExp
data modify storage computer:alu b set value 127
function computer:alu/int/hw_sub
data modify storage computer:alu stack[-1].exp set from storage computer:alu result

# if (exp > 0) -> mul loop
execute store result score _exp alu run data get storage computer:alu stack[-1].exp
execute if score _exp alu matches 1.. run data modify storage computer:alu stack[-1]._loop_i set value 0
execute if score _exp alu matches 1.. run data modify storage computer:alu stack[-1]._loop_n set from storage computer:alu stack[-1].exp
execute if score _exp alu matches 1.. run function computer:alu/float/int_bits_to_float_mul_loop

# if (exp < 0) -> div loop
execute store result score _exp alu run data get storage computer:alu stack[-1].exp
execute if score _exp alu matches ..-1 run data modify storage computer:alu a set value 0
execute if score _exp alu matches ..-1 run data modify storage computer:alu b set from storage computer:alu stack[-1].exp
execute if score _exp alu matches ..-1 run function computer:alu/int/hw_sub
execute store result score _exp alu run data get storage computer:alu stack[-1].exp
execute if score _exp alu matches ..-1 run data modify storage computer:alu stack[-1]._loop_i set value 0
execute if score _exp alu matches ..-1 run data modify storage computer:alu stack[-1]._loop_n set from storage computer:alu result
execute if score _exp alu matches ..-1 run function computer:alu/float/int_bits_to_float_div_loop

# Apply sign and return
function computer:alu/float/int_bits_to_float_apply_sign

# pop frame
function computer:alu/stack/pop
