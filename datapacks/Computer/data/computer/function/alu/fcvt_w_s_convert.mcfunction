# fcvt.w.s: convert float rs1 to signed int32 rd
# RNE rounding mode (round to nearest, ties to even)

# Save sign
scoreboard players operation fcvt_sign Computer = rs1_31 Computer

# Check for exp=255: all exponent bits (rs1_30..rs1_23) are 1
scoreboard players set fcvt_exp_all_ones Computer 0
execute if score rs1_30 Computer matches 1 run execute if score rs1_29 Computer matches 1 run execute if score rs1_28 Computer matches 1 run execute if score rs1_27 Computer matches 1 run execute if score rs1_26 Computer matches 1 run execute if score rs1_25 Computer matches 1 run execute if score rs1_24 Computer matches 1 run execute if score rs1_23 Computer matches 1 run scoreboard players set fcvt_exp_all_ones Computer 1

# Check for NaN (exp=255, mantissa!=0)
scoreboard players set fcvt_is_nan Computer 0
execute if score fcvt_exp_all_ones Computer matches 1 run scoreboard players set fcvt_is_nan Computer 1
execute if score fcvt_is_nan Computer matches 1 run execute if score rs1_22 Computer matches 0 run execute if score rs1_21 Computer matches 0 run execute if score rs1_20 Computer matches 0 run execute if score rs1_19 Computer matches 0 run execute if score rs1_18 Computer matches 0 run execute if score rs1_17 Computer matches 0 run execute if score rs1_16 Computer matches 0 run execute if score rs1_15 Computer matches 0 run execute if score rs1_14 Computer matches 0 run execute if score rs1_13 Computer matches 0 run execute if score rs1_12 Computer matches 0 run execute if score rs1_11 Computer matches 0 run execute if score rs1_10 Computer matches 0 run execute if score rs1_9 Computer matches 0 run execute if score rs1_8 Computer matches 0 run execute if score rs1_7 Computer matches 0 run execute if score rs1_6 Computer matches 0 run execute if score rs1_5 Computer matches 0 run execute if score rs1_4 Computer matches 0 run execute if score rs1_3 Computer matches 0 run execute if score rs1_2 Computer matches 0 run execute if score rs1_1 Computer matches 0 run execute if score rs1_0 Computer matches 0 run scoreboard players set fcvt_is_nan Computer 0

# Check for overflow: exp >= 158 (10011110)
# rs1_30=1 AND rs1_29=1 -> exp >= 192 -> overflow
# rs1_30=1 AND rs1_29=0 AND rs1_28=1 -> exp >= 160 -> overflow
# rs1_30=1 AND rs1_29=0 AND rs1_28=0 AND rs1_27=1 AND rs1_26=1 AND rs1_25=1 AND rs1_24=1 -> exp in {158,159} -> overflow
scoreboard players set fcvt_overflow Computer 0
execute if score rs1_30 Computer matches 1 run execute if score rs1_29 Computer matches 1 run scoreboard players set fcvt_overflow Computer 1
execute if score rs1_30 Computer matches 1 run execute if score rs1_29 Computer matches 0 run execute if score rs1_28 Computer matches 1 run scoreboard players set fcvt_overflow Computer 1
execute if score rs1_30 Computer matches 1 run execute if score rs1_29 Computer matches 0 run execute if score rs1_28 Computer matches 0 run execute if score rs1_27 Computer matches 1 run execute if score rs1_26 Computer matches 1 run execute if score rs1_25 Computer matches 1 run execute if score rs1_24 Computer matches 1 run scoreboard players set fcvt_overflow Computer 1

# Check for underflow: exp <= 126 (01111110)
# rs1_30=0 AND at least one of rs1_29..rs1_23 is 0 -> exp <= 126
# (exp=127 is 01111111, so rs1_30=0 with all others 1 is NOT underflow)
scoreboard players set fcvt_underflow Computer 0
execute if score rs1_30 Computer matches 0 run scoreboard players set fcvt_underflow Computer 1
execute if score rs1_30 Computer matches 0 run execute if score rs1_29 Computer matches 1 run execute if score rs1_28 Computer matches 1 run execute if score rs1_27 Computer matches 1 run execute if score rs1_26 Computer matches 1 run execute if score rs1_25 Computer matches 1 run execute if score rs1_24 Computer matches 1 run execute if score rs1_23 Computer matches 1 run scoreboard players set fcvt_underflow Computer 0

# NaN or positive infinity or positive overflow -> INT_MAX (0x7FFFFFFF)
# Negative infinity or negative overflow -> INT_MIN (0x80000000)
# exp >= 158 means |value| >= 2^31 which overflows signed int32

scoreboard players set fcvt_special Computer 0

# NaN -> INT_MAX
execute if score fcvt_is_nan Computer matches 1 run scoreboard players set fcvt_special Computer 1
execute if score fcvt_is_nan Computer matches 1 run function computer:misc/reset_rd
execute if score fcvt_is_nan Computer matches 1 run scoreboard players set rd_0 Computer 1
execute if score fcvt_is_nan Computer matches 1 run scoreboard players set rd_1 Computer 1
execute if score fcvt_is_nan Computer matches 1 run scoreboard players set rd_2 Computer 1
execute if score fcvt_is_nan Computer matches 1 run scoreboard players set rd_3 Computer 1
execute if score fcvt_is_nan Computer matches 1 run scoreboard players set rd_4 Computer 1
execute if score fcvt_is_nan Computer matches 1 run scoreboard players set rd_5 Computer 1
execute if score fcvt_is_nan Computer matches 1 run scoreboard players set rd_6 Computer 1
execute if score fcvt_is_nan Computer matches 1 run scoreboard players set rd_7 Computer 1
execute if score fcvt_is_nan Computer matches 1 run scoreboard players set rd_8 Computer 1
execute if score fcvt_is_nan Computer matches 1 run scoreboard players set rd_9 Computer 1
execute if score fcvt_is_nan Computer matches 1 run scoreboard players set rd_10 Computer 1
execute if score fcvt_is_nan Computer matches 1 run scoreboard players set rd_11 Computer 1
execute if score fcvt_is_nan Computer matches 1 run scoreboard players set rd_12 Computer 1
execute if score fcvt_is_nan Computer matches 1 run scoreboard players set rd_13 Computer 1
execute if score fcvt_is_nan Computer matches 1 run scoreboard players set rd_14 Computer 1
execute if score fcvt_is_nan Computer matches 1 run scoreboard players set rd_15 Computer 1
execute if score fcvt_is_nan Computer matches 1 run scoreboard players set rd_16 Computer 1
execute if score fcvt_is_nan Computer matches 1 run scoreboard players set rd_17 Computer 1
execute if score fcvt_is_nan Computer matches 1 run scoreboard players set rd_18 Computer 1
execute if score fcvt_is_nan Computer matches 1 run scoreboard players set rd_19 Computer 1
execute if score fcvt_is_nan Computer matches 1 run scoreboard players set rd_20 Computer 1
execute if score fcvt_is_nan Computer matches 1 run scoreboard players set rd_21 Computer 1
execute if score fcvt_is_nan Computer matches 1 run scoreboard players set rd_22 Computer 1
execute if score fcvt_is_nan Computer matches 1 run scoreboard players set rd_23 Computer 1
execute if score fcvt_is_nan Computer matches 1 run scoreboard players set rd_24 Computer 1
execute if score fcvt_is_nan Computer matches 1 run scoreboard players set rd_25 Computer 1
execute if score fcvt_is_nan Computer matches 1 run scoreboard players set rd_26 Computer 1
execute if score fcvt_is_nan Computer matches 1 run scoreboard players set rd_27 Computer 1
execute if score fcvt_is_nan Computer matches 1 run scoreboard players set rd_28 Computer 1
execute if score fcvt_is_nan Computer matches 1 run scoreboard players set rd_29 Computer 1
execute if score fcvt_is_nan Computer matches 1 run scoreboard players set rd_30 Computer 1

# Positive overflow/inf -> INT_MAX (0x7FFFFFFF)
execute if score fcvt_special Computer matches 0 run execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 0 run scoreboard players set fcvt_special Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 0 run execute if score fcvt_special Computer matches 1 run function computer:misc/reset_rd
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 0 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_0 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 0 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_1 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 0 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_2 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 0 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_3 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 0 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_4 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 0 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_5 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 0 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_6 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 0 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_7 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 0 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_8 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 0 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_9 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 0 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_10 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 0 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_11 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 0 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_12 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 0 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_13 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 0 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_14 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 0 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_15 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 0 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_16 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 0 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_17 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 0 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_18 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 0 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_19 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 0 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_20 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 0 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_21 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 0 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_22 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 0 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_23 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 0 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_24 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 0 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_25 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 0 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_26 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 0 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_27 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 0 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_28 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 0 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_29 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 0 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_30 Computer 1

# Negative overflow/inf -> INT_MIN (0x80000000)
execute if score fcvt_special Computer matches 0 run execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 1 run scoreboard players set fcvt_special Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 1 run execute if score fcvt_special Computer matches 1 run function computer:misc/reset_rd
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_sign Computer matches 1 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_31 Computer 1

# |value| < 1 (exp < 127) -> 0
execute if score fcvt_special Computer matches 0 run execute if score fcvt_underflow Computer matches 1 run scoreboard players set fcvt_special Computer 1
execute if score fcvt_underflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run function computer:misc/reset_rd

# Normal case: exp in 127..157
# The integer value is: 1.mantissa * 2^(exp-127)
# = mantissa_with_implicit_bit >> (23 - (exp-127))
# = mantissa_with_implicit_bit >> (150 - exp)
# shift_amount = 150 - exp (if positive, shift right; if negative/zero, shift left)
execute if score fcvt_special Computer matches 0 run function computer:alu/fcvt_w_s_shift
