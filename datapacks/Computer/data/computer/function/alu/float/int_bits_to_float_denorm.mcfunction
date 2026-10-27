# Denormal handler: value = bitsToFraction(mantissaBits, 23) / 2^126
# Reads/writes stack[-1].mantissaBits, stack[-1].res, stack[-1]._loop_i, stack[-1]._loop_n

# float mantissa = bitsToFraction(mantissaBits, 23);
data modify storage computer:alu a set from storage computer:alu stack[-1].mantissaBits
data modify storage computer:alu n set value 23
function computer:alu/float/bits_to_fraction
data modify storage computer:alu stack[-1].res set from storage computer:alu result

# for 126 iterations: result = floatDiv(result, 2.0f)
data modify storage computer:alu stack[-1]._loop_i set value 0
data modify storage computer:alu stack[-1]._loop_n set value 126
function computer:alu/float/int_bits_to_float_div_loop
