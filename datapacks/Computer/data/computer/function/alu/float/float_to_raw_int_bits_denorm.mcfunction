# Denormal handler: biasedExp <= 0
# denormMantissa = abs; for 126 times: denormMantissa *= 2; mantissaBits = extractMantissaBits(denormMantissa, 23)
# result = sign == 1 ? or(shl(1,31), mantissaBits) : mantissaBits
# Reads: stack[-1].abs, stack[-1].sign. Writes: computer:alu result

# denormMantissa = abs;
data modify storage computer:alu stack[-1].res set from storage computer:alu stack[-1].abs

# for 126 iterations: denormMantissa *= 2
data modify storage computer:alu stack[-1]._loop_i set value 0
data modify storage computer:alu stack[-1]._loop_n set value 126
function computer:alu/float/float_to_raw_int_bits_denorm_loop

# int mantissaBits = extractMantissaBits(denormMantissa, 23);
data modify storage computer:alu a set from storage computer:alu stack[-1].res
data modify storage computer:alu n set value 23
function computer:alu/float/extract_mantissa_bits
data modify storage computer:alu stack[-1]._mantBits set from storage computer:alu result

# return sign == 1 ? or(shl(1,31), mantissaBits) : mantissaBits
execute store result score _sign alu run data get storage computer:alu stack[-1].sign
execute if score _sign alu matches 1 run data modify storage computer:alu a set value -2147483648
execute if score _sign alu matches 1 run data modify storage computer:alu b set from storage computer:alu stack[-1]._mantBits
execute if score _sign alu matches 1 run function computer:alu/int/or
execute store result score _sign alu run data get storage computer:alu stack[-1].sign
execute unless score _sign alu matches 1 run data modify storage computer:alu result set from storage computer:alu stack[-1]._mantBits
