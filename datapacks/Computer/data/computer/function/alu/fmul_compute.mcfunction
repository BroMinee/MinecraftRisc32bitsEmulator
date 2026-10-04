# fmul.s rd, rs1, rs2 : rd = rs1 * rs2 (IEEE 754 single-precision)

# STEP 0: Detect special values

# Check if rs1 exponent is all zeros (subnormal or zero)
scoreboard players set fmul_rs1_exp_zero Computer 1
execute unless score rs1_30 Computer matches 0 run scoreboard players set fmul_rs1_exp_zero Computer 0
execute if score fmul_rs1_exp_zero Computer matches 1 run execute unless score rs1_29 Computer matches 0 run scoreboard players set fmul_rs1_exp_zero Computer 0
execute if score fmul_rs1_exp_zero Computer matches 1 run execute unless score rs1_28 Computer matches 0 run scoreboard players set fmul_rs1_exp_zero Computer 0
execute if score fmul_rs1_exp_zero Computer matches 1 run execute unless score rs1_27 Computer matches 0 run scoreboard players set fmul_rs1_exp_zero Computer 0
execute if score fmul_rs1_exp_zero Computer matches 1 run execute unless score rs1_26 Computer matches 0 run scoreboard players set fmul_rs1_exp_zero Computer 0
execute if score fmul_rs1_exp_zero Computer matches 1 run execute unless score rs1_25 Computer matches 0 run scoreboard players set fmul_rs1_exp_zero Computer 0
execute if score fmul_rs1_exp_zero Computer matches 1 run execute unless score rs1_24 Computer matches 0 run scoreboard players set fmul_rs1_exp_zero Computer 0
execute if score fmul_rs1_exp_zero Computer matches 1 run execute unless score rs1_23 Computer matches 0 run scoreboard players set fmul_rs1_exp_zero Computer 0

# Check if rs1 exponent is all ones (inf or NaN)
scoreboard players set fmul_rs1_exp_ff Computer 1
execute unless score rs1_30 Computer matches 1 run scoreboard players set fmul_rs1_exp_ff Computer 0
execute if score fmul_rs1_exp_ff Computer matches 1 run execute unless score rs1_29 Computer matches 1 run scoreboard players set fmul_rs1_exp_ff Computer 0
execute if score fmul_rs1_exp_ff Computer matches 1 run execute unless score rs1_28 Computer matches 1 run scoreboard players set fmul_rs1_exp_ff Computer 0
execute if score fmul_rs1_exp_ff Computer matches 1 run execute unless score rs1_27 Computer matches 1 run scoreboard players set fmul_rs1_exp_ff Computer 0
execute if score fmul_rs1_exp_ff Computer matches 1 run execute unless score rs1_26 Computer matches 1 run scoreboard players set fmul_rs1_exp_ff Computer 0
execute if score fmul_rs1_exp_ff Computer matches 1 run execute unless score rs1_25 Computer matches 1 run scoreboard players set fmul_rs1_exp_ff Computer 0
execute if score fmul_rs1_exp_ff Computer matches 1 run execute unless score rs1_24 Computer matches 1 run scoreboard players set fmul_rs1_exp_ff Computer 0
execute if score fmul_rs1_exp_ff Computer matches 1 run execute unless score rs1_23 Computer matches 1 run scoreboard players set fmul_rs1_exp_ff Computer 0

# Check if rs2 exponent is all zeros
scoreboard players set fmul_rs2_exp_zero Computer 1
execute unless score rs2_30 Computer matches 0 run scoreboard players set fmul_rs2_exp_zero Computer 0
execute if score fmul_rs2_exp_zero Computer matches 1 run execute unless score rs2_29 Computer matches 0 run scoreboard players set fmul_rs2_exp_zero Computer 0
execute if score fmul_rs2_exp_zero Computer matches 1 run execute unless score rs2_28 Computer matches 0 run scoreboard players set fmul_rs2_exp_zero Computer 0
execute if score fmul_rs2_exp_zero Computer matches 1 run execute unless score rs2_27 Computer matches 0 run scoreboard players set fmul_rs2_exp_zero Computer 0
execute if score fmul_rs2_exp_zero Computer matches 1 run execute unless score rs2_26 Computer matches 0 run scoreboard players set fmul_rs2_exp_zero Computer 0
execute if score fmul_rs2_exp_zero Computer matches 1 run execute unless score rs2_25 Computer matches 0 run scoreboard players set fmul_rs2_exp_zero Computer 0
execute if score fmul_rs2_exp_zero Computer matches 1 run execute unless score rs2_24 Computer matches 0 run scoreboard players set fmul_rs2_exp_zero Computer 0
execute if score fmul_rs2_exp_zero Computer matches 1 run execute unless score rs2_23 Computer matches 0 run scoreboard players set fmul_rs2_exp_zero Computer 0

# Check if rs2 exponent is all ones
scoreboard players set fmul_rs2_exp_ff Computer 1
execute unless score rs2_30 Computer matches 1 run scoreboard players set fmul_rs2_exp_ff Computer 0
execute if score fmul_rs2_exp_ff Computer matches 1 run execute unless score rs2_29 Computer matches 1 run scoreboard players set fmul_rs2_exp_ff Computer 0
execute if score fmul_rs2_exp_ff Computer matches 1 run execute unless score rs2_28 Computer matches 1 run scoreboard players set fmul_rs2_exp_ff Computer 0
execute if score fmul_rs2_exp_ff Computer matches 1 run execute unless score rs2_27 Computer matches 1 run scoreboard players set fmul_rs2_exp_ff Computer 0
execute if score fmul_rs2_exp_ff Computer matches 1 run execute unless score rs2_26 Computer matches 1 run scoreboard players set fmul_rs2_exp_ff Computer 0
execute if score fmul_rs2_exp_ff Computer matches 1 run execute unless score rs2_25 Computer matches 1 run scoreboard players set fmul_rs2_exp_ff Computer 0
execute if score fmul_rs2_exp_ff Computer matches 1 run execute unless score rs2_24 Computer matches 1 run scoreboard players set fmul_rs2_exp_ff Computer 0
execute if score fmul_rs2_exp_ff Computer matches 1 run execute unless score rs2_23 Computer matches 1 run scoreboard players set fmul_rs2_exp_ff Computer 0

# Check if rs1 mantissa is all zeros
scoreboard players set fmul_rs1_man_zero Computer 1
execute unless score rs1_22 Computer matches 0 run scoreboard players set fmul_rs1_man_zero Computer 0
execute if score fmul_rs1_man_zero Computer matches 1 run execute unless score rs1_21 Computer matches 0 run scoreboard players set fmul_rs1_man_zero Computer 0
execute if score fmul_rs1_man_zero Computer matches 1 run execute unless score rs1_20 Computer matches 0 run scoreboard players set fmul_rs1_man_zero Computer 0
execute if score fmul_rs1_man_zero Computer matches 1 run execute unless score rs1_19 Computer matches 0 run scoreboard players set fmul_rs1_man_zero Computer 0
execute if score fmul_rs1_man_zero Computer matches 1 run execute unless score rs1_18 Computer matches 0 run scoreboard players set fmul_rs1_man_zero Computer 0
execute if score fmul_rs1_man_zero Computer matches 1 run execute unless score rs1_17 Computer matches 0 run scoreboard players set fmul_rs1_man_zero Computer 0
execute if score fmul_rs1_man_zero Computer matches 1 run execute unless score rs1_16 Computer matches 0 run scoreboard players set fmul_rs1_man_zero Computer 0
execute if score fmul_rs1_man_zero Computer matches 1 run execute unless score rs1_15 Computer matches 0 run scoreboard players set fmul_rs1_man_zero Computer 0
execute if score fmul_rs1_man_zero Computer matches 1 run execute unless score rs1_14 Computer matches 0 run scoreboard players set fmul_rs1_man_zero Computer 0
execute if score fmul_rs1_man_zero Computer matches 1 run execute unless score rs1_13 Computer matches 0 run scoreboard players set fmul_rs1_man_zero Computer 0
execute if score fmul_rs1_man_zero Computer matches 1 run execute unless score rs1_12 Computer matches 0 run scoreboard players set fmul_rs1_man_zero Computer 0
execute if score fmul_rs1_man_zero Computer matches 1 run execute unless score rs1_11 Computer matches 0 run scoreboard players set fmul_rs1_man_zero Computer 0
execute if score fmul_rs1_man_zero Computer matches 1 run execute unless score rs1_10 Computer matches 0 run scoreboard players set fmul_rs1_man_zero Computer 0
execute if score fmul_rs1_man_zero Computer matches 1 run execute unless score rs1_9 Computer matches 0 run scoreboard players set fmul_rs1_man_zero Computer 0
execute if score fmul_rs1_man_zero Computer matches 1 run execute unless score rs1_8 Computer matches 0 run scoreboard players set fmul_rs1_man_zero Computer 0
execute if score fmul_rs1_man_zero Computer matches 1 run execute unless score rs1_7 Computer matches 0 run scoreboard players set fmul_rs1_man_zero Computer 0
execute if score fmul_rs1_man_zero Computer matches 1 run execute unless score rs1_6 Computer matches 0 run scoreboard players set fmul_rs1_man_zero Computer 0
execute if score fmul_rs1_man_zero Computer matches 1 run execute unless score rs1_5 Computer matches 0 run scoreboard players set fmul_rs1_man_zero Computer 0
execute if score fmul_rs1_man_zero Computer matches 1 run execute unless score rs1_4 Computer matches 0 run scoreboard players set fmul_rs1_man_zero Computer 0
execute if score fmul_rs1_man_zero Computer matches 1 run execute unless score rs1_3 Computer matches 0 run scoreboard players set fmul_rs1_man_zero Computer 0
execute if score fmul_rs1_man_zero Computer matches 1 run execute unless score rs1_2 Computer matches 0 run scoreboard players set fmul_rs1_man_zero Computer 0
execute if score fmul_rs1_man_zero Computer matches 1 run execute unless score rs1_1 Computer matches 0 run scoreboard players set fmul_rs1_man_zero Computer 0
execute if score fmul_rs1_man_zero Computer matches 1 run execute unless score rs1_0 Computer matches 0 run scoreboard players set fmul_rs1_man_zero Computer 0

# Check if rs2 mantissa is all zeros
scoreboard players set fmul_rs2_man_zero Computer 1
execute unless score rs2_22 Computer matches 0 run scoreboard players set fmul_rs2_man_zero Computer 0
execute if score fmul_rs2_man_zero Computer matches 1 run execute unless score rs2_21 Computer matches 0 run scoreboard players set fmul_rs2_man_zero Computer 0
execute if score fmul_rs2_man_zero Computer matches 1 run execute unless score rs2_20 Computer matches 0 run scoreboard players set fmul_rs2_man_zero Computer 0
execute if score fmul_rs2_man_zero Computer matches 1 run execute unless score rs2_19 Computer matches 0 run scoreboard players set fmul_rs2_man_zero Computer 0
execute if score fmul_rs2_man_zero Computer matches 1 run execute unless score rs2_18 Computer matches 0 run scoreboard players set fmul_rs2_man_zero Computer 0
execute if score fmul_rs2_man_zero Computer matches 1 run execute unless score rs2_17 Computer matches 0 run scoreboard players set fmul_rs2_man_zero Computer 0
execute if score fmul_rs2_man_zero Computer matches 1 run execute unless score rs2_16 Computer matches 0 run scoreboard players set fmul_rs2_man_zero Computer 0
execute if score fmul_rs2_man_zero Computer matches 1 run execute unless score rs2_15 Computer matches 0 run scoreboard players set fmul_rs2_man_zero Computer 0
execute if score fmul_rs2_man_zero Computer matches 1 run execute unless score rs2_14 Computer matches 0 run scoreboard players set fmul_rs2_man_zero Computer 0
execute if score fmul_rs2_man_zero Computer matches 1 run execute unless score rs2_13 Computer matches 0 run scoreboard players set fmul_rs2_man_zero Computer 0
execute if score fmul_rs2_man_zero Computer matches 1 run execute unless score rs2_12 Computer matches 0 run scoreboard players set fmul_rs2_man_zero Computer 0
execute if score fmul_rs2_man_zero Computer matches 1 run execute unless score rs2_11 Computer matches 0 run scoreboard players set fmul_rs2_man_zero Computer 0
execute if score fmul_rs2_man_zero Computer matches 1 run execute unless score rs2_10 Computer matches 0 run scoreboard players set fmul_rs2_man_zero Computer 0
execute if score fmul_rs2_man_zero Computer matches 1 run execute unless score rs2_9 Computer matches 0 run scoreboard players set fmul_rs2_man_zero Computer 0
execute if score fmul_rs2_man_zero Computer matches 1 run execute unless score rs2_8 Computer matches 0 run scoreboard players set fmul_rs2_man_zero Computer 0
execute if score fmul_rs2_man_zero Computer matches 1 run execute unless score rs2_7 Computer matches 0 run scoreboard players set fmul_rs2_man_zero Computer 0
execute if score fmul_rs2_man_zero Computer matches 1 run execute unless score rs2_6 Computer matches 0 run scoreboard players set fmul_rs2_man_zero Computer 0
execute if score fmul_rs2_man_zero Computer matches 1 run execute unless score rs2_5 Computer matches 0 run scoreboard players set fmul_rs2_man_zero Computer 0
execute if score fmul_rs2_man_zero Computer matches 1 run execute unless score rs2_4 Computer matches 0 run scoreboard players set fmul_rs2_man_zero Computer 0
execute if score fmul_rs2_man_zero Computer matches 1 run execute unless score rs2_3 Computer matches 0 run scoreboard players set fmul_rs2_man_zero Computer 0
execute if score fmul_rs2_man_zero Computer matches 1 run execute unless score rs2_2 Computer matches 0 run scoreboard players set fmul_rs2_man_zero Computer 0
execute if score fmul_rs2_man_zero Computer matches 1 run execute unless score rs2_1 Computer matches 0 run scoreboard players set fmul_rs2_man_zero Computer 0
execute if score fmul_rs2_man_zero Computer matches 1 run execute unless score rs2_0 Computer matches 0 run scoreboard players set fmul_rs2_man_zero Computer 0

# rs1 is zero if exp=0 and mantissa=0
scoreboard players set fmul_rs1_is_zero Computer 0
execute if score fmul_rs1_exp_zero Computer matches 1 run execute if score fmul_rs1_man_zero Computer matches 1 run scoreboard players set fmul_rs1_is_zero Computer 1

# rs2 is zero if exp=0 and mantissa=0
scoreboard players set fmul_rs2_is_zero Computer 0
execute if score fmul_rs2_exp_zero Computer matches 1 run execute if score fmul_rs2_man_zero Computer matches 1 run scoreboard players set fmul_rs2_is_zero Computer 1

# rs1 is NaN if exp=FF and mantissa!=0
scoreboard players set fmul_rs1_is_nan Computer 0
execute if score fmul_rs1_exp_ff Computer matches 1 run execute if score fmul_rs1_man_zero Computer matches 0 run scoreboard players set fmul_rs1_is_nan Computer 1

# rs2 is NaN if exp=FF and mantissa!=0
scoreboard players set fmul_rs2_is_nan Computer 0
execute if score fmul_rs2_exp_ff Computer matches 1 run execute if score fmul_rs2_man_zero Computer matches 0 run scoreboard players set fmul_rs2_is_nan Computer 1

# rs1 is inf if exp=FF and mantissa=0
scoreboard players set fmul_rs1_is_inf Computer 0
execute if score fmul_rs1_exp_ff Computer matches 1 run execute if score fmul_rs1_man_zero Computer matches 1 run scoreboard players set fmul_rs1_is_inf Computer 1

# rs2 is inf if exp=FF and mantissa=0
scoreboard players set fmul_rs2_is_inf Computer 0
execute if score fmul_rs2_exp_ff Computer matches 1 run execute if score fmul_rs2_man_zero Computer matches 1 run scoreboard players set fmul_rs2_is_inf Computer 1

# STEP 1: Compute sign = rs1_31 XOR rs2_31
scoreboard players set fmul_sign Computer 0
execute if score rs1_31 Computer matches 0 run execute if score rs2_31 Computer matches 1 run scoreboard players set fmul_sign Computer 1
execute if score rs1_31 Computer matches 1 run execute if score rs2_31 Computer matches 0 run scoreboard players set fmul_sign Computer 1

# STEP 2: Handle special cases
# fmul_special = 1 means we skip normal computation
scoreboard players set fmul_special Computer 0

# Case: either operand is NaN -> result is canonical qNaN (0x7fc00000)
# BUT: if it's a signaling NaN, we quiet it (set bit 22) and preserve payload
# For simplicity and correctness: if either is sNaN, result = input with bit22 set
# If either is qNaN, result = that qNaN
# Priority: rs1 NaN first, then rs2 NaN

# If rs1 is NaN: result = rs1 with bit 22 set (quieting sNaN, preserving qNaN)
execute if score fmul_rs1_is_nan Computer matches 1 run scoreboard players set fmul_special Computer 1
execute if score fmul_rs1_is_nan Computer matches 1 run function computer:misc/reset_rd
execute if score fmul_rs1_is_nan Computer matches 1 run function computer:misc/set_rd_exponent_to_inf
execute if score fmul_rs1_is_nan Computer matches 1 run scoreboard players set rd_31 Computer 0
execute if score fmul_rs1_is_nan Computer matches 1 run scoreboard players operation rd_22 Computer = rs1_22 Computer
execute if score fmul_rs1_is_nan Computer matches 1 run scoreboard players operation rd_21 Computer = rs1_21 Computer
execute if score fmul_rs1_is_nan Computer matches 1 run scoreboard players operation rd_20 Computer = rs1_20 Computer
execute if score fmul_rs1_is_nan Computer matches 1 run scoreboard players operation rd_19 Computer = rs1_19 Computer
execute if score fmul_rs1_is_nan Computer matches 1 run scoreboard players operation rd_18 Computer = rs1_18 Computer
execute if score fmul_rs1_is_nan Computer matches 1 run scoreboard players operation rd_17 Computer = rs1_17 Computer
execute if score fmul_rs1_is_nan Computer matches 1 run scoreboard players operation rd_16 Computer = rs1_16 Computer
execute if score fmul_rs1_is_nan Computer matches 1 run scoreboard players operation rd_15 Computer = rs1_15 Computer
execute if score fmul_rs1_is_nan Computer matches 1 run scoreboard players operation rd_14 Computer = rs1_14 Computer
execute if score fmul_rs1_is_nan Computer matches 1 run scoreboard players operation rd_13 Computer = rs1_13 Computer
execute if score fmul_rs1_is_nan Computer matches 1 run scoreboard players operation rd_12 Computer = rs1_12 Computer
execute if score fmul_rs1_is_nan Computer matches 1 run scoreboard players operation rd_11 Computer = rs1_11 Computer
execute if score fmul_rs1_is_nan Computer matches 1 run scoreboard players operation rd_10 Computer = rs1_10 Computer
execute if score fmul_rs1_is_nan Computer matches 1 run scoreboard players operation rd_9 Computer = rs1_9 Computer
execute if score fmul_rs1_is_nan Computer matches 1 run scoreboard players operation rd_8 Computer = rs1_8 Computer
execute if score fmul_rs1_is_nan Computer matches 1 run scoreboard players operation rd_7 Computer = rs1_7 Computer
execute if score fmul_rs1_is_nan Computer matches 1 run scoreboard players operation rd_6 Computer = rs1_6 Computer
execute if score fmul_rs1_is_nan Computer matches 1 run scoreboard players operation rd_5 Computer = rs1_5 Computer
execute if score fmul_rs1_is_nan Computer matches 1 run scoreboard players operation rd_4 Computer = rs1_4 Computer
execute if score fmul_rs1_is_nan Computer matches 1 run scoreboard players operation rd_3 Computer = rs1_3 Computer
execute if score fmul_rs1_is_nan Computer matches 1 run scoreboard players operation rd_2 Computer = rs1_2 Computer
execute if score fmul_rs1_is_nan Computer matches 1 run scoreboard players operation rd_1 Computer = rs1_1 Computer
execute if score fmul_rs1_is_nan Computer matches 1 run scoreboard players operation rd_0 Computer = rs1_0 Computer
execute if score fmul_rs1_is_nan Computer matches 1 run scoreboard players set rd_22 Computer 1

# If rs2 is NaN (and rs1 is not NaN): result = rs2 with bit 22 set
execute if score fmul_special Computer matches 0 run execute if score fmul_rs2_is_nan Computer matches 1 run scoreboard players set fmul_special Computer 1
execute if score fmul_rs2_is_nan Computer matches 1 run execute if score fmul_rs1_is_nan Computer matches 0 run function computer:misc/reset_rd
execute if score fmul_rs2_is_nan Computer matches 1 run execute if score fmul_rs1_is_nan Computer matches 0 run function computer:misc/set_rd_exponent_to_inf
execute if score fmul_rs2_is_nan Computer matches 1 run execute if score fmul_rs1_is_nan Computer matches 0 run scoreboard players set rd_31 Computer 0
execute if score fmul_rs2_is_nan Computer matches 1 run execute if score fmul_rs1_is_nan Computer matches 0 run scoreboard players operation rd_22 Computer = rs2_22 Computer
execute if score fmul_rs2_is_nan Computer matches 1 run execute if score fmul_rs1_is_nan Computer matches 0 run scoreboard players operation rd_21 Computer = rs2_21 Computer
execute if score fmul_rs2_is_nan Computer matches 1 run execute if score fmul_rs1_is_nan Computer matches 0 run scoreboard players operation rd_20 Computer = rs2_20 Computer
execute if score fmul_rs2_is_nan Computer matches 1 run execute if score fmul_rs1_is_nan Computer matches 0 run scoreboard players operation rd_19 Computer = rs2_19 Computer
execute if score fmul_rs2_is_nan Computer matches 1 run execute if score fmul_rs1_is_nan Computer matches 0 run scoreboard players operation rd_18 Computer = rs2_18 Computer
execute if score fmul_rs2_is_nan Computer matches 1 run execute if score fmul_rs1_is_nan Computer matches 0 run scoreboard players operation rd_17 Computer = rs2_17 Computer
execute if score fmul_rs2_is_nan Computer matches 1 run execute if score fmul_rs1_is_nan Computer matches 0 run scoreboard players operation rd_16 Computer = rs2_16 Computer
execute if score fmul_rs2_is_nan Computer matches 1 run execute if score fmul_rs1_is_nan Computer matches 0 run scoreboard players operation rd_15 Computer = rs2_15 Computer
execute if score fmul_rs2_is_nan Computer matches 1 run execute if score fmul_rs1_is_nan Computer matches 0 run scoreboard players operation rd_14 Computer = rs2_14 Computer
execute if score fmul_rs2_is_nan Computer matches 1 run execute if score fmul_rs1_is_nan Computer matches 0 run scoreboard players operation rd_13 Computer = rs2_13 Computer
execute if score fmul_rs2_is_nan Computer matches 1 run execute if score fmul_rs1_is_nan Computer matches 0 run scoreboard players operation rd_12 Computer = rs2_12 Computer
execute if score fmul_rs2_is_nan Computer matches 1 run execute if score fmul_rs1_is_nan Computer matches 0 run scoreboard players operation rd_11 Computer = rs2_11 Computer
execute if score fmul_rs2_is_nan Computer matches 1 run execute if score fmul_rs1_is_nan Computer matches 0 run scoreboard players operation rd_10 Computer = rs2_10 Computer
execute if score fmul_rs2_is_nan Computer matches 1 run execute if score fmul_rs1_is_nan Computer matches 0 run scoreboard players operation rd_9 Computer = rs2_9 Computer
execute if score fmul_rs2_is_nan Computer matches 1 run execute if score fmul_rs1_is_nan Computer matches 0 run scoreboard players operation rd_8 Computer = rs2_8 Computer
execute if score fmul_rs2_is_nan Computer matches 1 run execute if score fmul_rs1_is_nan Computer matches 0 run scoreboard players operation rd_7 Computer = rs2_7 Computer
execute if score fmul_rs2_is_nan Computer matches 1 run execute if score fmul_rs1_is_nan Computer matches 0 run scoreboard players operation rd_6 Computer = rs2_6 Computer
execute if score fmul_rs2_is_nan Computer matches 1 run execute if score fmul_rs1_is_nan Computer matches 0 run scoreboard players operation rd_5 Computer = rs2_5 Computer
execute if score fmul_rs2_is_nan Computer matches 1 run execute if score fmul_rs1_is_nan Computer matches 0 run scoreboard players operation rd_4 Computer = rs2_4 Computer
execute if score fmul_rs2_is_nan Computer matches 1 run execute if score fmul_rs1_is_nan Computer matches 0 run scoreboard players operation rd_3 Computer = rs2_3 Computer
execute if score fmul_rs2_is_nan Computer matches 1 run execute if score fmul_rs1_is_nan Computer matches 0 run scoreboard players operation rd_2 Computer = rs2_2 Computer
execute if score fmul_rs2_is_nan Computer matches 1 run execute if score fmul_rs1_is_nan Computer matches 0 run scoreboard players operation rd_1 Computer = rs2_1 Computer
execute if score fmul_rs2_is_nan Computer matches 1 run execute if score fmul_rs1_is_nan Computer matches 0 run scoreboard players operation rd_0 Computer = rs2_0 Computer
execute if score fmul_rs2_is_nan Computer matches 1 run execute if score fmul_rs1_is_nan Computer matches 0 run scoreboard players set rd_22 Computer 1

# Case: inf * 0 = qNaN (0xffc00000 - negative canonical NaN per RISC-V implementation)
execute if score fmul_special Computer matches 0 run execute if score fmul_rs1_is_inf Computer matches 1 run execute if score fmul_rs2_is_zero Computer matches 1 run scoreboard players set fmul_special Computer 1
execute if score fmul_rs1_is_inf Computer matches 1 run execute if score fmul_rs2_is_zero Computer matches 1 run function computer:misc/reset_rd
execute if score fmul_rs1_is_inf Computer matches 1 run execute if score fmul_rs2_is_zero Computer matches 1 run function computer:misc/set_rd_exponent_to_inf
execute if score fmul_rs1_is_inf Computer matches 1 run execute if score fmul_rs2_is_zero Computer matches 1 run scoreboard players set rd_22 Computer 1
execute if score fmul_rs1_is_inf Computer matches 1 run execute if score fmul_rs2_is_zero Computer matches 1 run scoreboard players set rd_31 Computer 1

# Case: 0 * inf = qNaN
execute if score fmul_special Computer matches 0 run execute if score fmul_rs2_is_inf Computer matches 1 run execute if score fmul_rs1_is_zero Computer matches 1 run scoreboard players set fmul_special Computer 1
execute if score fmul_rs2_is_inf Computer matches 1 run execute if score fmul_rs1_is_zero Computer matches 1 run function computer:misc/reset_rd
execute if score fmul_rs2_is_inf Computer matches 1 run execute if score fmul_rs1_is_zero Computer matches 1 run function computer:misc/set_rd_exponent_to_inf
execute if score fmul_rs2_is_inf Computer matches 1 run execute if score fmul_rs1_is_zero Computer matches 1 run scoreboard players set rd_22 Computer 1
execute if score fmul_rs2_is_inf Computer matches 1 run execute if score fmul_rs1_is_zero Computer matches 1 run scoreboard players set rd_31 Computer 1

# Case: inf * anything (not 0, not NaN) = inf with correct sign
execute if score fmul_special Computer matches 0 run execute if score fmul_rs1_is_inf Computer matches 1 run scoreboard players set fmul_special Computer 1
execute if score fmul_rs1_is_inf Computer matches 1 run execute if score fmul_rs2_is_zero Computer matches 0 run execute if score fmul_rs2_is_nan Computer matches 0 run function computer:misc/reset_rd
execute if score fmul_rs1_is_inf Computer matches 1 run execute if score fmul_rs2_is_zero Computer matches 0 run execute if score fmul_rs2_is_nan Computer matches 0 run function computer:misc/set_rd_exponent_to_inf
execute if score fmul_rs1_is_inf Computer matches 1 run execute if score fmul_rs2_is_zero Computer matches 0 run execute if score fmul_rs2_is_nan Computer matches 0 run scoreboard players operation rd_31 Computer = fmul_sign Computer

# Case: anything (not 0, not NaN) * inf = inf with correct sign
execute if score fmul_special Computer matches 0 run execute if score fmul_rs2_is_inf Computer matches 1 run scoreboard players set fmul_special Computer 1
execute if score fmul_rs2_is_inf Computer matches 1 run execute if score fmul_rs1_is_zero Computer matches 0 run execute if score fmul_rs1_is_nan Computer matches 0 run function computer:misc/reset_rd
execute if score fmul_rs2_is_inf Computer matches 1 run execute if score fmul_rs1_is_zero Computer matches 0 run execute if score fmul_rs1_is_nan Computer matches 0 run function computer:misc/set_rd_exponent_to_inf
execute if score fmul_rs2_is_inf Computer matches 1 run execute if score fmul_rs1_is_zero Computer matches 0 run execute if score fmul_rs1_is_nan Computer matches 0 run scoreboard players operation rd_31 Computer = fmul_sign Computer

# Case: either operand is zero (and not inf*0 which was handled above) -> result is signed zero
execute if score fmul_special Computer matches 0 run execute if score fmul_rs1_is_zero Computer matches 1 run scoreboard players set fmul_special Computer 1
execute if score fmul_rs1_is_zero Computer matches 1 run execute if score fmul_rs2_is_inf Computer matches 0 run execute if score fmul_rs2_is_nan Computer matches 0 run function computer:misc/reset_rd
execute if score fmul_rs1_is_zero Computer matches 1 run execute if score fmul_rs2_is_inf Computer matches 0 run execute if score fmul_rs2_is_nan Computer matches 0 run scoreboard players operation rd_31 Computer = fmul_sign Computer

execute if score fmul_special Computer matches 0 run execute if score fmul_rs2_is_zero Computer matches 1 run scoreboard players set fmul_special Computer 1
execute if score fmul_rs2_is_zero Computer matches 1 run execute if score fmul_rs1_is_inf Computer matches 0 run execute if score fmul_rs1_is_nan Computer matches 0 run function computer:misc/reset_rd
execute if score fmul_rs2_is_zero Computer matches 1 run execute if score fmul_rs1_is_inf Computer matches 0 run execute if score fmul_rs1_is_nan Computer matches 0 run scoreboard players operation rd_31 Computer = fmul_sign Computer

# STEP 3: Normal multiplication (only if fmul_special == 0)

# Build 24-bit mantissas with implicit leading 1 (for normals)
# For subnormals (exp=0), no implicit 1
# fmul_a = rs1 mantissa (24 bits: bit23=implicit, bits 0-22=mantissa)
# fmul_b = rs2 mantissa (24 bits: bit23=implicit, bits 0-22=mantissa)

# Copy rs1 mantissa bits to fmul_a_0..22
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_a_0 Computer = rs1_0 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_a_1 Computer = rs1_1 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_a_2 Computer = rs1_2 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_a_3 Computer = rs1_3 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_a_4 Computer = rs1_4 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_a_5 Computer = rs1_5 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_a_6 Computer = rs1_6 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_a_7 Computer = rs1_7 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_a_8 Computer = rs1_8 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_a_9 Computer = rs1_9 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_a_10 Computer = rs1_10 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_a_11 Computer = rs1_11 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_a_12 Computer = rs1_12 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_a_13 Computer = rs1_13 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_a_14 Computer = rs1_14 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_a_15 Computer = rs1_15 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_a_16 Computer = rs1_16 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_a_17 Computer = rs1_17 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_a_18 Computer = rs1_18 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_a_19 Computer = rs1_19 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_a_20 Computer = rs1_20 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_a_21 Computer = rs1_21 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_a_22 Computer = rs1_22 Computer
# Implicit leading 1 for normals
execute if score fmul_special Computer matches 0 run scoreboard players set fmul_a_23 Computer 0
execute if score fmul_special Computer matches 0 run execute if score fmul_rs1_exp_zero Computer matches 0 run scoreboard players set fmul_a_23 Computer 1

# Copy rs2 mantissa bits to fmul_b_0..22
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_b_0 Computer = rs2_0 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_b_1 Computer = rs2_1 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_b_2 Computer = rs2_2 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_b_3 Computer = rs2_3 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_b_4 Computer = rs2_4 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_b_5 Computer = rs2_5 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_b_6 Computer = rs2_6 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_b_7 Computer = rs2_7 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_b_8 Computer = rs2_8 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_b_9 Computer = rs2_9 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_b_10 Computer = rs2_10 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_b_11 Computer = rs2_11 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_b_12 Computer = rs2_12 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_b_13 Computer = rs2_13 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_b_14 Computer = rs2_14 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_b_15 Computer = rs2_15 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_b_16 Computer = rs2_16 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_b_17 Computer = rs2_17 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_b_18 Computer = rs2_18 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_b_19 Computer = rs2_19 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_b_20 Computer = rs2_20 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_b_21 Computer = rs2_21 Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_b_22 Computer = rs2_22 Computer
# Implicit leading 1 for normals
execute if score fmul_special Computer matches 0 run scoreboard players set fmul_b_23 Computer 0
execute if score fmul_special Computer matches 0 run execute if score fmul_rs2_exp_zero Computer matches 0 run scoreboard players set fmul_b_23 Computer 1

# STEP 4: 24x24 bit binary multiplication using shift-and-add
# Result: 48-bit product in fmul_prod_0..47
execute if score fmul_special Computer matches 0 run function computer:alu/fmul_multiply_mantissa

# STEP 7: Compute exponent
# exp_sum = rs1_exp + rs2_exp - 127 (bias)
# For subnormals, effective exponent is 1 (not 0)

# Convert rs1 exponent to decimal
execute if score fmul_special Computer matches 0 run scoreboard players set fmul_exp_a Computer 0
execute if score fmul_special Computer matches 0 run execute if score rs1_23 Computer matches 1 run scoreboard players add fmul_exp_a Computer 1
execute if score fmul_special Computer matches 0 run execute if score rs1_24 Computer matches 1 run scoreboard players add fmul_exp_a Computer 2
execute if score fmul_special Computer matches 0 run execute if score rs1_25 Computer matches 1 run scoreboard players add fmul_exp_a Computer 4
execute if score fmul_special Computer matches 0 run execute if score rs1_26 Computer matches 1 run scoreboard players add fmul_exp_a Computer 8
execute if score fmul_special Computer matches 0 run execute if score rs1_27 Computer matches 1 run scoreboard players add fmul_exp_a Computer 16
execute if score fmul_special Computer matches 0 run execute if score rs1_28 Computer matches 1 run scoreboard players add fmul_exp_a Computer 32
execute if score fmul_special Computer matches 0 run execute if score rs1_29 Computer matches 1 run scoreboard players add fmul_exp_a Computer 64
execute if score fmul_special Computer matches 0 run execute if score rs1_30 Computer matches 1 run scoreboard players add fmul_exp_a Computer 128
# For subnormals, use 1 instead of 0
execute if score fmul_special Computer matches 0 run execute if score fmul_rs1_exp_zero Computer matches 1 run scoreboard players set fmul_exp_a Computer 1

# Convert rs2 exponent to decimal
execute if score fmul_special Computer matches 0 run scoreboard players set fmul_exp_b Computer 0
execute if score fmul_special Computer matches 0 run execute if score rs2_23 Computer matches 1 run scoreboard players add fmul_exp_b Computer 1
execute if score fmul_special Computer matches 0 run execute if score rs2_24 Computer matches 1 run scoreboard players add fmul_exp_b Computer 2
execute if score fmul_special Computer matches 0 run execute if score rs2_25 Computer matches 1 run scoreboard players add fmul_exp_b Computer 4
execute if score fmul_special Computer matches 0 run execute if score rs2_26 Computer matches 1 run scoreboard players add fmul_exp_b Computer 8
execute if score fmul_special Computer matches 0 run execute if score rs2_27 Computer matches 1 run scoreboard players add fmul_exp_b Computer 16
execute if score fmul_special Computer matches 0 run execute if score rs2_28 Computer matches 1 run scoreboard players add fmul_exp_b Computer 32
execute if score fmul_special Computer matches 0 run execute if score rs2_29 Computer matches 1 run scoreboard players add fmul_exp_b Computer 64
execute if score fmul_special Computer matches 0 run execute if score rs2_30 Computer matches 1 run scoreboard players add fmul_exp_b Computer 128
execute if score fmul_special Computer matches 0 run execute if score fmul_rs2_exp_zero Computer matches 1 run scoreboard players set fmul_exp_b Computer 1

# exp_result = exp_a + exp_b - 127 (bias subtraction)
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_exp_result Computer = fmul_exp_a Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_exp_result Computer += fmul_exp_b Computer
execute if score fmul_special Computer matches 0 run scoreboard players remove fmul_exp_result Computer 127

# STEP 8: Normalize the product
# If prod_47 == 1: shift right by 1, exp++
# If prod_47 == 0 and prod_46 == 1: already normalized (for normal*normal)
# If prod_47 == 0 and prod_46 == 0: subnormal product, need to shift left

# If bit 47 is set, we need to shift the mantissa right by 1 and increment exponent
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 1 run scoreboard players add fmul_exp_result Computer 1

# Determine guard, round, sticky bits based on normalization
# Case 1: prod_47 == 1 (product is 1x.xxxxx * 2^(exp+1))
#   mantissa = prod[46:24], guard = prod_23, round = prod_22, sticky = OR(prod[21:0])
# Case 2: prod_47 == 0 (product is 0x.xxxxx * 2^exp, with prod_46 being the leading 1)
#   mantissa = prod[45:23], guard = prod_22, round = prod_21, sticky = OR(prod[20:0])

# Compute sticky bits
# For case 1 (prod_47=1): sticky = OR(prod_0..prod_21)
# For case 2 (prod_47=0): sticky = OR(prod_0..prod_20)
execute if score fmul_special Computer matches 0 run scoreboard players set fmul_sticky Computer 0
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_0 Computer matches 1 run scoreboard players set fmul_sticky Computer 1
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_1 Computer matches 1 run scoreboard players set fmul_sticky Computer 1
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_2 Computer matches 1 run scoreboard players set fmul_sticky Computer 1
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_3 Computer matches 1 run scoreboard players set fmul_sticky Computer 1
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_4 Computer matches 1 run scoreboard players set fmul_sticky Computer 1
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_5 Computer matches 1 run scoreboard players set fmul_sticky Computer 1
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_6 Computer matches 1 run scoreboard players set fmul_sticky Computer 1
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_7 Computer matches 1 run scoreboard players set fmul_sticky Computer 1
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_8 Computer matches 1 run scoreboard players set fmul_sticky Computer 1
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_9 Computer matches 1 run scoreboard players set fmul_sticky Computer 1
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_10 Computer matches 1 run scoreboard players set fmul_sticky Computer 1
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_11 Computer matches 1 run scoreboard players set fmul_sticky Computer 1
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_12 Computer matches 1 run scoreboard players set fmul_sticky Computer 1
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_13 Computer matches 1 run scoreboard players set fmul_sticky Computer 1
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_14 Computer matches 1 run scoreboard players set fmul_sticky Computer 1
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_15 Computer matches 1 run scoreboard players set fmul_sticky Computer 1
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_16 Computer matches 1 run scoreboard players set fmul_sticky Computer 1
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_17 Computer matches 1 run scoreboard players set fmul_sticky Computer 1
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_18 Computer matches 1 run scoreboard players set fmul_sticky Computer 1
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_19 Computer matches 1 run scoreboard players set fmul_sticky Computer 1
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_20 Computer matches 1 run scoreboard players set fmul_sticky Computer 1
# bit 21 is only sticky for case 1 (prod_47=1)
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 1 run execute if score fmul_prod_21 Computer matches 1 run scoreboard players set fmul_sticky Computer 1

# Guard and round bits
execute if score fmul_special Computer matches 0 run scoreboard players set fmul_guard Computer 0
execute if score fmul_special Computer matches 0 run scoreboard players set fmul_round Computer 0

# Case 1: prod_47=1 -> guard=prod_23, round=prod_22
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 1 run scoreboard players operation fmul_guard Computer = fmul_prod_23 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 1 run scoreboard players operation fmul_round Computer = fmul_prod_22 Computer

# Case 2: prod_47=0 -> guard=prod_22, round=prod_21
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 0 run scoreboard players operation fmul_guard Computer = fmul_prod_22 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 0 run scoreboard players operation fmul_round Computer = fmul_prod_21 Computer
# In case 2, bit 21 contributes to round, not sticky; bit 20 is last sticky bit (already handled above)

# Set mantissa bits in rd (23 bits: rd_22..rd_0)
# Case 1 (prod_47=1): mantissa = prod[46:24]
# Case 2 (prod_47=0): mantissa = prod[45:23]

execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 1 run scoreboard players operation rd_0 Computer = fmul_prod_24 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 1 run scoreboard players operation rd_1 Computer = fmul_prod_25 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 1 run scoreboard players operation rd_2 Computer = fmul_prod_26 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 1 run scoreboard players operation rd_3 Computer = fmul_prod_27 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 1 run scoreboard players operation rd_4 Computer = fmul_prod_28 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 1 run scoreboard players operation rd_5 Computer = fmul_prod_29 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 1 run scoreboard players operation rd_6 Computer = fmul_prod_30 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 1 run scoreboard players operation rd_7 Computer = fmul_prod_31 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 1 run scoreboard players operation rd_8 Computer = fmul_prod_32 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 1 run scoreboard players operation rd_9 Computer = fmul_prod_33 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 1 run scoreboard players operation rd_10 Computer = fmul_prod_34 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 1 run scoreboard players operation rd_11 Computer = fmul_prod_35 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 1 run scoreboard players operation rd_12 Computer = fmul_prod_36 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 1 run scoreboard players operation rd_13 Computer = fmul_prod_37 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 1 run scoreboard players operation rd_14 Computer = fmul_prod_38 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 1 run scoreboard players operation rd_15 Computer = fmul_prod_39 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 1 run scoreboard players operation rd_16 Computer = fmul_prod_40 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 1 run scoreboard players operation rd_17 Computer = fmul_prod_41 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 1 run scoreboard players operation rd_18 Computer = fmul_prod_42 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 1 run scoreboard players operation rd_19 Computer = fmul_prod_43 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 1 run scoreboard players operation rd_20 Computer = fmul_prod_44 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 1 run scoreboard players operation rd_21 Computer = fmul_prod_45 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 1 run scoreboard players operation rd_22 Computer = fmul_prod_46 Computer

execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 0 run scoreboard players operation rd_0 Computer = fmul_prod_23 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 0 run scoreboard players operation rd_1 Computer = fmul_prod_24 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 0 run scoreboard players operation rd_2 Computer = fmul_prod_25 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 0 run scoreboard players operation rd_3 Computer = fmul_prod_26 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 0 run scoreboard players operation rd_4 Computer = fmul_prod_27 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 0 run scoreboard players operation rd_5 Computer = fmul_prod_28 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 0 run scoreboard players operation rd_6 Computer = fmul_prod_29 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 0 run scoreboard players operation rd_7 Computer = fmul_prod_30 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 0 run scoreboard players operation rd_8 Computer = fmul_prod_31 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 0 run scoreboard players operation rd_9 Computer = fmul_prod_32 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 0 run scoreboard players operation rd_10 Computer = fmul_prod_33 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 0 run scoreboard players operation rd_11 Computer = fmul_prod_34 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 0 run scoreboard players operation rd_12 Computer = fmul_prod_35 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 0 run scoreboard players operation rd_13 Computer = fmul_prod_36 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 0 run scoreboard players operation rd_14 Computer = fmul_prod_37 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 0 run scoreboard players operation rd_15 Computer = fmul_prod_38 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 0 run scoreboard players operation rd_16 Computer = fmul_prod_39 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 0 run scoreboard players operation rd_17 Computer = fmul_prod_40 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 0 run scoreboard players operation rd_18 Computer = fmul_prod_41 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 0 run scoreboard players operation rd_19 Computer = fmul_prod_42 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 0 run scoreboard players operation rd_20 Computer = fmul_prod_43 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 0 run scoreboard players operation rd_21 Computer = fmul_prod_44 Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 0 run scoreboard players operation rd_22 Computer = fmul_prod_45 Computer

# STEP 9: Handle subnormal product (leading zeros in mantissa)
# When both inputs are subnormal or the product is very small,
# prod_47 and prod_46 may both be 0. We need to left-shift and decrement exponent.

# For subnormal inputs, the product may have leading zeros.
# We need to normalize: shift left until the MSB is at position 46 (of the 48-bit product)
# Each left shift decrements the exponent by 1
# We do this by calling a recursive helper function

# First, handle the case where prod_47=0 and prod_46=0 (needs left-shift normalization)
# Copy the relevant product bits to input_l add25 for normalization via left-shift helper
# But the existing left-shift helper is tied to fadd's exponent logic.
# Instead, we'll handle this with our own loop using decimal exponent.

# Check if product is all zeros (result of subnormal * subnormal underflow)
execute if score fmul_special Computer matches 0 run scoreboard players set fmul_prod_is_zero Computer 0
# Check if all 48 product bits are zero
execute if score fmul_special Computer matches 0 run scoreboard players set fmul_prod_is_zero Computer 1
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_0 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_1 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_2 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_3 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_4 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_5 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_6 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_7 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_8 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_9 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_10 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_11 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_12 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_13 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_14 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_15 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_16 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_17 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_18 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_19 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_20 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_21 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_22 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_23 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_24 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_25 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_26 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_27 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_28 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_29 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_30 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_31 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_32 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_33 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_34 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_35 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_36 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_37 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_38 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_39 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_40 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_41 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_42 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_43 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_44 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_45 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_46 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0
execute if score fmul_prod_is_zero Computer matches 1 run execute if score fmul_prod_47 Computer matches 1 run scoreboard players set fmul_prod_is_zero Computer 0

# If product is zero, result is signed zero
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_is_zero Computer matches 1 run function computer:misc/reset_rd
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_is_zero Computer matches 1 run scoreboard players operation rd_31 Computer = fmul_sign Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_is_zero Computer matches 1 run scoreboard players set fmul_special Computer 1

# If prod_47=0 and prod_46=0, we need to left-shift normalize
# Normalize regardless of exponent - underflow handler will fix exp later
execute if score fmul_special Computer matches 0 run execute if score fmul_prod_47 Computer matches 0 run execute if score fmul_prod_46 Computer matches 0 run function computer:alu/fmul_normalize_left

# STEP 10: Handle underflow BEFORE rounding

# Underflow: exp_result <= 0 -> result is subnormal or zero
# For exp_result = 0: subnormal, shift mantissa right by 1
# For exp_result < 0: shift mantissa right by (1-exp_result), set exp to 0
# This must happen before rounding so guard/round/sticky are correct
execute if score fmul_special Computer matches 0 run execute if score fmul_exp_result Computer matches ..0 run function computer:alu/fmul_handle_underflow

# STEP 11: RNE Rounding
# round_up if:
#   guard=1 AND (round=1 OR sticky=1)  -> round up (GRS > 100)
#   guard=1 AND round=0 AND sticky=0 AND rd_0=1 -> round up (tie, LSB=1, round to even)
execute if score fmul_special Computer matches 0 run scoreboard players set fmul_do_round Computer 0
execute if score fmul_special Computer matches 0 run execute if score fmul_guard Computer matches 1 run execute if score fmul_round Computer matches 1 run scoreboard players set fmul_do_round Computer 1
execute if score fmul_special Computer matches 0 run execute if score fmul_guard Computer matches 1 run execute if score fmul_sticky Computer matches 1 run scoreboard players set fmul_do_round Computer 1
execute if score fmul_special Computer matches 0 run execute if score fmul_guard Computer matches 1 run execute if score fmul_round Computer matches 0 run execute if score fmul_sticky Computer matches 0 run execute if score rd_0 Computer matches 1 run scoreboard players set fmul_do_round Computer 1

# Apply rounding by adding 1 to mantissa using add25
execute if score fmul_special Computer matches 0 run execute if score fmul_do_round Computer matches 1 run function computer:misc/copy_input_l_add25_from_rd_mantissa
execute if score fmul_special Computer matches 0 run execute if score fmul_do_round Computer matches 1 run function computer:misc/set_input_r_25bits_to_1
execute if score fmul_special Computer matches 0 run execute if score fmul_do_round Computer matches 1 run function computer:alu/add_25bits
# Check if rounding caused mantissa overflow (carry into bit 23)
# If input_l_23 add25 = 1, mantissa overflowed -> increment exponent, mantissa becomes 0
execute if score fmul_special Computer matches 0 run execute if score fmul_do_round Computer matches 1 run function computer:misc/copy_input_l_add25_to_rd_mantissa
execute if score fmul_special Computer matches 0 run execute if score fmul_do_round Computer matches 1 run execute if score input_l_23 add25 matches 1 run scoreboard players add fmul_exp_result Computer 1

# STEP 12: Handle overflow of exponent

# Overflow: exp_result >= 255 -> result is infinity
execute if score fmul_special Computer matches 0 run scoreboard players set fmul_overflow Computer 0
execute if score fmul_special Computer matches 0 run execute if score fmul_exp_result Computer matches 255.. run scoreboard players set fmul_overflow Computer 1
execute if score fmul_special Computer matches 0 run execute if score fmul_overflow Computer matches 1 run function computer:misc/reset_rd
execute if score fmul_special Computer matches 0 run execute if score fmul_overflow Computer matches 1 run function computer:misc/set_rd_exponent_to_inf
execute if score fmul_special Computer matches 0 run execute if score fmul_overflow Computer matches 1 run scoreboard players operation rd_31 Computer = fmul_sign Computer
execute if score fmul_special Computer matches 0 run execute if score fmul_overflow Computer matches 1 run scoreboard players set fmul_special Computer 1

# STEP 12: Set exponent in rd (convert decimal back to bits)
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_tmp Computer = fmul_exp_result Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation rd_23 Computer = fmul_tmp Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation rd_23 Computer %= 2 FixedValue
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_tmp Computer /= 2 FixedValue
execute if score fmul_special Computer matches 0 run scoreboard players operation rd_24 Computer = fmul_tmp Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation rd_24 Computer %= 2 FixedValue
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_tmp Computer /= 2 FixedValue
execute if score fmul_special Computer matches 0 run scoreboard players operation rd_25 Computer = fmul_tmp Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation rd_25 Computer %= 2 FixedValue
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_tmp Computer /= 2 FixedValue
execute if score fmul_special Computer matches 0 run scoreboard players operation rd_26 Computer = fmul_tmp Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation rd_26 Computer %= 2 FixedValue
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_tmp Computer /= 2 FixedValue
execute if score fmul_special Computer matches 0 run scoreboard players operation rd_27 Computer = fmul_tmp Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation rd_27 Computer %= 2 FixedValue
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_tmp Computer /= 2 FixedValue
execute if score fmul_special Computer matches 0 run scoreboard players operation rd_28 Computer = fmul_tmp Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation rd_28 Computer %= 2 FixedValue
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_tmp Computer /= 2 FixedValue
execute if score fmul_special Computer matches 0 run scoreboard players operation rd_29 Computer = fmul_tmp Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation rd_29 Computer %= 2 FixedValue
execute if score fmul_special Computer matches 0 run scoreboard players operation fmul_tmp Computer /= 2 FixedValue
execute if score fmul_special Computer matches 0 run scoreboard players operation rd_30 Computer = fmul_tmp Computer
execute if score fmul_special Computer matches 0 run scoreboard players operation rd_30 Computer %= 2 FixedValue

# Set sign
execute if score fmul_special Computer matches 0 run scoreboard players operation rd_31 Computer = fmul_sign Computer

