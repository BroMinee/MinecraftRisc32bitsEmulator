# Inputs: computer:alu a (float)
# Outputs: computer:alu result (int)
# public static int floatToRawIntBits(float a) {

# push new frame context
function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a

# --- Handle NaN: if (a != a) return 0x7FC00000 ---
# NaN check: compute a - a. Normal/zero -> 0.0f, NaN -> NaN, Inf -> NaN
data modify storage computer:alu b set from storage computer:alu a
function computer:alu/float/float_sub
data modify storage computer:alu stack[-1]._ama set from storage computer:alu result
# If a - a != 0.0f -> NaN or Inf input
data modify storage computer:alu _temp set from storage computer:alu stack[-1]._ama
execute unless data storage computer:alu {_temp: 0.0f} unless data storage computer:alu {_temp: -0.0f} run data modify storage computer:alu stack[-1]._isNaN set value 1
execute if data storage computer:alu {_temp: 0.0f} run data modify storage computer:alu stack[-1]._isNaN set value 0
execute if data storage computer:alu {_temp: -0.0f} run data modify storage computer:alu stack[-1]._isNaN set value 0
execute store result score _nan alu run data get storage computer:alu stack[-1]._isNaN
# Canonical NaN: or(shl(0xFF, 23), shl(1, 22)) = 0x7FC00000 = 2143289344
execute if score _nan alu matches 1 run data modify storage computer:alu result set value 2143289344
execute if score _nan alu matches 1 run return run function computer:alu/stack/pop

# --- Handle zeros: if (a == 0.0f) ---
data modify storage computer:alu _temp set from storage computer:alu stack[-1].a
execute if data storage computer:alu {_temp: 0.0f} run data modify storage computer:alu result set value 0
execute if data storage computer:alu {_temp: 0.0f} run return run function computer:alu/stack/pop
# TODO: -0.0f cannot be distinguished from 0.0f via NBT match (both match {_temp: 0.0f})
# -0.0f -> 0x80000000 = -2147483648
# execute if data storage computer:alu {_temp: -0.0f} run data modify storage computer:alu result set value -2147483648
# execute if data storage computer:alu {_temp: -0.0f} run return run function computer:alu/stack/pop

# --- Sign bit ---
data modify storage computer:alu stack[-1].sign set value 0
data modify storage computer:alu stack[-1].abs set from storage computer:alu stack[-1].a
# if (a < 0.0f): data get truncates float to int, negative float -> negative int
execute store result score _ai alu run data get storage computer:alu stack[-1].a
execute if score _ai alu matches ..-1 run data modify storage computer:alu stack[-1].sign set value 1
execute if score _ai alu matches ..-1 run data modify storage computer:alu a set from storage computer:alu stack[-1].a
execute if score _ai alu matches ..-1 run function computer:alu/float/float_neg
execute store result score _ai alu run data get storage computer:alu stack[-1].a
execute if score _ai alu matches ..-1 run data modify storage computer:alu stack[-1].abs set from storage computer:alu result
# Also catch -0.x floats where data get returns 0 but value is negative
# (these are handled above by the -0.0f check... but small negatives like -0.5f truncate to 0)
# Check: floatSub(0.0f, a) — if positive, a was negative
data modify storage computer:alu a set value 0.0f
data modify storage computer:alu b set from storage computer:alu stack[-1].a
function computer:alu/float/float_sub
data modify storage computer:alu stack[-1]._neg_check set from storage computer:alu result
execute store result score _nc alu run data get storage computer:alu stack[-1]._neg_check
execute store result score _sign alu run data get storage computer:alu stack[-1].sign
execute if score _sign alu matches 0 if score _nc alu matches 1.. run data modify storage computer:alu stack[-1].sign set value 1
execute if score _sign alu matches 0 if score _nc alu matches 1.. run data modify storage computer:alu a set from storage computer:alu stack[-1].a
execute if score _sign alu matches 0 if score _nc alu matches 1.. run function computer:alu/float/float_neg
execute store result score _sign alu run data get storage computer:alu stack[-1].sign
execute if score _sign alu matches 0 if score _nc alu matches 1.. run data modify storage computer:alu stack[-1].abs set from storage computer:alu result

# --- Handle infinity ---
# if (abs == floatDiv(1.0f, 0.0f)) -> inf
# Check: floatSub(abs, abs) would be NaN for inf (0.0f for finite)
# But we already filtered NaN. For inf: abs * 0 = NaN, or abs - abs = NaN
# Simpler: floatDiv(abs, abs) = 1.0f for finite, NaN for inf
data modify storage computer:alu a set from storage computer:alu stack[-1].abs
data modify storage computer:alu b set from storage computer:alu stack[-1].abs
function computer:alu/float/float_div
data modify storage computer:alu _temp set from storage computer:alu result
data modify storage computer:alu stack[-1]._isInf set value 0
execute unless data storage computer:alu {_temp: 1.0f} run data modify storage computer:alu stack[-1]._isInf set value 1
# But abs/abs = NaN if abs was 0 (already handled) or NaN (already handled)
# For finite nonzero: abs/abs = 1.0f. For inf: inf/inf = NaN ≠ 1.0f
execute store result score _inf alu run data get storage computer:alu stack[-1]._isInf
# exp = shl(0xFF, 23) = 0x7F800000 = 2139095040
execute if score _inf alu matches 1 run data modify storage computer:alu stack[-1]._infBits set value 2139095040
execute if score _inf alu matches 1 run execute store result score _sign alu run data get storage computer:alu stack[-1].sign
execute if score _inf alu matches 1 if score _sign alu matches 1 run data modify storage computer:alu a set value -2147483648
execute if score _inf alu matches 1 if score _sign alu matches 1 run data modify storage computer:alu b set value 2139095040
execute if score _inf alu matches 1 if score _sign alu matches 1 run function computer:alu/int/or
execute store result score _inf alu run data get storage computer:alu stack[-1]._isInf
execute store result score _sign alu run data get storage computer:alu stack[-1].sign
execute if score _inf alu matches 1 if score _sign alu matches 1 run return run function computer:alu/stack/pop
execute if score _inf alu matches 1 if score _sign alu matches 0 run data modify storage computer:alu result set value 2139095040
execute if score _inf alu matches 1 if score _sign alu matches 0 run return run function computer:alu/stack/pop

# --- Find exponent: normalize to [1.0, 2.0) ---
data modify storage computer:alu stack[-1].exp set value 0
data modify storage computer:alu stack[-1].temp set from storage computer:alu stack[-1].abs

# while (temp >= 2.0f) { temp /= 2; exp++; }
function computer:alu/float/float_to_raw_int_bits_scale_down

# while (temp < 1.0f) { temp *= 2; exp--; }
function computer:alu/float/float_to_raw_int_bits_scale_up

# int biasedExp = hwAdd(exp, 127);
data modify storage computer:alu a set from storage computer:alu stack[-1].exp
data modify storage computer:alu b set value 127
function computer:alu/int/hw_add
data modify storage computer:alu stack[-1].biasedExp set from storage computer:alu result

# --- Handle denormals (biasedExp <= 0) ---
execute store result score _bexp alu run data get storage computer:alu stack[-1].biasedExp
execute if score _bexp alu matches ..0 run function computer:alu/float/float_to_raw_int_bits_denorm
execute store result score _bexp alu run data get storage computer:alu stack[-1].biasedExp
execute if score _bexp alu matches ..0 run return run function computer:alu/stack/pop

# --- Normal: temp is in [1.0, 2.0) ---
# float fraction = floatSub(temp, 1.0f);
data modify storage computer:alu a set from storage computer:alu stack[-1].temp
data modify storage computer:alu b set value 1.0f
function computer:alu/float/float_sub
data modify storage computer:alu stack[-1].fraction set from storage computer:alu result

# int mantissaBits = extractMantissaBits(fraction, 23);
data modify storage computer:alu a set from storage computer:alu stack[-1].fraction
data modify storage computer:alu n set value 23
function computer:alu/float/extract_mantissa_bits
data modify storage computer:alu stack[-1].mantissaBits set from storage computer:alu result

# int result = mantissaBits;
# result = or(result, shl(biasedExp, 23));
data modify storage computer:alu a set from storage computer:alu stack[-1].biasedExp
data modify storage computer:alu shift set value 23
function computer:alu/int/shl
data modify storage computer:alu stack[-1]._expShifted set from storage computer:alu result

data modify storage computer:alu a set from storage computer:alu stack[-1].mantissaBits
data modify storage computer:alu b set from storage computer:alu stack[-1]._expShifted
function computer:alu/int/or
data modify storage computer:alu stack[-1]._result set from storage computer:alu result

# if (sign == 1) result = or(result, shl(1, 31));
execute store result score _sign alu run data get storage computer:alu stack[-1].sign
execute if score _sign alu matches 1 run data modify storage computer:alu a set from storage computer:alu stack[-1]._result
execute if score _sign alu matches 1 run data modify storage computer:alu b set value -2147483648
execute if score _sign alu matches 1 run function computer:alu/int/or
execute store result score _sign alu run data get storage computer:alu stack[-1].sign
execute if score _sign alu matches 1 run data modify storage computer:alu stack[-1]._result set from storage computer:alu result

data modify storage computer:alu result set from storage computer:alu stack[-1]._result

# pop frame
function computer:alu/stack/pop
