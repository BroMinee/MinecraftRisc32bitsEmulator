# fcvt.wu.s: convert float rs1 to unsigned int32 rd

scoreboard players set fcvt_special Computer 0

# Check for exp=255: all exponent bits (rs1_30..rs1_23) are 1
scoreboard players set fcvt_exp_all_ones Computer 0
execute if score rs1_30 Computer matches 1 run execute if score rs1_29 Computer matches 1 run execute if score rs1_28 Computer matches 1 run execute if score rs1_27 Computer matches 1 run execute if score rs1_26 Computer matches 1 run execute if score rs1_25 Computer matches 1 run execute if score rs1_24 Computer matches 1 run execute if score rs1_23 Computer matches 1 run scoreboard players set fcvt_exp_all_ones Computer 1

# NaN -> UINT_MAX (0xFFFFFFFF)
scoreboard players set fcvt_is_nan Computer 0
execute if score fcvt_exp_all_ones Computer matches 1 run scoreboard players set fcvt_is_nan Computer 1
execute if score fcvt_is_nan Computer matches 1 run execute if score rs1_22 Computer matches 0 run execute if score rs1_21 Computer matches 0 run execute if score rs1_20 Computer matches 0 run execute if score rs1_19 Computer matches 0 run execute if score rs1_18 Computer matches 0 run execute if score rs1_17 Computer matches 0 run execute if score rs1_16 Computer matches 0 run execute if score rs1_15 Computer matches 0 run execute if score rs1_14 Computer matches 0 run execute if score rs1_13 Computer matches 0 run execute if score rs1_12 Computer matches 0 run execute if score rs1_11 Computer matches 0 run execute if score rs1_10 Computer matches 0 run execute if score rs1_9 Computer matches 0 run execute if score rs1_8 Computer matches 0 run execute if score rs1_7 Computer matches 0 run execute if score rs1_6 Computer matches 0 run execute if score rs1_5 Computer matches 0 run execute if score rs1_4 Computer matches 0 run execute if score rs1_3 Computer matches 0 run execute if score rs1_2 Computer matches 0 run execute if score rs1_1 Computer matches 0 run execute if score rs1_0 Computer matches 0 run scoreboard players set fcvt_is_nan Computer 0

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
execute if score fcvt_is_nan Computer matches 1 run scoreboard players set rd_31 Computer 1

# Negative (including -inf) -> 0
execute if score fcvt_special Computer matches 0 run execute if score rs1_31 Computer matches 1 run scoreboard players set fcvt_special Computer 1
execute if score rs1_31 Computer matches 1 run execute if score fcvt_special Computer matches 1 run function computer:misc/reset_rd

# Positive overflow/inf (exp >= 159 means >= 2^32) -> UINT_MAX
# exp >= 159 (10011111):
#   rs1_30=1 AND rs1_29=1 -> exp >= 192
#   rs1_30=1 AND rs1_29=0 AND rs1_28=1 -> exp >= 160
#   rs1_30=1 AND rs1_29=0 AND rs1_28=0 AND rs1_27=1 AND rs1_26=1 AND rs1_25=1 AND rs1_24=1 AND rs1_23=1 -> exp = 159
scoreboard players set fcvt_overflow Computer 0
execute if score rs1_30 Computer matches 1 run execute if score rs1_29 Computer matches 1 run scoreboard players set fcvt_overflow Computer 1
execute if score rs1_30 Computer matches 1 run execute if score rs1_29 Computer matches 0 run execute if score rs1_28 Computer matches 1 run scoreboard players set fcvt_overflow Computer 1
execute if score rs1_30 Computer matches 1 run execute if score rs1_29 Computer matches 0 run execute if score rs1_28 Computer matches 0 run execute if score rs1_27 Computer matches 1 run execute if score rs1_26 Computer matches 1 run execute if score rs1_25 Computer matches 1 run execute if score rs1_24 Computer matches 1 run execute if score rs1_23 Computer matches 1 run scoreboard players set fcvt_overflow Computer 1

execute if score fcvt_special Computer matches 0 run execute if score fcvt_overflow Computer matches 1 run scoreboard players set fcvt_special Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run function computer:misc/reset_rd
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_0 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_1 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_2 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_3 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_4 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_5 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_6 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_7 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_8 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_9 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_10 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_11 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_12 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_13 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_14 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_15 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_16 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_17 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_18 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_19 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_20 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_21 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_22 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_23 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_24 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_25 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_26 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_27 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_28 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_29 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_30 Computer 1
execute if score fcvt_overflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run scoreboard players set rd_31 Computer 1

# |value| < 1 (exp < 127) -> 0
# rs1_30=0 AND at least one of rs1_29..rs1_23 is 0 -> exp <= 126
scoreboard players set fcvt_underflow Computer 0
execute if score rs1_30 Computer matches 0 run scoreboard players set fcvt_underflow Computer 1
execute if score rs1_30 Computer matches 0 run execute if score rs1_29 Computer matches 1 run execute if score rs1_28 Computer matches 1 run execute if score rs1_27 Computer matches 1 run execute if score rs1_26 Computer matches 1 run execute if score rs1_25 Computer matches 1 run execute if score rs1_24 Computer matches 1 run execute if score rs1_23 Computer matches 1 run scoreboard players set fcvt_underflow Computer 0

execute if score fcvt_special Computer matches 0 run execute if score fcvt_underflow Computer matches 1 run scoreboard players set fcvt_special Computer 1
execute if score fcvt_underflow Computer matches 1 run execute if score fcvt_special Computer matches 1 run function computer:misc/reset_rd

# Normal case: same shift logic as signed but without negation, and shift can go up to 31
scoreboard players set fcvt_sign Computer 0
execute if score fcvt_special Computer matches 0 run function computer:alu/fcvt_w_s_shift
