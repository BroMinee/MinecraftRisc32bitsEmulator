tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running fdiv.s","color":"gold"}]

# tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"Error: Not Yet Implemented fdiv.s","bold":true,"color":"red"}]
# scoreboard players set error stats 1

scoreboard players add found_dispatcher Computer 1

function computer:misc/load_rs1_15_19_f
function computer:misc/load_rs2_20_24_f

# fdiv.s rd, rs1, rs2 : rd = rs1 / rs2 (IEEE 754 single-precision)

# STEP 0: Detect special values

# Check if rs1 exponent is all zeros (subnormal or zero)
scoreboard players set fdiv_rs1_exp_zero Computer 1
execute unless score rs1_30 Computer matches 0 run scoreboard players set fdiv_rs1_exp_zero Computer 0
execute if score fdiv_rs1_exp_zero Computer matches 1 run execute unless score rs1_29 Computer matches 0 run scoreboard players set fdiv_rs1_exp_zero Computer 0
execute if score fdiv_rs1_exp_zero Computer matches 1 run execute unless score rs1_28 Computer matches 0 run scoreboard players set fdiv_rs1_exp_zero Computer 0
execute if score fdiv_rs1_exp_zero Computer matches 1 run execute unless score rs1_27 Computer matches 0 run scoreboard players set fdiv_rs1_exp_zero Computer 0
execute if score fdiv_rs1_exp_zero Computer matches 1 run execute unless score rs1_26 Computer matches 0 run scoreboard players set fdiv_rs1_exp_zero Computer 0
execute if score fdiv_rs1_exp_zero Computer matches 1 run execute unless score rs1_25 Computer matches 0 run scoreboard players set fdiv_rs1_exp_zero Computer 0
execute if score fdiv_rs1_exp_zero Computer matches 1 run execute unless score rs1_24 Computer matches 0 run scoreboard players set fdiv_rs1_exp_zero Computer 0
execute if score fdiv_rs1_exp_zero Computer matches 1 run execute unless score rs1_23 Computer matches 0 run scoreboard players set fdiv_rs1_exp_zero Computer 0

# Check if rs1 exponent is all ones (inf or NaN)
scoreboard players set fdiv_rs1_exp_ff Computer 1
execute unless score rs1_30 Computer matches 1 run scoreboard players set fdiv_rs1_exp_ff Computer 0
execute if score fdiv_rs1_exp_ff Computer matches 1 run execute unless score rs1_29 Computer matches 1 run scoreboard players set fdiv_rs1_exp_ff Computer 0
execute if score fdiv_rs1_exp_ff Computer matches 1 run execute unless score rs1_28 Computer matches 1 run scoreboard players set fdiv_rs1_exp_ff Computer 0
execute if score fdiv_rs1_exp_ff Computer matches 1 run execute unless score rs1_27 Computer matches 1 run scoreboard players set fdiv_rs1_exp_ff Computer 0
execute if score fdiv_rs1_exp_ff Computer matches 1 run execute unless score rs1_26 Computer matches 1 run scoreboard players set fdiv_rs1_exp_ff Computer 0
execute if score fdiv_rs1_exp_ff Computer matches 1 run execute unless score rs1_25 Computer matches 1 run scoreboard players set fdiv_rs1_exp_ff Computer 0
execute if score fdiv_rs1_exp_ff Computer matches 1 run execute unless score rs1_24 Computer matches 1 run scoreboard players set fdiv_rs1_exp_ff Computer 0
execute if score fdiv_rs1_exp_ff Computer matches 1 run execute unless score rs1_23 Computer matches 1 run scoreboard players set fdiv_rs1_exp_ff Computer 0

# Check if rs2 exponent is all zeros
scoreboard players set fdiv_rs2_exp_zero Computer 1
execute unless score rs2_30 Computer matches 0 run scoreboard players set fdiv_rs2_exp_zero Computer 0
execute if score fdiv_rs2_exp_zero Computer matches 1 run execute unless score rs2_29 Computer matches 0 run scoreboard players set fdiv_rs2_exp_zero Computer 0
execute if score fdiv_rs2_exp_zero Computer matches 1 run execute unless score rs2_28 Computer matches 0 run scoreboard players set fdiv_rs2_exp_zero Computer 0
execute if score fdiv_rs2_exp_zero Computer matches 1 run execute unless score rs2_27 Computer matches 0 run scoreboard players set fdiv_rs2_exp_zero Computer 0
execute if score fdiv_rs2_exp_zero Computer matches 1 run execute unless score rs2_26 Computer matches 0 run scoreboard players set fdiv_rs2_exp_zero Computer 0
execute if score fdiv_rs2_exp_zero Computer matches 1 run execute unless score rs2_25 Computer matches 0 run scoreboard players set fdiv_rs2_exp_zero Computer 0
execute if score fdiv_rs2_exp_zero Computer matches 1 run execute unless score rs2_24 Computer matches 0 run scoreboard players set fdiv_rs2_exp_zero Computer 0
execute if score fdiv_rs2_exp_zero Computer matches 1 run execute unless score rs2_23 Computer matches 0 run scoreboard players set fdiv_rs2_exp_zero Computer 0

# Check if rs2 exponent is all ones
scoreboard players set fdiv_rs2_exp_ff Computer 1
execute unless score rs2_30 Computer matches 1 run scoreboard players set fdiv_rs2_exp_ff Computer 0
execute if score fdiv_rs2_exp_ff Computer matches 1 run execute unless score rs2_29 Computer matches 1 run scoreboard players set fdiv_rs2_exp_ff Computer 0
execute if score fdiv_rs2_exp_ff Computer matches 1 run execute unless score rs2_28 Computer matches 1 run scoreboard players set fdiv_rs2_exp_ff Computer 0
execute if score fdiv_rs2_exp_ff Computer matches 1 run execute unless score rs2_27 Computer matches 1 run scoreboard players set fdiv_rs2_exp_ff Computer 0
execute if score fdiv_rs2_exp_ff Computer matches 1 run execute unless score rs2_26 Computer matches 1 run scoreboard players set fdiv_rs2_exp_ff Computer 0
execute if score fdiv_rs2_exp_ff Computer matches 1 run execute unless score rs2_25 Computer matches 1 run scoreboard players set fdiv_rs2_exp_ff Computer 0
execute if score fdiv_rs2_exp_ff Computer matches 1 run execute unless score rs2_24 Computer matches 1 run scoreboard players set fdiv_rs2_exp_ff Computer 0
execute if score fdiv_rs2_exp_ff Computer matches 1 run execute unless score rs2_23 Computer matches 1 run scoreboard players set fdiv_rs2_exp_ff Computer 0

# Check if rs1 mantissa is all zeros
scoreboard players set fdiv_rs1_man_zero Computer 1
execute unless score rs1_22 Computer matches 0 run scoreboard players set fdiv_rs1_man_zero Computer 0
execute if score fdiv_rs1_man_zero Computer matches 1 run execute unless score rs1_21 Computer matches 0 run scoreboard players set fdiv_rs1_man_zero Computer 0
execute if score fdiv_rs1_man_zero Computer matches 1 run execute unless score rs1_20 Computer matches 0 run scoreboard players set fdiv_rs1_man_zero Computer 0
execute if score fdiv_rs1_man_zero Computer matches 1 run execute unless score rs1_19 Computer matches 0 run scoreboard players set fdiv_rs1_man_zero Computer 0
execute if score fdiv_rs1_man_zero Computer matches 1 run execute unless score rs1_18 Computer matches 0 run scoreboard players set fdiv_rs1_man_zero Computer 0
execute if score fdiv_rs1_man_zero Computer matches 1 run execute unless score rs1_17 Computer matches 0 run scoreboard players set fdiv_rs1_man_zero Computer 0
execute if score fdiv_rs1_man_zero Computer matches 1 run execute unless score rs1_16 Computer matches 0 run scoreboard players set fdiv_rs1_man_zero Computer 0
execute if score fdiv_rs1_man_zero Computer matches 1 run execute unless score rs1_15 Computer matches 0 run scoreboard players set fdiv_rs1_man_zero Computer 0
execute if score fdiv_rs1_man_zero Computer matches 1 run execute unless score rs1_14 Computer matches 0 run scoreboard players set fdiv_rs1_man_zero Computer 0
execute if score fdiv_rs1_man_zero Computer matches 1 run execute unless score rs1_13 Computer matches 0 run scoreboard players set fdiv_rs1_man_zero Computer 0
execute if score fdiv_rs1_man_zero Computer matches 1 run execute unless score rs1_12 Computer matches 0 run scoreboard players set fdiv_rs1_man_zero Computer 0
execute if score fdiv_rs1_man_zero Computer matches 1 run execute unless score rs1_11 Computer matches 0 run scoreboard players set fdiv_rs1_man_zero Computer 0
execute if score fdiv_rs1_man_zero Computer matches 1 run execute unless score rs1_10 Computer matches 0 run scoreboard players set fdiv_rs1_man_zero Computer 0
execute if score fdiv_rs1_man_zero Computer matches 1 run execute unless score rs1_9 Computer matches 0 run scoreboard players set fdiv_rs1_man_zero Computer 0
execute if score fdiv_rs1_man_zero Computer matches 1 run execute unless score rs1_8 Computer matches 0 run scoreboard players set fdiv_rs1_man_zero Computer 0
execute if score fdiv_rs1_man_zero Computer matches 1 run execute unless score rs1_7 Computer matches 0 run scoreboard players set fdiv_rs1_man_zero Computer 0
execute if score fdiv_rs1_man_zero Computer matches 1 run execute unless score rs1_6 Computer matches 0 run scoreboard players set fdiv_rs1_man_zero Computer 0
execute if score fdiv_rs1_man_zero Computer matches 1 run execute unless score rs1_5 Computer matches 0 run scoreboard players set fdiv_rs1_man_zero Computer 0
execute if score fdiv_rs1_man_zero Computer matches 1 run execute unless score rs1_4 Computer matches 0 run scoreboard players set fdiv_rs1_man_zero Computer 0
execute if score fdiv_rs1_man_zero Computer matches 1 run execute unless score rs1_3 Computer matches 0 run scoreboard players set fdiv_rs1_man_zero Computer 0
execute if score fdiv_rs1_man_zero Computer matches 1 run execute unless score rs1_2 Computer matches 0 run scoreboard players set fdiv_rs1_man_zero Computer 0
execute if score fdiv_rs1_man_zero Computer matches 1 run execute unless score rs1_1 Computer matches 0 run scoreboard players set fdiv_rs1_man_zero Computer 0
execute if score fdiv_rs1_man_zero Computer matches 1 run execute unless score rs1_0 Computer matches 0 run scoreboard players set fdiv_rs1_man_zero Computer 0

# Check if rs2 mantissa is all zeros
scoreboard players set fdiv_rs2_man_zero Computer 1
execute unless score rs2_22 Computer matches 0 run scoreboard players set fdiv_rs2_man_zero Computer 0
execute if score fdiv_rs2_man_zero Computer matches 1 run execute unless score rs2_21 Computer matches 0 run scoreboard players set fdiv_rs2_man_zero Computer 0
execute if score fdiv_rs2_man_zero Computer matches 1 run execute unless score rs2_20 Computer matches 0 run scoreboard players set fdiv_rs2_man_zero Computer 0
execute if score fdiv_rs2_man_zero Computer matches 1 run execute unless score rs2_19 Computer matches 0 run scoreboard players set fdiv_rs2_man_zero Computer 0
execute if score fdiv_rs2_man_zero Computer matches 1 run execute unless score rs2_18 Computer matches 0 run scoreboard players set fdiv_rs2_man_zero Computer 0
execute if score fdiv_rs2_man_zero Computer matches 1 run execute unless score rs2_17 Computer matches 0 run scoreboard players set fdiv_rs2_man_zero Computer 0
execute if score fdiv_rs2_man_zero Computer matches 1 run execute unless score rs2_16 Computer matches 0 run scoreboard players set fdiv_rs2_man_zero Computer 0
execute if score fdiv_rs2_man_zero Computer matches 1 run execute unless score rs2_15 Computer matches 0 run scoreboard players set fdiv_rs2_man_zero Computer 0
execute if score fdiv_rs2_man_zero Computer matches 1 run execute unless score rs2_14 Computer matches 0 run scoreboard players set fdiv_rs2_man_zero Computer 0
execute if score fdiv_rs2_man_zero Computer matches 1 run execute unless score rs2_13 Computer matches 0 run scoreboard players set fdiv_rs2_man_zero Computer 0
execute if score fdiv_rs2_man_zero Computer matches 1 run execute unless score rs2_12 Computer matches 0 run scoreboard players set fdiv_rs2_man_zero Computer 0
execute if score fdiv_rs2_man_zero Computer matches 1 run execute unless score rs2_11 Computer matches 0 run scoreboard players set fdiv_rs2_man_zero Computer 0
execute if score fdiv_rs2_man_zero Computer matches 1 run execute unless score rs2_10 Computer matches 0 run scoreboard players set fdiv_rs2_man_zero Computer 0
execute if score fdiv_rs2_man_zero Computer matches 1 run execute unless score rs2_9 Computer matches 0 run scoreboard players set fdiv_rs2_man_zero Computer 0
execute if score fdiv_rs2_man_zero Computer matches 1 run execute unless score rs2_8 Computer matches 0 run scoreboard players set fdiv_rs2_man_zero Computer 0
execute if score fdiv_rs2_man_zero Computer matches 1 run execute unless score rs2_7 Computer matches 0 run scoreboard players set fdiv_rs2_man_zero Computer 0
execute if score fdiv_rs2_man_zero Computer matches 1 run execute unless score rs2_6 Computer matches 0 run scoreboard players set fdiv_rs2_man_zero Computer 0
execute if score fdiv_rs2_man_zero Computer matches 1 run execute unless score rs2_5 Computer matches 0 run scoreboard players set fdiv_rs2_man_zero Computer 0
execute if score fdiv_rs2_man_zero Computer matches 1 run execute unless score rs2_4 Computer matches 0 run scoreboard players set fdiv_rs2_man_zero Computer 0
execute if score fdiv_rs2_man_zero Computer matches 1 run execute unless score rs2_3 Computer matches 0 run scoreboard players set fdiv_rs2_man_zero Computer 0
execute if score fdiv_rs2_man_zero Computer matches 1 run execute unless score rs2_2 Computer matches 0 run scoreboard players set fdiv_rs2_man_zero Computer 0
execute if score fdiv_rs2_man_zero Computer matches 1 run execute unless score rs2_1 Computer matches 0 run scoreboard players set fdiv_rs2_man_zero Computer 0
execute if score fdiv_rs2_man_zero Computer matches 1 run execute unless score rs2_0 Computer matches 0 run scoreboard players set fdiv_rs2_man_zero Computer 0

# Classify inputs
scoreboard players set fdiv_rs1_is_zero Computer 0
execute if score fdiv_rs1_exp_zero Computer matches 1 run execute if score fdiv_rs1_man_zero Computer matches 1 run scoreboard players set fdiv_rs1_is_zero Computer 1

scoreboard players set fdiv_rs2_is_zero Computer 0
execute if score fdiv_rs2_exp_zero Computer matches 1 run execute if score fdiv_rs2_man_zero Computer matches 1 run scoreboard players set fdiv_rs2_is_zero Computer 1

scoreboard players set fdiv_rs1_is_nan Computer 0
execute if score fdiv_rs1_exp_ff Computer matches 1 run execute if score fdiv_rs1_man_zero Computer matches 0 run scoreboard players set fdiv_rs1_is_nan Computer 1

scoreboard players set fdiv_rs2_is_nan Computer 0
execute if score fdiv_rs2_exp_ff Computer matches 1 run execute if score fdiv_rs2_man_zero Computer matches 0 run scoreboard players set fdiv_rs2_is_nan Computer 1

scoreboard players set fdiv_rs1_is_inf Computer 0
execute if score fdiv_rs1_exp_ff Computer matches 1 run execute if score fdiv_rs1_man_zero Computer matches 1 run scoreboard players set fdiv_rs1_is_inf Computer 1

scoreboard players set fdiv_rs2_is_inf Computer 0
execute if score fdiv_rs2_exp_ff Computer matches 1 run execute if score fdiv_rs2_man_zero Computer matches 1 run scoreboard players set fdiv_rs2_is_inf Computer 1

# STEP 1: Compute sign = rs1_31 XOR rs2_31
scoreboard players set fdiv_sign Computer 0
execute if score rs1_31 Computer matches 0 run execute if score rs2_31 Computer matches 1 run scoreboard players set fdiv_sign Computer 1
execute if score rs1_31 Computer matches 1 run execute if score rs2_31 Computer matches 0 run scoreboard players set fdiv_sign Computer 1

# STEP 2: Handle special cases
scoreboard players set fdiv_special Computer 0

# NaN propagation: rs1 NaN -> result = rs1 with bit 22 set
execute if score fdiv_rs1_is_nan Computer matches 1 run scoreboard players set fdiv_special Computer 1
execute if score fdiv_rs1_is_nan Computer matches 1 run function computer:alu/fdiv_propagate_nan_rs1

# NaN propagation: rs2 NaN (and rs1 is not NaN) -> result = rs2 with bit 22 set
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rs2_is_nan Computer matches 1 run scoreboard players set fdiv_special Computer 1
execute if score fdiv_rs2_is_nan Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run function computer:alu/fdiv_propagate_nan_rs2

# inf / inf = negative canonical NaN (0xffc00000)
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rs1_is_inf Computer matches 1 run execute if score fdiv_rs2_is_inf Computer matches 1 run scoreboard players set fdiv_special Computer 1
execute if score fdiv_rs1_is_inf Computer matches 1 run execute if score fdiv_rs2_is_inf Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run execute if score fdiv_rs2_is_nan Computer matches 0 run function computer:misc/reset_rd
execute if score fdiv_rs1_is_inf Computer matches 1 run execute if score fdiv_rs2_is_inf Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run execute if score fdiv_rs2_is_nan Computer matches 0 run function computer:misc/set_rd_exponent_to_inf
execute if score fdiv_rs1_is_inf Computer matches 1 run execute if score fdiv_rs2_is_inf Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run execute if score fdiv_rs2_is_nan Computer matches 0 run scoreboard players set rd_22 Computer 1
execute if score fdiv_rs1_is_inf Computer matches 1 run execute if score fdiv_rs2_is_inf Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run execute if score fdiv_rs2_is_nan Computer matches 0 run scoreboard players set rd_31 Computer 1

# 0 / 0 = negative canonical NaN (0xffc00000)
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rs1_is_zero Computer matches 1 run execute if score fdiv_rs2_is_zero Computer matches 1 run scoreboard players set fdiv_special Computer 1
execute if score fdiv_rs1_is_zero Computer matches 1 run execute if score fdiv_rs2_is_zero Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run execute if score fdiv_rs2_is_nan Computer matches 0 run function computer:misc/reset_rd
execute if score fdiv_rs1_is_zero Computer matches 1 run execute if score fdiv_rs2_is_zero Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run execute if score fdiv_rs2_is_nan Computer matches 0 run function computer:misc/set_rd_exponent_to_inf
execute if score fdiv_rs1_is_zero Computer matches 1 run execute if score fdiv_rs2_is_zero Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run execute if score fdiv_rs2_is_nan Computer matches 0 run scoreboard players set rd_22 Computer 1
execute if score fdiv_rs1_is_zero Computer matches 1 run execute if score fdiv_rs2_is_zero Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run execute if score fdiv_rs2_is_nan Computer matches 0 run scoreboard players set rd_31 Computer 1

# x / 0 = signed infinity (not NaN, not 0, not inf already handled)
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rs2_is_zero Computer matches 1 run scoreboard players set fdiv_special Computer 1
execute if score fdiv_rs2_is_zero Computer matches 1 run execute if score fdiv_rs1_is_zero Computer matches 0 run execute if score fdiv_rs1_is_nan Computer matches 0 run function computer:misc/reset_rd
execute if score fdiv_rs2_is_zero Computer matches 1 run execute if score fdiv_rs1_is_zero Computer matches 0 run execute if score fdiv_rs1_is_nan Computer matches 0 run function computer:misc/set_rd_exponent_to_inf
execute if score fdiv_rs2_is_zero Computer matches 1 run execute if score fdiv_rs1_is_zero Computer matches 0 run execute if score fdiv_rs1_is_nan Computer matches 0 run scoreboard players operation rd_31 Computer = fdiv_sign Computer

# inf / x = signed infinity (x is not NaN, not inf, not 0 already handled)
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rs1_is_inf Computer matches 1 run scoreboard players set fdiv_special Computer 1
execute if score fdiv_rs1_is_inf Computer matches 1 run execute if score fdiv_rs2_is_inf Computer matches 0 run execute if score fdiv_rs2_is_nan Computer matches 0 run function computer:misc/reset_rd
execute if score fdiv_rs1_is_inf Computer matches 1 run execute if score fdiv_rs2_is_inf Computer matches 0 run execute if score fdiv_rs2_is_nan Computer matches 0 run function computer:misc/set_rd_exponent_to_inf
execute if score fdiv_rs1_is_inf Computer matches 1 run execute if score fdiv_rs2_is_inf Computer matches 0 run execute if score fdiv_rs2_is_nan Computer matches 0 run scoreboard players operation rd_31 Computer = fdiv_sign Computer

# x / inf = signed zero
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rs2_is_inf Computer matches 1 run scoreboard players set fdiv_special Computer 1
execute if score fdiv_rs2_is_inf Computer matches 1 run execute if score fdiv_rs1_is_inf Computer matches 0 run execute if score fdiv_rs1_is_nan Computer matches 0 run function computer:misc/reset_rd
execute if score fdiv_rs2_is_inf Computer matches 1 run execute if score fdiv_rs1_is_inf Computer matches 0 run execute if score fdiv_rs1_is_nan Computer matches 0 run scoreboard players operation rd_31 Computer = fdiv_sign Computer

# 0 / x = signed zero (x is not 0, not NaN, not inf already handled)
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rs1_is_zero Computer matches 1 run scoreboard players set fdiv_special Computer 1
execute if score fdiv_rs1_is_zero Computer matches 1 run execute if score fdiv_rs2_is_zero Computer matches 0 run execute if score fdiv_rs2_is_nan Computer matches 0 run execute if score fdiv_rs2_is_inf Computer matches 0 run function computer:misc/reset_rd
execute if score fdiv_rs1_is_zero Computer matches 1 run execute if score fdiv_rs2_is_zero Computer matches 0 run execute if score fdiv_rs2_is_nan Computer matches 0 run execute if score fdiv_rs2_is_inf Computer matches 0 run scoreboard players operation rd_31 Computer = fdiv_sign Computer

# STEP 3: Compute exponents (needed before pre-normalization)

execute if score fdiv_special Computer matches 0 run function computer:alu/fdiv_exp_rs1_to_decimal
execute if score fdiv_special Computer matches 0 run function computer:alu/fdiv_exp_rs2_to_decimal

# STEP 4: Build mantissas with implicit bit
# Copy rs1 mantissa bits to fdiv_dividend_0..23 (with implicit bit)
execute if score fdiv_special Computer matches 0 run function computer:misc/fdiv_copy_rs1_to_dividend

# Copy rs2 mantissa bits to fdiv_divisor_0..23 (with implicit bit)
execute if score fdiv_special Computer matches 0 run function computer:misc/fdiv_copy_rs2_to_divisor

# Pre-normalize subnormal mantissas (shift left until bit 23 = 1, adjust exponent)
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rs1_exp_zero Computer matches 1 run function computer:alu/fdiv_prenorm_dividend
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rs2_exp_zero Computer matches 1 run function computer:alu/fdiv_prenorm_divisor

# STEP 5: Binary long division
# Output: 26-bit quotient in fdiv_quot_0..25, remainder for sticky
execute if score fdiv_special Computer matches 0 run function computer:alu/fdiv_divide_mantissa

# STEP 6: Compute result exponent
# exp_result = exp_a - exp_b + 127 (re-add bias)
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_exp_result Computer = fdiv_exp_a Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_exp_result Computer -= fdiv_exp_b Computer
execute if score fdiv_special Computer matches 0 run scoreboard players add fdiv_exp_result Computer 127

# STEP 6: Normalize quotient and extract mantissa/GRS
# The 26-bit quotient has the form:
# If dividend >= divisor: quot_25 = 1 -> mantissa = quot[24:2], guard=quot_1, round=quot_0
# If dividend < divisor:  quot_25 = 0, quot_24 = 1 -> exp--, mantissa = quot[23:1], guard=quot_0, round=0
# Sticky comes from remainder != 0

# Compute sticky bit from remainder
execute if score fdiv_special Computer matches 0 run scoreboard players set fdiv_sticky Computer 0
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rem_0 Computer matches 1 run scoreboard players set fdiv_sticky Computer 1
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rem_1 Computer matches 1 run scoreboard players set fdiv_sticky Computer 1
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rem_2 Computer matches 1 run scoreboard players set fdiv_sticky Computer 1
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rem_3 Computer matches 1 run scoreboard players set fdiv_sticky Computer 1
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rem_4 Computer matches 1 run scoreboard players set fdiv_sticky Computer 1
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rem_5 Computer matches 1 run scoreboard players set fdiv_sticky Computer 1
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rem_6 Computer matches 1 run scoreboard players set fdiv_sticky Computer 1
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rem_7 Computer matches 1 run scoreboard players set fdiv_sticky Computer 1
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rem_8 Computer matches 1 run scoreboard players set fdiv_sticky Computer 1
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rem_9 Computer matches 1 run scoreboard players set fdiv_sticky Computer 1
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rem_10 Computer matches 1 run scoreboard players set fdiv_sticky Computer 1
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rem_11 Computer matches 1 run scoreboard players set fdiv_sticky Computer 1
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rem_12 Computer matches 1 run scoreboard players set fdiv_sticky Computer 1
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rem_13 Computer matches 1 run scoreboard players set fdiv_sticky Computer 1
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rem_14 Computer matches 1 run scoreboard players set fdiv_sticky Computer 1
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rem_15 Computer matches 1 run scoreboard players set fdiv_sticky Computer 1
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rem_16 Computer matches 1 run scoreboard players set fdiv_sticky Computer 1
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rem_17 Computer matches 1 run scoreboard players set fdiv_sticky Computer 1
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rem_18 Computer matches 1 run scoreboard players set fdiv_sticky Computer 1
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rem_19 Computer matches 1 run scoreboard players set fdiv_sticky Computer 1
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rem_20 Computer matches 1 run scoreboard players set fdiv_sticky Computer 1
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rem_21 Computer matches 1 run scoreboard players set fdiv_sticky Computer 1
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rem_22 Computer matches 1 run scoreboard players set fdiv_sticky Computer 1
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rem_23 Computer matches 1 run scoreboard players set fdiv_sticky Computer 1
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rem_24 Computer matches 1 run scoreboard players set fdiv_sticky Computer 1

# Case 1: quot_25 = 1 -> mantissa = quot[24:2], guard = quot_1, round = quot_0
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 1 run function computer:misc/fdiv_extract_quot_case1

# Case 2: quot_25 = 0 -> exp--, mantissa = quot[23:1], guard = quot_0, round = 0
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 0 run function computer:misc/fdiv_extract_quot_case2

# STEP 7: Handle subnormal quotient (left-shift normalization)
# If quot_25=0 and quot_24=0, quotient needs further left-shift normalization
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 0 run execute if score fdiv_quot_24 Computer matches 0 run function computer:alu/fdiv_normalize_left

# STEP 8: Handle underflow BEFORE rounding
execute if score fdiv_special Computer matches 0 run execute if score fdiv_exp_result Computer matches ..0 run function computer:alu/fdiv_handle_underflow

# STEP 9: RNE Rounding
execute if score fdiv_special Computer matches 0 run scoreboard players set fdiv_do_round Computer 0
execute if score fdiv_special Computer matches 0 run execute if score fdiv_guard Computer matches 1 run execute if score fdiv_round Computer matches 1 run scoreboard players set fdiv_do_round Computer 1
execute if score fdiv_special Computer matches 0 run execute if score fdiv_guard Computer matches 1 run execute if score fdiv_sticky Computer matches 1 run scoreboard players set fdiv_do_round Computer 1
execute if score fdiv_special Computer matches 0 run execute if score fdiv_guard Computer matches 1 run execute if score fdiv_round Computer matches 0 run execute if score fdiv_sticky Computer matches 0 run execute if score rd_0 Computer matches 1 run scoreboard players set fdiv_do_round Computer 1

# Apply rounding by adding 1 to mantissa using add25
execute if score fdiv_special Computer matches 0 run execute if score fdiv_do_round Computer matches 1 run function computer:misc/copy_input_l_add25_from_rd_mantissa
execute if score fdiv_special Computer matches 0 run execute if score fdiv_do_round Computer matches 1 run function computer:misc/set_input_r_25bits_to_1
execute if score fdiv_special Computer matches 0 run execute if score fdiv_do_round Computer matches 1 run function computer:alu/add_25bits
execute if score fdiv_special Computer matches 0 run execute if score fdiv_do_round Computer matches 1 run function computer:misc/copy_input_l_add25_to_rd_mantissa
# Check if rounding caused mantissa overflow (carry into bit 23)
execute if score fdiv_special Computer matches 0 run execute if score fdiv_do_round Computer matches 1 run execute if score input_l_23 add25 matches 1 run scoreboard players add fdiv_exp_result Computer 1

# STEP 10: Handle overflow of exponent
execute if score fdiv_special Computer matches 0 run scoreboard players set fdiv_overflow Computer 0
execute if score fdiv_special Computer matches 0 run execute if score fdiv_exp_result Computer matches 255.. run scoreboard players set fdiv_overflow Computer 1
execute if score fdiv_special Computer matches 0 run execute if score fdiv_overflow Computer matches 1 run function computer:misc/reset_rd
execute if score fdiv_special Computer matches 0 run execute if score fdiv_overflow Computer matches 1 run function computer:misc/set_rd_exponent_to_inf
execute if score fdiv_special Computer matches 0 run execute if score fdiv_overflow Computer matches 1 run scoreboard players operation rd_31 Computer = fdiv_sign Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_overflow Computer matches 1 run scoreboard players set fdiv_special Computer 1

# STEP 11: Set exponent in rd (convert decimal back to bits)
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_tmp Computer = fdiv_exp_result Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation rd_23 Computer = fdiv_tmp Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation rd_23 Computer %= 2 FixedValue
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_tmp Computer /= 2 FixedValue
execute if score fdiv_special Computer matches 0 run scoreboard players operation rd_24 Computer = fdiv_tmp Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation rd_24 Computer %= 2 FixedValue
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_tmp Computer /= 2 FixedValue
execute if score fdiv_special Computer matches 0 run scoreboard players operation rd_25 Computer = fdiv_tmp Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation rd_25 Computer %= 2 FixedValue
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_tmp Computer /= 2 FixedValue
execute if score fdiv_special Computer matches 0 run scoreboard players operation rd_26 Computer = fdiv_tmp Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation rd_26 Computer %= 2 FixedValue
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_tmp Computer /= 2 FixedValue
execute if score fdiv_special Computer matches 0 run scoreboard players operation rd_27 Computer = fdiv_tmp Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation rd_27 Computer %= 2 FixedValue
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_tmp Computer /= 2 FixedValue
execute if score fdiv_special Computer matches 0 run scoreboard players operation rd_28 Computer = fdiv_tmp Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation rd_28 Computer %= 2 FixedValue
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_tmp Computer /= 2 FixedValue
execute if score fdiv_special Computer matches 0 run scoreboard players operation rd_29 Computer = fdiv_tmp Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation rd_29 Computer %= 2 FixedValue
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_tmp Computer /= 2 FixedValue
execute if score fdiv_special Computer matches 0 run scoreboard players operation rd_30 Computer = fdiv_tmp Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation rd_30 Computer %= 2 FixedValue

# Set sign
execute if score fdiv_special Computer matches 0 run scoreboard players operation rd_31 Computer = fdiv_sign Computer

function computer:misc/update_rd_7_11_f
