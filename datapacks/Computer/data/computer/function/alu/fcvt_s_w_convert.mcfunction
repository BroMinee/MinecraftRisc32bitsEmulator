# Convert absolute value in rs1 to IEEE 754 float in rd
# rs1 contains the absolute value (positive), fcvt_sign has the original sign

# Find the position of the leading 1 (highest set bit) using count
# count is tolerated as a shift variable
scoreboard players set count Computer -1
execute if score rs1_31 Computer matches 1 run scoreboard players set count Computer 31
execute if score rs1_30 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 30
execute if score rs1_29 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 29
execute if score rs1_28 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 28
execute if score rs1_27 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 27
execute if score rs1_26 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 26
execute if score rs1_25 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 25
execute if score rs1_24 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 24
execute if score rs1_23 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 23
execute if score rs1_22 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 22
execute if score rs1_21 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 21
execute if score rs1_20 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 20
execute if score rs1_19 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 19
execute if score rs1_18 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 18
execute if score rs1_17 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 17
execute if score rs1_16 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 16
execute if score rs1_15 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 15
execute if score rs1_14 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 14
execute if score rs1_13 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 13
execute if score rs1_12 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 12
execute if score rs1_11 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 11
execute if score rs1_10 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 10
execute if score rs1_9 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 9
execute if score rs1_8 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 8
execute if score rs1_7 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 7
execute if score rs1_6 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 6
execute if score rs1_5 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 5
execute if score rs1_4 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 4
execute if score rs1_3 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 3
execute if score rs1_2 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 2
execute if score rs1_1 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 1
execute if score rs1_0 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 0

# Copy rs1 into rd (all 32 bits)
scoreboard players operation rd_0 Computer = rs1_0 Computer
scoreboard players operation rd_1 Computer = rs1_1 Computer
scoreboard players operation rd_2 Computer = rs1_2 Computer
scoreboard players operation rd_3 Computer = rs1_3 Computer
scoreboard players operation rd_4 Computer = rs1_4 Computer
scoreboard players operation rd_5 Computer = rs1_5 Computer
scoreboard players operation rd_6 Computer = rs1_6 Computer
scoreboard players operation rd_7 Computer = rs1_7 Computer
scoreboard players operation rd_8 Computer = rs1_8 Computer
scoreboard players operation rd_9 Computer = rs1_9 Computer
scoreboard players operation rd_10 Computer = rs1_10 Computer
scoreboard players operation rd_11 Computer = rs1_11 Computer
scoreboard players operation rd_12 Computer = rs1_12 Computer
scoreboard players operation rd_13 Computer = rs1_13 Computer
scoreboard players operation rd_14 Computer = rs1_14 Computer
scoreboard players operation rd_15 Computer = rs1_15 Computer
scoreboard players operation rd_16 Computer = rs1_16 Computer
scoreboard players operation rd_17 Computer = rs1_17 Computer
scoreboard players operation rd_18 Computer = rs1_18 Computer
scoreboard players operation rd_19 Computer = rs1_19 Computer
scoreboard players operation rd_20 Computer = rs1_20 Computer
scoreboard players operation rd_21 Computer = rs1_21 Computer
scoreboard players operation rd_22 Computer = rs1_22 Computer
scoreboard players operation rd_23 Computer = rs1_23 Computer
scoreboard players operation rd_24 Computer = rs1_24 Computer
scoreboard players operation rd_25 Computer = rs1_25 Computer
scoreboard players operation rd_26 Computer = rs1_26 Computer
scoreboard players operation rd_27 Computer = rs1_27 Computer
scoreboard players operation rd_28 Computer = rs1_28 Computer
scoreboard players operation rd_29 Computer = rs1_29 Computer
scoreboard players operation rd_30 Computer = rs1_30 Computer
scoreboard players set rd_31 Computer 0

# Shift rd to align the leading 1 at bit 23
# If count > 23: shift right by (count - 23), need rounding
# If count < 23: shift left by (23 - count)
# If count == 23: already aligned

# count > 23: shift right (need rounding for discarded bits)
scoreboard players set fcvt_do_right Computer 0
execute if score count Computer matches 24.. run scoreboard players set fcvt_do_right Computer 1
# Extract GRS bits before shifting: use fcvt_s_w_round (reads from rs1, uses count)
execute if score fcvt_do_right Computer matches 1 run function computer:alu/fcvt_s_w_round
# Perform the right shift (count = count - 23)
execute if score fcvt_do_right Computer matches 1 run scoreboard players remove count Computer 23
execute if score fcvt_do_right Computer matches 1 run function computer:alu/shift_rd_right_loop

# count < 23: shift left by (23 - lead)
# Recompute count = 23 - lead from rs1 bits (count was not consumed since right shift didn't run)
# Only leads 0..22 apply here (rs1_31..rs1_23 are all 0 since this is the absolute value with lead < 23)
scoreboard players set fcvt_do_left Computer 0
execute if score fcvt_do_right Computer matches 0 run execute unless score count Computer matches 23 run scoreboard players set fcvt_do_left Computer 1
execute if score fcvt_do_left Computer matches 1 run scoreboard players set count Computer 23
execute if score fcvt_do_left Computer matches 1 run execute if score rs1_22 Computer matches 1 run scoreboard players set count Computer 1
execute if score fcvt_do_left Computer matches 1 run execute if score rs1_21 Computer matches 1 run execute if score count Computer matches 23 run scoreboard players set count Computer 2
execute if score fcvt_do_left Computer matches 1 run execute if score rs1_20 Computer matches 1 run execute if score count Computer matches 23 run scoreboard players set count Computer 3
execute if score fcvt_do_left Computer matches 1 run execute if score rs1_19 Computer matches 1 run execute if score count Computer matches 23 run scoreboard players set count Computer 4
execute if score fcvt_do_left Computer matches 1 run execute if score rs1_18 Computer matches 1 run execute if score count Computer matches 23 run scoreboard players set count Computer 5
execute if score fcvt_do_left Computer matches 1 run execute if score rs1_17 Computer matches 1 run execute if score count Computer matches 23 run scoreboard players set count Computer 6
execute if score fcvt_do_left Computer matches 1 run execute if score rs1_16 Computer matches 1 run execute if score count Computer matches 23 run scoreboard players set count Computer 7
execute if score fcvt_do_left Computer matches 1 run execute if score rs1_15 Computer matches 1 run execute if score count Computer matches 23 run scoreboard players set count Computer 8
execute if score fcvt_do_left Computer matches 1 run execute if score rs1_14 Computer matches 1 run execute if score count Computer matches 23 run scoreboard players set count Computer 9
execute if score fcvt_do_left Computer matches 1 run execute if score rs1_13 Computer matches 1 run execute if score count Computer matches 23 run scoreboard players set count Computer 10
execute if score fcvt_do_left Computer matches 1 run execute if score rs1_12 Computer matches 1 run execute if score count Computer matches 23 run scoreboard players set count Computer 11
execute if score fcvt_do_left Computer matches 1 run execute if score rs1_11 Computer matches 1 run execute if score count Computer matches 23 run scoreboard players set count Computer 12
execute if score fcvt_do_left Computer matches 1 run execute if score rs1_10 Computer matches 1 run execute if score count Computer matches 23 run scoreboard players set count Computer 13
execute if score fcvt_do_left Computer matches 1 run execute if score rs1_9 Computer matches 1 run execute if score count Computer matches 23 run scoreboard players set count Computer 14
execute if score fcvt_do_left Computer matches 1 run execute if score rs1_8 Computer matches 1 run execute if score count Computer matches 23 run scoreboard players set count Computer 15
execute if score fcvt_do_left Computer matches 1 run execute if score rs1_7 Computer matches 1 run execute if score count Computer matches 23 run scoreboard players set count Computer 16
execute if score fcvt_do_left Computer matches 1 run execute if score rs1_6 Computer matches 1 run execute if score count Computer matches 23 run scoreboard players set count Computer 17
execute if score fcvt_do_left Computer matches 1 run execute if score rs1_5 Computer matches 1 run execute if score count Computer matches 23 run scoreboard players set count Computer 18
execute if score fcvt_do_left Computer matches 1 run execute if score rs1_4 Computer matches 1 run execute if score count Computer matches 23 run scoreboard players set count Computer 19
execute if score fcvt_do_left Computer matches 1 run execute if score rs1_3 Computer matches 1 run execute if score count Computer matches 23 run scoreboard players set count Computer 20
execute if score fcvt_do_left Computer matches 1 run execute if score rs1_2 Computer matches 1 run execute if score count Computer matches 23 run scoreboard players set count Computer 21
execute if score fcvt_do_left Computer matches 1 run execute if score rs1_1 Computer matches 1 run execute if score count Computer matches 23 run scoreboard players set count Computer 22
execute if score fcvt_do_left Computer matches 1 run execute if score rs1_0 Computer matches 1 run execute if score count Computer matches 23 run scoreboard players set count Computer 23
execute if score fcvt_do_left Computer matches 1 run function computer:alu/shift_rd_left_loop

# Clear bit 23 (the implicit leading 1)
scoreboard players set rd_23 Computer 0
# Clear bits 24-30 (will be set to exponent)
scoreboard players set rd_24 Computer 0
scoreboard players set rd_25 Computer 0
scoreboard players set rd_26 Computer 0
scoreboard players set rd_27 Computer 0
scoreboard players set rd_28 Computer 0
scoreboard players set rd_29 Computer 0
scoreboard players set rd_30 Computer 0

# Compute exponent = count (lead) + 127 using 8-bit adder
# Recompute count = lead from rs1 bits (it was consumed by shift loops)
scoreboard players set count Computer -1
execute if score rs1_31 Computer matches 1 run scoreboard players set count Computer 31
execute if score rs1_30 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 30
execute if score rs1_29 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 29
execute if score rs1_28 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 28
execute if score rs1_27 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 27
execute if score rs1_26 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 26
execute if score rs1_25 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 25
execute if score rs1_24 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 24
execute if score rs1_23 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 23
execute if score rs1_22 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 22
execute if score rs1_21 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 21
execute if score rs1_20 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 20
execute if score rs1_19 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 19
execute if score rs1_18 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 18
execute if score rs1_17 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 17
execute if score rs1_16 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 16
execute if score rs1_15 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 15
execute if score rs1_14 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 14
execute if score rs1_13 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 13
execute if score rs1_12 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 12
execute if score rs1_11 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 11
execute if score rs1_10 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 10
execute if score rs1_9 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 9
execute if score rs1_8 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 8
execute if score rs1_7 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 7
execute if score rs1_6 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 6
execute if score rs1_5 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 5
execute if score rs1_4 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 4
execute if score rs1_3 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 3
execute if score rs1_2 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 2
execute if score rs1_1 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 1
execute if score rs1_0 Computer matches 1 run execute if score count Computer matches -1 run scoreboard players set count Computer 0

# Decompose count (lead, 0-31) into 5 bits for the adder input_l
# Use additive reconstruction: count = bit0*1 + bit1*2 + bit2*4 + bit3*8 + bit4*16
# Extract each bit by subtracting higher powers first
scoreboard players set input_l_4 add8 0
execute if score count Computer matches 16.. run scoreboard players set input_l_4 add8 1
execute if score count Computer matches 16.. run scoreboard players remove count Computer 16
scoreboard players set input_l_3 add8 0
execute if score count Computer matches 8.. run scoreboard players set input_l_3 add8 1
execute if score count Computer matches 8.. run scoreboard players remove count Computer 8
scoreboard players set input_l_2 add8 0
execute if score count Computer matches 4.. run scoreboard players set input_l_2 add8 1
execute if score count Computer matches 4.. run scoreboard players remove count Computer 4
scoreboard players set input_l_1 add8 0
execute if score count Computer matches 2.. run scoreboard players set input_l_1 add8 1
execute if score count Computer matches 2.. run scoreboard players remove count Computer 2
scoreboard players operation input_l_0 add8 = count Computer
scoreboard players set input_l_5 add8 0
scoreboard players set input_l_6 add8 0
scoreboard players set input_l_7 add8 0

# input_r = 127 = 01111111
scoreboard players set input_r_0 add8 1
scoreboard players set input_r_1 add8 1
scoreboard players set input_r_2 add8 1
scoreboard players set input_r_3 add8 1
scoreboard players set input_r_4 add8 1
scoreboard players set input_r_5 add8 1
scoreboard players set input_r_6 add8 1
scoreboard players set input_r_7 add8 0

function computer:alu/add_8bits

# Copy exponent bits to rd[30:23]
scoreboard players operation rd_23 Computer = input_l_0 add8
scoreboard players operation rd_24 Computer = input_l_1 add8
scoreboard players operation rd_25 Computer = input_l_2 add8
scoreboard players operation rd_26 Computer = input_l_3 add8
scoreboard players operation rd_27 Computer = input_l_4 add8
scoreboard players operation rd_28 Computer = input_l_5 add8
scoreboard players operation rd_29 Computer = input_l_6 add8
scoreboard players operation rd_30 Computer = input_l_7 add8

# Apply rounding (may need to increment mantissa and exponent)
execute if score fcvt_do_right Computer matches 1 run execute if score fcvt_do_round Computer matches 1 run function computer:alu/fcvt_s_w_round_up

# Set sign
scoreboard players operation rd_31 Computer = fcvt_sign Computer

function computer:misc/update_rd_7_11_f
