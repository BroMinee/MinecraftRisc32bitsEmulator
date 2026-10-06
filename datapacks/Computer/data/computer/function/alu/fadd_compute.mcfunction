scoreboard players set fadd_last_bit Computer 0
scoreboard players set fadd_nb_1_discarded Computer 0
scoreboard players set fadd_inf Computer 0
scoreboard players set fadd_0_0 Computer 0

# TODO move everything in another file to optimized call when some case can lead directly to the result
# test if 0+0
execute if score rs1_31 Computer matches 0 run execute if score rs1_30 Computer matches 0 run execute if score rs1_29 Computer matches 0 run execute if score rs1_28 Computer matches 0 run execute if score rs1_27 Computer matches 0 run execute if score rs1_26 Computer matches 0 run execute if score rs1_25 Computer matches 0 run execute if score rs1_24 Computer matches 0 run execute if score rs1_23 Computer matches 0 run execute if score rs1_22 Computer matches 0 run execute if score rs1_21 Computer matches 0 run execute if score rs1_20 Computer matches 0 run execute if score rs1_19 Computer matches 0 run execute if score rs1_18 Computer matches 0 run execute if score rs1_17 Computer matches 0 run execute if score rs1_16 Computer matches 0 run execute if score rs1_15 Computer matches 0 run execute if score rs1_14 Computer matches 0 run execute if score rs1_13 Computer matches 0 run execute if score rs1_12 Computer matches 0 run execute if score rs1_11 Computer matches 0 run execute if score rs1_10 Computer matches 0 run execute if score rs1_9 Computer matches 0 run execute if score rs1_8 Computer matches 0 run execute if score rs1_7 Computer matches 0 run execute if score rs1_6 Computer matches 0 run execute if score rs1_5 Computer matches 0 run execute if score rs1_4 Computer matches 0 run execute if score rs1_3 Computer matches 0 run execute if score rs1_2 Computer matches 0 run execute if score rs1_1 Computer matches 0 run execute if score rs1_0 Computer matches 0 run execute if score rs2_31 Computer matches 0 run execute if score rs2_30 Computer matches 0 run execute if score rs2_29 Computer matches 0 run execute if score rs2_28 Computer matches 0 run execute if score rs2_27 Computer matches 0 run execute if score rs2_26 Computer matches 0 run execute if score rs2_25 Computer matches 0 run execute if score rs2_24 Computer matches 0 run execute if score rs2_23 Computer matches 0 run execute if score rs2_22 Computer matches 0 run execute if score rs2_21 Computer matches 0 run execute if score rs2_20 Computer matches 0 run execute if score rs2_19 Computer matches 0 run execute if score rs2_18 Computer matches 0 run execute if score rs2_17 Computer matches 0 run execute if score rs2_16 Computer matches 0 run execute if score rs2_15 Computer matches 0 run execute if score rs2_14 Computer matches 0 run execute if score rs2_13 Computer matches 0 run execute if score rs2_12 Computer matches 0 run execute if score rs2_11 Computer matches 0 run execute if score rs2_10 Computer matches 0 run execute if score rs2_9 Computer matches 0 run execute if score rs2_8 Computer matches 0 run execute if score rs2_7 Computer matches 0 run execute if score rs2_6 Computer matches 0 run execute if score rs2_5 Computer matches 0 run execute if score rs2_4 Computer matches 0 run execute if score rs2_3 Computer matches 0 run execute if score rs2_2 Computer matches 0 run execute if score rs2_1 Computer matches 0 run execute if score rs2_0 Computer matches 0 run scoreboard players set fadd_0_0 Computer 1

# Check if rs1 is +-0 (bits 0-30 all zero, only sign bit may differ)
scoreboard players set fadd_rs1_is_zero Computer 0
execute if score rs1_30 Computer matches 0 run execute if score rs1_29 Computer matches 0 run execute if score rs1_28 Computer matches 0 run execute if score rs1_27 Computer matches 0 run execute if score rs1_26 Computer matches 0 run execute if score rs1_25 Computer matches 0 run execute if score rs1_24 Computer matches 0 run execute if score rs1_23 Computer matches 0 run execute if score rs1_22 Computer matches 0 run execute if score rs1_21 Computer matches 0 run execute if score rs1_20 Computer matches 0 run execute if score rs1_19 Computer matches 0 run execute if score rs1_18 Computer matches 0 run execute if score rs1_17 Computer matches 0 run execute if score rs1_16 Computer matches 0 run execute if score rs1_15 Computer matches 0 run execute if score rs1_14 Computer matches 0 run execute if score rs1_13 Computer matches 0 run execute if score rs1_12 Computer matches 0 run execute if score rs1_11 Computer matches 0 run execute if score rs1_10 Computer matches 0 run execute if score rs1_9 Computer matches 0 run execute if score rs1_8 Computer matches 0 run execute if score rs1_7 Computer matches 0 run execute if score rs1_6 Computer matches 0 run execute if score rs1_5 Computer matches 0 run execute if score rs1_4 Computer matches 0 run execute if score rs1_3 Computer matches 0 run execute if score rs1_2 Computer matches 0 run execute if score rs1_1 Computer matches 0 run execute if score rs1_0 Computer matches 0 run scoreboard players set fadd_rs1_is_zero Computer 1

# Check if rs2 is +-0
scoreboard players set fadd_rs2_is_zero Computer 0
execute if score rs2_30 Computer matches 0 run execute if score rs2_29 Computer matches 0 run execute if score rs2_28 Computer matches 0 run execute if score rs2_27 Computer matches 0 run execute if score rs2_26 Computer matches 0 run execute if score rs2_25 Computer matches 0 run execute if score rs2_24 Computer matches 0 run execute if score rs2_23 Computer matches 0 run execute if score rs2_22 Computer matches 0 run execute if score rs2_21 Computer matches 0 run execute if score rs2_20 Computer matches 0 run execute if score rs2_19 Computer matches 0 run execute if score rs2_18 Computer matches 0 run execute if score rs2_17 Computer matches 0 run execute if score rs2_16 Computer matches 0 run execute if score rs2_15 Computer matches 0 run execute if score rs2_14 Computer matches 0 run execute if score rs2_13 Computer matches 0 run execute if score rs2_12 Computer matches 0 run execute if score rs2_11 Computer matches 0 run execute if score rs2_10 Computer matches 0 run execute if score rs2_9 Computer matches 0 run execute if score rs2_8 Computer matches 0 run execute if score rs2_7 Computer matches 0 run execute if score rs2_6 Computer matches 0 run execute if score rs2_5 Computer matches 0 run execute if score rs2_4 Computer matches 0 run execute if score rs2_3 Computer matches 0 run execute if score rs2_2 Computer matches 0 run execute if score rs2_1 Computer matches 0 run execute if score rs2_0 Computer matches 0 run scoreboard players set fadd_rs2_is_zero Computer 1

# If rs1 is +-0 and rs2 is not: result = rs2 (copy rs2 to rd directly)
execute if score fadd_rs1_is_zero Computer matches 1 run execute if score fadd_rs2_is_zero Computer matches 0 run function computer:misc/copy_rs2_to_rd
execute if score fadd_rs1_is_zero Computer matches 1 run execute if score fadd_rs2_is_zero Computer matches 0 run return 0

# If rs2 is +-0 and rs1 is not: result = rs1 (copy rs1 to rd directly)
execute if score fadd_rs2_is_zero Computer matches 1 run execute if score fadd_rs1_is_zero Computer matches 0 run function computer:misc/copy_rs1_to_rd
execute if score fadd_rs2_is_zero Computer matches 1 run execute if score fadd_rs1_is_zero Computer matches 0 run return 0

# Check if rs1 is inf or NaN (exponent = all 1s: bits 30-23)
scoreboard players set fadd_rs1_is_inf Computer 0
execute if score rs1_30 Computer matches 1 run execute if score rs1_29 Computer matches 1 run execute if score rs1_28 Computer matches 1 run execute if score rs1_27 Computer matches 1 run execute if score rs1_26 Computer matches 1 run execute if score rs1_25 Computer matches 1 run execute if score rs1_24 Computer matches 1 run execute if score rs1_23 Computer matches 1 run scoreboard players set fadd_rs1_is_inf Computer 1

# Check if rs2 is inf or NaN
scoreboard players set fadd_rs2_is_inf Computer 0
execute if score rs2_30 Computer matches 1 run execute if score rs2_29 Computer matches 1 run execute if score rs2_28 Computer matches 1 run execute if score rs2_27 Computer matches 1 run execute if score rs2_26 Computer matches 1 run execute if score rs2_25 Computer matches 1 run execute if score rs2_24 Computer matches 1 run execute if score rs2_23 Computer matches 1 run scoreboard players set fadd_rs2_is_inf Computer 1

# If rs1 is inf/NaN: copy rs1 to rd (inf stays inf, NaN stays NaN)
execute if score fadd_rs1_is_inf Computer matches 1 run function computer:misc/copy_rs1_to_rd
execute if score fadd_rs1_is_inf Computer matches 1 run return 0

# If rs2 is inf/NaN: copy rs2 to rd
execute if score fadd_rs2_is_inf Computer matches 1 run function computer:misc/copy_rs2_to_rd
execute if score fadd_rs2_is_inf Computer matches 1 run return 0

scoreboard players set sub Computer 0
execute if score rs1_31 Computer matches 1 run execute if score rs2_31 Computer matches 0 run scoreboard players set sub Computer 1
execute if score rs1_31 Computer matches 0 run execute if score rs2_31 Computer matches 1 run scoreboard players set sub Computer 1

# check that exponant are not the same
# compare = 1 if rs1 = rs2 else 0
function computer:alu/compare_equal_rs1_rs2_exponent

scoreboard players operation equal_exponent Computer = compare Computer

# Check if both operands are subnormal (exponent = 0)
# When equal_exponent=1, both exponents are the same, so just check rs1
scoreboard players set fadd_both_subnormal Computer 0
execute if score equal_exponent Computer matches 1 run execute if score rs1_30 Computer matches 0 run execute if score rs1_29 Computer matches 0 run execute if score rs1_28 Computer matches 0 run execute if score rs1_27 Computer matches 0 run execute if score rs1_26 Computer matches 0 run execute if score rs1_25 Computer matches 0 run execute if score rs1_24 Computer matches 0 run execute if score rs1_23 Computer matches 0 run scoreboard players set fadd_both_subnormal Computer 1

# check that is the first shift

# compare = 1 if rs1 < rs2 else 0 (EXPONENT)
execute if score equal_exponent Computer matches 0 run function computer:alu/compare_lower_strict_unsigned_rs1_exponent_rs2_exponent
scoreboard players operation rs1_lower Computer = compare Computer

# compare 1 if rs1 < rs2 else 0 (MANTISSA)
function computer:alu/compare_lower_strict_unsigned_rs1_mantissa_rs2_mantissa
scoreboard players operation rs1_lower_mantissa Computer = compare Computer

# when exponents are equal, use mantissa comparison to determine rs1_lower
execute if score equal_exponent Computer matches 1 run scoreboard players operation rs1_lower Computer = rs1_lower_mantissa Computer

# when count is 0 we set the 22 bits by a 1
scoreboard players set count Computer 0
execute if score equal_exponent Computer matches 0 run execute if score rs1_lower Computer matches 1 run function computer:alu/shift_right_rs1_mantissa_until_exponent_are_equal
execute if score equal_exponent Computer matches 0 run execute if score rs1_lower Computer matches 0 run function computer:alu/shift_right_rs2_mantissa_until_exponent_are_equal

# sub instead of add ?
execute if score sub Computer matches 1 run execute if score rs1_lower Computer matches 1 run function computer:misc/flip_rs1_mantissa
execute if score sub Computer matches 1 run execute if score rs1_lower Computer matches 0 run function computer:misc/flip_rs2_mantissa


# now mantissa are aligned and exponent are identical (or not because we stop the shift after 24 since mantissa is 23 bits (+1 since the first cycle we add a 1)

function computer:misc/copy_rs1_mantissa_to_input_l_add25
function computer:misc/copy_rs2_mantissa_to_input_r_add25

# if rs1 < rs2 and rs2 has not been shifted so the add 1 in front
# (rs1 is in input_l)
execute if score equal_exponent Computer matches 0 run execute if score rs1_lower Computer matches 1 run scoreboard players set input_r_23 add25 1
execute if score equal_exponent Computer matches 0 run execute if score rs1_lower Computer matches 0 run scoreboard players set input_l_23 add25 1

execute if score sub Computer matches 0 run execute if score equal_exponent Computer matches 1 run execute if score fadd_both_subnormal Computer matches 0 run scoreboard players set input_r_23 add25 1
execute if score sub Computer matches 0 run execute if score equal_exponent Computer matches 1 run execute if score fadd_both_subnormal Computer matches 0 run scoreboard players set input_l_23 add25 1

# Detect if the flipped operand's mantissa is zero after A2 (power-of-2 value).
# A2(0) wraps to 0 on 23 bits, so sign extension {1,1} would incorrectly represent -2^23.
# When zero, skip sign extension to avoid subtracting the implicit bit.
scoreboard players set fadd_flipped_mant_zero Computer 0
execute if score sub Computer matches 1 run execute if score rs1_lower Computer matches 0 run execute if score rs2_0 Computer matches 0 run execute if score rs2_1 Computer matches 0 run execute if score rs2_2 Computer matches 0 run execute if score rs2_3 Computer matches 0 run execute if score rs2_4 Computer matches 0 run execute if score rs2_5 Computer matches 0 run execute if score rs2_6 Computer matches 0 run execute if score rs2_7 Computer matches 0 run execute if score rs2_8 Computer matches 0 run execute if score rs2_9 Computer matches 0 run execute if score rs2_10 Computer matches 0 run execute if score rs2_11 Computer matches 0 run execute if score rs2_12 Computer matches 0 run execute if score rs2_13 Computer matches 0 run execute if score rs2_14 Computer matches 0 run execute if score rs2_15 Computer matches 0 run execute if score rs2_16 Computer matches 0 run execute if score rs2_17 Computer matches 0 run execute if score rs2_18 Computer matches 0 run execute if score rs2_19 Computer matches 0 run execute if score rs2_20 Computer matches 0 run execute if score rs2_21 Computer matches 0 run execute if score rs2_22 Computer matches 0 run scoreboard players set fadd_flipped_mant_zero Computer 1
execute if score sub Computer matches 1 run execute if score rs1_lower Computer matches 1 run execute if score rs1_0 Computer matches 0 run execute if score rs1_1 Computer matches 0 run execute if score rs1_2 Computer matches 0 run execute if score rs1_3 Computer matches 0 run execute if score rs1_4 Computer matches 0 run execute if score rs1_5 Computer matches 0 run execute if score rs1_6 Computer matches 0 run execute if score rs1_7 Computer matches 0 run execute if score rs1_8 Computer matches 0 run execute if score rs1_9 Computer matches 0 run execute if score rs1_10 Computer matches 0 run execute if score rs1_11 Computer matches 0 run execute if score rs1_12 Computer matches 0 run execute if score rs1_13 Computer matches 0 run execute if score rs1_14 Computer matches 0 run execute if score rs1_15 Computer matches 0 run execute if score rs1_16 Computer matches 0 run execute if score rs1_17 Computer matches 0 run execute if score rs1_18 Computer matches 0 run execute if score rs1_19 Computer matches 0 run execute if score rs1_20 Computer matches 0 run execute if score rs1_21 Computer matches 0 run execute if score rs1_22 Computer matches 0 run scoreboard players set fadd_flipped_mant_zero Computer 1

# if sub then we perform full a2 complement sign extension
# Skip sign extension when flipped mantissa is zero (A2(0) wraps, {1,1} would be wrong)
execute if score sub Computer matches 1 run execute if score rs1_lower Computer matches 0 run execute if score fadd_flipped_mant_zero Computer matches 0 run scoreboard players set input_r_23 add25 1
execute if score sub Computer matches 1 run execute if score rs1_lower Computer matches 0 run execute if score fadd_flipped_mant_zero Computer matches 0 run scoreboard players set input_r_24 add25 1

execute if score sub Computer matches 1 run execute if score rs1_lower Computer matches 1 run execute if score fadd_flipped_mant_zero Computer matches 0 run scoreboard players set input_l_23 add25 1
execute if score sub Computer matches 1 run execute if score rs1_lower Computer matches 1 run execute if score fadd_flipped_mant_zero Computer matches 0 run scoreboard players set input_l_24 add25 1

function computer:alu/add_25bits

# when sub=1 and guard bit was 1, decrement result by 1 to account for the
# fractional guard bit lost during mantissa alignment shift
execute if score sub Computer matches 1 run execute if score fadd_last_bit Computer matches 1 run function computer:alu/sub_1_input_l_add25

scoreboard players set fadd_is_zero Computer 0
execute if score input_l_0 add25 matches 0 run execute if score input_l_1 add25 matches 0 run execute if score input_l_2 add25 matches 0 run execute if score input_l_3 add25 matches 0 run execute if score input_l_4 add25 matches 0 run execute if score input_l_5 add25 matches 0 run execute if score input_l_6 add25 matches 0 run execute if score input_l_7 add25 matches 0 run execute if score input_l_8 add25 matches 0 run execute if score input_l_9 add25 matches 0 run execute if score input_l_10 add25 matches 0 run execute if score input_l_11 add25 matches 0 run execute if score input_l_12 add25 matches 0 run execute if score input_l_13 add25 matches 0 run execute if score input_l_14 add25 matches 0 run execute if score input_l_15 add25 matches 0 run execute if score input_l_16 add25 matches 0 run execute if score input_l_17 add25 matches 0 run execute if score input_l_18 add25 matches 0 run execute if score input_l_19 add25 matches 0 run execute if score input_l_20 add25 matches 0 run execute if score input_l_21 add25 matches 0 run execute if score input_l_22 add25 matches 0 run execute if score input_l_23 add25 matches 0 run execute if score input_l_24 add25 matches 0 run scoreboard players set fadd_is_zero Computer 1
# when sub=1 and equal_exponent=1, the A2 complement extension bits 23-24 may be set
# even when the mantissa subtraction result (bits 0-22) is zero, so check only bits 0-22
execute if score sub Computer matches 1 run execute if score equal_exponent Computer matches 1 run execute if score input_l_0 add25 matches 0 run execute if score input_l_1 add25 matches 0 run execute if score input_l_2 add25 matches 0 run execute if score input_l_3 add25 matches 0 run execute if score input_l_4 add25 matches 0 run execute if score input_l_5 add25 matches 0 run execute if score input_l_6 add25 matches 0 run execute if score input_l_7 add25 matches 0 run execute if score input_l_8 add25 matches 0 run execute if score input_l_9 add25 matches 0 run execute if score input_l_10 add25 matches 0 run execute if score input_l_11 add25 matches 0 run execute if score input_l_12 add25 matches 0 run execute if score input_l_13 add25 matches 0 run execute if score input_l_14 add25 matches 0 run execute if score input_l_15 add25 matches 0 run execute if score input_l_16 add25 matches 0 run execute if score input_l_17 add25 matches 0 run execute if score input_l_18 add25 matches 0 run execute if score input_l_19 add25 matches 0 run execute if score input_l_20 add25 matches 0 run execute if score input_l_21 add25 matches 0 run execute if score input_l_22 add25 matches 0 run scoreboard players set fadd_is_zero Computer 1

# shifting
scoreboard players set nb_shifting_mantissa Computer 0
# Skip left-shift normalization when both operands are subnormal (exp=0) - subnormal results stay denormalized
execute if score fadd_is_zero Computer matches 0 run execute if score fadd_both_subnormal Computer matches 0 run execute if score input_l_24 add25 matches 0 run execute if score input_l_23 add25 matches 0 run function computer:alu/shift_left_input_l_add25_until_alignement
execute if score fadd_is_zero Computer matches 0 run execute if score input_l_24 add25 matches 1 run execute if score input_l_23 add25 matches 0 run function computer:alu/shift_right_input_l_add25_until_alignement
execute if score fadd_is_zero Computer matches 0 run execute if score input_l_24 add25 matches 1 run execute if score input_l_23 add25 matches 1 run function computer:alu/shift_right_input_l_add25_until_alignement


# rounding
# if n-1 is 0 when nothing
scoreboard players set fadd_round Computer 0
# if n-1 is 1 and there has been more than two '1'  discarded then we round up
# rounding only applies for addition (sub=0), not subtraction - guard bit is handled by decrement+left-shift insertion
execute if score sub Computer matches 0 run execute if score fadd_last_bit Computer matches 1 run execute if score fadd_nb_1_discarded Computer matches 2.. run scoreboard players set fadd_round Computer 1

# if n-1 is 1 and there has been less or equal than one '1' discarded then we round up if least significat bit is 1
execute if score sub Computer matches 0 run execute if score fadd_last_bit Computer matches 1 run execute if score fadd_nb_1_discarded Computer matches 1 run execute if score input_l_0 add25 matches 1 run scoreboard players set fadd_round Computer 1

execute if score fadd_round Computer matches 1 run function computer:misc/set_input_r_25bits_to_1
execute if score fadd_round Computer matches 1 run function computer:alu/add_25bits




# updare rd_mantissa copy res addition to rd
function computer:misc/copy_input_l_add25_to_rd_mantissa
execute if score fadd_inf Computer matches 1 run function computer:misc/set_rd_mantissa_to_inf


# update rd exponent
execute if score fadd_is_zero Computer matches 0 run execute if score rs1_lower Computer matches 1 run function computer:misc/copy_rs2_exponent_to_rd_exponent
execute if score fadd_is_zero Computer matches 0 run execute if score rs1_lower Computer matches 0 run function computer:misc/copy_rs1_exponent_to_rd_exponent
execute if score fadd_is_zero Computer matches 1 run function computer:misc/reset_rd_exponent

execute if score fadd_inf Computer matches 1 run function computer:misc/set_rd_exponent_to_inf

# update rd sign
# apparently -0 exist o_O if mantissa is 0 then set everything to 0 even the sign
# TODO check if one number is negative of not
scoreboard players set rd_31 Computer 0
# + +
execute if score fadd_is_zero Computer matches 0 run execute if score rs1_31 Computer matches 0 run execute if score rs2_31 Computer matches 1 run scoreboard players set rd_31 Computer 1
# - +
execute if score fadd_is_zero Computer matches 0 run execute if score rs1_31 Computer matches 1 run execute if score rs2_31 Computer matches 0 run execute if score rs1_lower Computer matches 1 run scoreboard players set rd_31 Computer 0
execute if score fadd_is_zero Computer matches 0 run execute if score rs1_31 Computer matches 1 run execute if score rs2_31 Computer matches 0 run execute if score rs1_lower Computer matches 0 run scoreboard players set rd_31 Computer 1
execute if score fadd_is_zero Computer matches 0 run execute if score rs1_31 Computer matches 1 run execute if score rs2_31 Computer matches 0 run execute if score equal_exponent Computer matches 1 run execute if score rs1_lower_mantissa Computer matches 1 run scoreboard players set rd_31 Computer 0
execute if score fadd_is_zero Computer matches 0 run execute if score rs1_31 Computer matches 1 run execute if score rs2_31 Computer matches 0 run execute if score equal_exponent Computer matches 1 run execute if score rs1_lower_mantissa Computer matches 0 run scoreboard players set rd_31 Computer 1
# + -
execute if score fadd_is_zero Computer matches 0 run execute if score rs1_31 Computer matches 0 run execute if score rs2_31 Computer matches 1 run execute if score rs1_lower Computer matches 1 run scoreboard players set rd_31 Computer 1
execute if score fadd_is_zero Computer matches 0 run execute if score rs1_31 Computer matches 0 run execute if score rs2_31 Computer matches 1 run execute if score rs1_lower Computer matches 0 run scoreboard players set rd_31 Computer 0
execute if score fadd_is_zero Computer matches 0 run execute if score rs1_31 Computer matches 0 run execute if score rs2_31 Computer matches 1 run execute if score equal_exponent Computer matches 1 run execute if score rs1_lower_mantissa Computer matches 1 run scoreboard players set rd_31 Computer 1
execute if score fadd_is_zero Computer matches 0 run execute if score rs1_31 Computer matches 0 run execute if score rs2_31 Computer matches 1 run execute if score equal_exponent Computer matches 1 run execute if score rs1_lower_mantissa Computer matches 0 run scoreboard players set rd_31 Computer 0
# - -
execute if score fadd_is_zero Computer matches 0 run execute if score rs1_31 Computer matches 1 run execute if score rs2_31 Computer matches 1 run scoreboard players set rd_31 Computer 1

execute if score fadd_0_0 Computer matches 1 run function computer:misc/reset_rd
# When both inputs are negative and result is zero (e.g. -0+-0), preserve negative sign
execute if score fadd_is_zero Computer matches 1 run execute if score rs1_31 Computer matches 1 run execute if score rs2_31 Computer matches 1 run scoreboard players set rd_31 Computer 1

