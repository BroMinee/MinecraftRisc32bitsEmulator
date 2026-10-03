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
execute if score fdiv_rs1_is_nan Computer matches 1 run function computer:misc/reset_rd
execute if score fdiv_rs1_is_nan Computer matches 1 run function computer:misc/set_rd_exponent_to_inf
execute if score fdiv_rs1_is_nan Computer matches 1 run scoreboard players set rd_31 Computer 0
execute if score fdiv_rs1_is_nan Computer matches 1 run scoreboard players operation rd_22 Computer = rs1_22 Computer
execute if score fdiv_rs1_is_nan Computer matches 1 run scoreboard players operation rd_21 Computer = rs1_21 Computer
execute if score fdiv_rs1_is_nan Computer matches 1 run scoreboard players operation rd_20 Computer = rs1_20 Computer
execute if score fdiv_rs1_is_nan Computer matches 1 run scoreboard players operation rd_19 Computer = rs1_19 Computer
execute if score fdiv_rs1_is_nan Computer matches 1 run scoreboard players operation rd_18 Computer = rs1_18 Computer
execute if score fdiv_rs1_is_nan Computer matches 1 run scoreboard players operation rd_17 Computer = rs1_17 Computer
execute if score fdiv_rs1_is_nan Computer matches 1 run scoreboard players operation rd_16 Computer = rs1_16 Computer
execute if score fdiv_rs1_is_nan Computer matches 1 run scoreboard players operation rd_15 Computer = rs1_15 Computer
execute if score fdiv_rs1_is_nan Computer matches 1 run scoreboard players operation rd_14 Computer = rs1_14 Computer
execute if score fdiv_rs1_is_nan Computer matches 1 run scoreboard players operation rd_13 Computer = rs1_13 Computer
execute if score fdiv_rs1_is_nan Computer matches 1 run scoreboard players operation rd_12 Computer = rs1_12 Computer
execute if score fdiv_rs1_is_nan Computer matches 1 run scoreboard players operation rd_11 Computer = rs1_11 Computer
execute if score fdiv_rs1_is_nan Computer matches 1 run scoreboard players operation rd_10 Computer = rs1_10 Computer
execute if score fdiv_rs1_is_nan Computer matches 1 run scoreboard players operation rd_9 Computer = rs1_9 Computer
execute if score fdiv_rs1_is_nan Computer matches 1 run scoreboard players operation rd_8 Computer = rs1_8 Computer
execute if score fdiv_rs1_is_nan Computer matches 1 run scoreboard players operation rd_7 Computer = rs1_7 Computer
execute if score fdiv_rs1_is_nan Computer matches 1 run scoreboard players operation rd_6 Computer = rs1_6 Computer
execute if score fdiv_rs1_is_nan Computer matches 1 run scoreboard players operation rd_5 Computer = rs1_5 Computer
execute if score fdiv_rs1_is_nan Computer matches 1 run scoreboard players operation rd_4 Computer = rs1_4 Computer
execute if score fdiv_rs1_is_nan Computer matches 1 run scoreboard players operation rd_3 Computer = rs1_3 Computer
execute if score fdiv_rs1_is_nan Computer matches 1 run scoreboard players operation rd_2 Computer = rs1_2 Computer
execute if score fdiv_rs1_is_nan Computer matches 1 run scoreboard players operation rd_1 Computer = rs1_1 Computer
execute if score fdiv_rs1_is_nan Computer matches 1 run scoreboard players operation rd_0 Computer = rs1_0 Computer
execute if score fdiv_rs1_is_nan Computer matches 1 run scoreboard players set rd_22 Computer 1

# NaN propagation: rs2 NaN (and rs1 is not NaN) -> result = rs2 with bit 22 set
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rs2_is_nan Computer matches 1 run scoreboard players set fdiv_special Computer 1
execute if score fdiv_rs2_is_nan Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run function computer:misc/reset_rd
execute if score fdiv_rs2_is_nan Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run function computer:misc/set_rd_exponent_to_inf
execute if score fdiv_rs2_is_nan Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run scoreboard players set rd_31 Computer 0
execute if score fdiv_rs2_is_nan Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run scoreboard players operation rd_22 Computer = rs2_22 Computer
execute if score fdiv_rs2_is_nan Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run scoreboard players operation rd_21 Computer = rs2_21 Computer
execute if score fdiv_rs2_is_nan Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run scoreboard players operation rd_20 Computer = rs2_20 Computer
execute if score fdiv_rs2_is_nan Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run scoreboard players operation rd_19 Computer = rs2_19 Computer
execute if score fdiv_rs2_is_nan Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run scoreboard players operation rd_18 Computer = rs2_18 Computer
execute if score fdiv_rs2_is_nan Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run scoreboard players operation rd_17 Computer = rs2_17 Computer
execute if score fdiv_rs2_is_nan Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run scoreboard players operation rd_16 Computer = rs2_16 Computer
execute if score fdiv_rs2_is_nan Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run scoreboard players operation rd_15 Computer = rs2_15 Computer
execute if score fdiv_rs2_is_nan Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run scoreboard players operation rd_14 Computer = rs2_14 Computer
execute if score fdiv_rs2_is_nan Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run scoreboard players operation rd_13 Computer = rs2_13 Computer
execute if score fdiv_rs2_is_nan Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run scoreboard players operation rd_12 Computer = rs2_12 Computer
execute if score fdiv_rs2_is_nan Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run scoreboard players operation rd_11 Computer = rs2_11 Computer
execute if score fdiv_rs2_is_nan Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run scoreboard players operation rd_10 Computer = rs2_10 Computer
execute if score fdiv_rs2_is_nan Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run scoreboard players operation rd_9 Computer = rs2_9 Computer
execute if score fdiv_rs2_is_nan Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run scoreboard players operation rd_8 Computer = rs2_8 Computer
execute if score fdiv_rs2_is_nan Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run scoreboard players operation rd_7 Computer = rs2_7 Computer
execute if score fdiv_rs2_is_nan Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run scoreboard players operation rd_6 Computer = rs2_6 Computer
execute if score fdiv_rs2_is_nan Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run scoreboard players operation rd_5 Computer = rs2_5 Computer
execute if score fdiv_rs2_is_nan Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run scoreboard players operation rd_4 Computer = rs2_4 Computer
execute if score fdiv_rs2_is_nan Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run scoreboard players operation rd_3 Computer = rs2_3 Computer
execute if score fdiv_rs2_is_nan Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run scoreboard players operation rd_2 Computer = rs2_2 Computer
execute if score fdiv_rs2_is_nan Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run scoreboard players operation rd_1 Computer = rs2_1 Computer
execute if score fdiv_rs2_is_nan Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run scoreboard players operation rd_0 Computer = rs2_0 Computer
execute if score fdiv_rs2_is_nan Computer matches 1 run execute if score fdiv_rs1_is_nan Computer matches 0 run scoreboard players set rd_22 Computer 1

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

# Convert rs1 exponent to decimal
execute if score fdiv_special Computer matches 0 run scoreboard players set fdiv_exp_a Computer 0
execute if score fdiv_special Computer matches 0 run execute if score rs1_23 Computer matches 1 run scoreboard players add fdiv_exp_a Computer 1
execute if score fdiv_special Computer matches 0 run execute if score rs1_24 Computer matches 1 run scoreboard players add fdiv_exp_a Computer 2
execute if score fdiv_special Computer matches 0 run execute if score rs1_25 Computer matches 1 run scoreboard players add fdiv_exp_a Computer 4
execute if score fdiv_special Computer matches 0 run execute if score rs1_26 Computer matches 1 run scoreboard players add fdiv_exp_a Computer 8
execute if score fdiv_special Computer matches 0 run execute if score rs1_27 Computer matches 1 run scoreboard players add fdiv_exp_a Computer 16
execute if score fdiv_special Computer matches 0 run execute if score rs1_28 Computer matches 1 run scoreboard players add fdiv_exp_a Computer 32
execute if score fdiv_special Computer matches 0 run execute if score rs1_29 Computer matches 1 run scoreboard players add fdiv_exp_a Computer 64
execute if score fdiv_special Computer matches 0 run execute if score rs1_30 Computer matches 1 run scoreboard players add fdiv_exp_a Computer 128
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rs1_exp_zero Computer matches 1 run scoreboard players set fdiv_exp_a Computer 1

# Convert rs2 exponent to decimal
execute if score fdiv_special Computer matches 0 run scoreboard players set fdiv_exp_b Computer 0
execute if score fdiv_special Computer matches 0 run execute if score rs2_23 Computer matches 1 run scoreboard players add fdiv_exp_b Computer 1
execute if score fdiv_special Computer matches 0 run execute if score rs2_24 Computer matches 1 run scoreboard players add fdiv_exp_b Computer 2
execute if score fdiv_special Computer matches 0 run execute if score rs2_25 Computer matches 1 run scoreboard players add fdiv_exp_b Computer 4
execute if score fdiv_special Computer matches 0 run execute if score rs2_26 Computer matches 1 run scoreboard players add fdiv_exp_b Computer 8
execute if score fdiv_special Computer matches 0 run execute if score rs2_27 Computer matches 1 run scoreboard players add fdiv_exp_b Computer 16
execute if score fdiv_special Computer matches 0 run execute if score rs2_28 Computer matches 1 run scoreboard players add fdiv_exp_b Computer 32
execute if score fdiv_special Computer matches 0 run execute if score rs2_29 Computer matches 1 run scoreboard players add fdiv_exp_b Computer 64
execute if score fdiv_special Computer matches 0 run execute if score rs2_30 Computer matches 1 run scoreboard players add fdiv_exp_b Computer 128
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rs2_exp_zero Computer matches 1 run scoreboard players set fdiv_exp_b Computer 1

# STEP 4: Build mantissas with implicit bit
# Copy rs1 mantissa bits to fdiv_dividend_0..22
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_dividend_0 Computer = rs1_0 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_dividend_1 Computer = rs1_1 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_dividend_2 Computer = rs1_2 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_dividend_3 Computer = rs1_3 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_dividend_4 Computer = rs1_4 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_dividend_5 Computer = rs1_5 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_dividend_6 Computer = rs1_6 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_dividend_7 Computer = rs1_7 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_dividend_8 Computer = rs1_8 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_dividend_9 Computer = rs1_9 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_dividend_10 Computer = rs1_10 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_dividend_11 Computer = rs1_11 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_dividend_12 Computer = rs1_12 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_dividend_13 Computer = rs1_13 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_dividend_14 Computer = rs1_14 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_dividend_15 Computer = rs1_15 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_dividend_16 Computer = rs1_16 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_dividend_17 Computer = rs1_17 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_dividend_18 Computer = rs1_18 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_dividend_19 Computer = rs1_19 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_dividend_20 Computer = rs1_20 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_dividend_21 Computer = rs1_21 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_dividend_22 Computer = rs1_22 Computer
# Implicit leading 1 for normals
execute if score fdiv_special Computer matches 0 run scoreboard players set fdiv_dividend_23 Computer 0
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rs1_exp_zero Computer matches 0 run scoreboard players set fdiv_dividend_23 Computer 1

# Copy rs2 mantissa bits to fdiv_divisor_0..22
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_divisor_0 Computer = rs2_0 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_divisor_1 Computer = rs2_1 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_divisor_2 Computer = rs2_2 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_divisor_3 Computer = rs2_3 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_divisor_4 Computer = rs2_4 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_divisor_5 Computer = rs2_5 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_divisor_6 Computer = rs2_6 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_divisor_7 Computer = rs2_7 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_divisor_8 Computer = rs2_8 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_divisor_9 Computer = rs2_9 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_divisor_10 Computer = rs2_10 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_divisor_11 Computer = rs2_11 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_divisor_12 Computer = rs2_12 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_divisor_13 Computer = rs2_13 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_divisor_14 Computer = rs2_14 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_divisor_15 Computer = rs2_15 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_divisor_16 Computer = rs2_16 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_divisor_17 Computer = rs2_17 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_divisor_18 Computer = rs2_18 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_divisor_19 Computer = rs2_19 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_divisor_20 Computer = rs2_20 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_divisor_21 Computer = rs2_21 Computer
execute if score fdiv_special Computer matches 0 run scoreboard players operation fdiv_divisor_22 Computer = rs2_22 Computer
# Implicit leading 1 for normals
execute if score fdiv_special Computer matches 0 run scoreboard players set fdiv_divisor_23 Computer 0
execute if score fdiv_special Computer matches 0 run execute if score fdiv_rs2_exp_zero Computer matches 0 run scoreboard players set fdiv_divisor_23 Computer 1

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
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 1 run scoreboard players operation rd_0 Computer = fdiv_quot_2 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 1 run scoreboard players operation rd_1 Computer = fdiv_quot_3 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 1 run scoreboard players operation rd_2 Computer = fdiv_quot_4 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 1 run scoreboard players operation rd_3 Computer = fdiv_quot_5 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 1 run scoreboard players operation rd_4 Computer = fdiv_quot_6 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 1 run scoreboard players operation rd_5 Computer = fdiv_quot_7 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 1 run scoreboard players operation rd_6 Computer = fdiv_quot_8 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 1 run scoreboard players operation rd_7 Computer = fdiv_quot_9 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 1 run scoreboard players operation rd_8 Computer = fdiv_quot_10 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 1 run scoreboard players operation rd_9 Computer = fdiv_quot_11 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 1 run scoreboard players operation rd_10 Computer = fdiv_quot_12 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 1 run scoreboard players operation rd_11 Computer = fdiv_quot_13 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 1 run scoreboard players operation rd_12 Computer = fdiv_quot_14 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 1 run scoreboard players operation rd_13 Computer = fdiv_quot_15 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 1 run scoreboard players operation rd_14 Computer = fdiv_quot_16 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 1 run scoreboard players operation rd_15 Computer = fdiv_quot_17 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 1 run scoreboard players operation rd_16 Computer = fdiv_quot_18 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 1 run scoreboard players operation rd_17 Computer = fdiv_quot_19 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 1 run scoreboard players operation rd_18 Computer = fdiv_quot_20 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 1 run scoreboard players operation rd_19 Computer = fdiv_quot_21 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 1 run scoreboard players operation rd_20 Computer = fdiv_quot_22 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 1 run scoreboard players operation rd_21 Computer = fdiv_quot_23 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 1 run scoreboard players operation rd_22 Computer = fdiv_quot_24 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 1 run scoreboard players set fdiv_guard Computer 0
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 1 run scoreboard players operation fdiv_guard Computer = fdiv_quot_1 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 1 run scoreboard players set fdiv_round Computer 0
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 1 run scoreboard players operation fdiv_round Computer = fdiv_quot_0 Computer

# Case 2: quot_25 = 0 -> exp--, mantissa = quot[23:1], guard = quot_0, round = 0
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 0 run scoreboard players remove fdiv_exp_result Computer 1
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 0 run scoreboard players operation rd_0 Computer = fdiv_quot_1 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 0 run scoreboard players operation rd_1 Computer = fdiv_quot_2 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 0 run scoreboard players operation rd_2 Computer = fdiv_quot_3 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 0 run scoreboard players operation rd_3 Computer = fdiv_quot_4 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 0 run scoreboard players operation rd_4 Computer = fdiv_quot_5 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 0 run scoreboard players operation rd_5 Computer = fdiv_quot_6 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 0 run scoreboard players operation rd_6 Computer = fdiv_quot_7 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 0 run scoreboard players operation rd_7 Computer = fdiv_quot_8 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 0 run scoreboard players operation rd_8 Computer = fdiv_quot_9 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 0 run scoreboard players operation rd_9 Computer = fdiv_quot_10 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 0 run scoreboard players operation rd_10 Computer = fdiv_quot_11 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 0 run scoreboard players operation rd_11 Computer = fdiv_quot_12 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 0 run scoreboard players operation rd_12 Computer = fdiv_quot_13 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 0 run scoreboard players operation rd_13 Computer = fdiv_quot_14 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 0 run scoreboard players operation rd_14 Computer = fdiv_quot_15 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 0 run scoreboard players operation rd_15 Computer = fdiv_quot_16 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 0 run scoreboard players operation rd_16 Computer = fdiv_quot_17 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 0 run scoreboard players operation rd_17 Computer = fdiv_quot_18 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 0 run scoreboard players operation rd_18 Computer = fdiv_quot_19 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 0 run scoreboard players operation rd_19 Computer = fdiv_quot_20 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 0 run scoreboard players operation rd_20 Computer = fdiv_quot_21 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 0 run scoreboard players operation rd_21 Computer = fdiv_quot_22 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 0 run scoreboard players operation rd_22 Computer = fdiv_quot_23 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 0 run scoreboard players set fdiv_guard Computer 0
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 0 run scoreboard players operation fdiv_guard Computer = fdiv_quot_0 Computer
execute if score fdiv_special Computer matches 0 run execute if score fdiv_quot_25 Computer matches 0 run scoreboard players set fdiv_round Computer 0

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
