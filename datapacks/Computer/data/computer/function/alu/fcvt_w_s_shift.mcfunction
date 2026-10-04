# Place mantissa bits into rd based on exponent
# exp-127 = number of integer bits minus 1
# The implicit 1 goes at position (exp-127), mantissa bits fill below

function computer:misc/reset_rd

# count = exp - 127 (position of the leading 1 in the integer)
# Compute directly from exponent bits (tolerated: used for shift)
scoreboard players set count Computer -127
execute if score rs1_23 Computer matches 1 run scoreboard players add count Computer 1
execute if score rs1_24 Computer matches 1 run scoreboard players add count Computer 2
execute if score rs1_25 Computer matches 1 run scoreboard players add count Computer 4
execute if score rs1_26 Computer matches 1 run scoreboard players add count Computer 8
execute if score rs1_27 Computer matches 1 run scoreboard players add count Computer 16
execute if score rs1_28 Computer matches 1 run scoreboard players add count Computer 32
execute if score rs1_29 Computer matches 1 run scoreboard players add count Computer 64
execute if score rs1_30 Computer matches 1 run scoreboard players add count Computer 128

# Load mantissa + implicit 1 into rd at fixed positions 23..0
scoreboard players set rd_23 Computer 1
scoreboard players operation rd_22 Computer = rs1_22 Computer
scoreboard players operation rd_21 Computer = rs1_21 Computer
scoreboard players operation rd_20 Computer = rs1_20 Computer
scoreboard players operation rd_19 Computer = rs1_19 Computer
scoreboard players operation rd_18 Computer = rs1_18 Computer
scoreboard players operation rd_17 Computer = rs1_17 Computer
scoreboard players operation rd_16 Computer = rs1_16 Computer
scoreboard players operation rd_15 Computer = rs1_15 Computer
scoreboard players operation rd_14 Computer = rs1_14 Computer
scoreboard players operation rd_13 Computer = rs1_13 Computer
scoreboard players operation rd_12 Computer = rs1_12 Computer
scoreboard players operation rd_11 Computer = rs1_11 Computer
scoreboard players operation rd_10 Computer = rs1_10 Computer
scoreboard players operation rd_9 Computer = rs1_9 Computer
scoreboard players operation rd_8 Computer = rs1_8 Computer
scoreboard players operation rd_7 Computer = rs1_7 Computer
scoreboard players operation rd_6 Computer = rs1_6 Computer
scoreboard players operation rd_5 Computer = rs1_5 Computer
scoreboard players operation rd_4 Computer = rs1_4 Computer
scoreboard players operation rd_3 Computer = rs1_3 Computer
scoreboard players operation rd_2 Computer = rs1_2 Computer
scoreboard players operation rd_1 Computer = rs1_1 Computer
scoreboard players operation rd_0 Computer = rs1_0 Computer

# Shift rd to align the implicit 1 at position count
# If count > 23: shift left by (count - 23)
# If count < 23: shift right by (23 - count)
# If count == 23: already aligned

# count > 23: shift left
# Set fcvt_do_left=1 before modifying count, then use it to guard the loop
scoreboard players set fcvt_do_left Computer 0
execute if score count Computer matches 24.. run scoreboard players set fcvt_do_left Computer 1
execute if score count Computer matches 24.. run scoreboard players remove count Computer 23
execute if score fcvt_do_left Computer matches 1 run function computer:alu/shift_rd_left_loop

# count < 23: shift right
# Recompute count = 23 - (exp - 127) since left loop consumed it
scoreboard players set count Computer 150
execute if score rs1_23 Computer matches 1 run scoreboard players remove count Computer 1
execute if score rs1_24 Computer matches 1 run scoreboard players remove count Computer 2
execute if score rs1_25 Computer matches 1 run scoreboard players remove count Computer 4
execute if score rs1_26 Computer matches 1 run scoreboard players remove count Computer 8
execute if score rs1_27 Computer matches 1 run scoreboard players remove count Computer 16
execute if score rs1_28 Computer matches 1 run scoreboard players remove count Computer 32
execute if score rs1_29 Computer matches 1 run scoreboard players remove count Computer 64
execute if score rs1_30 Computer matches 1 run scoreboard players remove count Computer 128
execute if score count Computer matches 1.. run function computer:alu/shift_rd_right_loop

# RNE rounding (only when some mantissa bits were discarded)
# Recompute count = exp - 127 for rounding bit indexing
scoreboard players set count Computer -127
execute if score rs1_23 Computer matches 1 run scoreboard players add count Computer 1
execute if score rs1_24 Computer matches 1 run scoreboard players add count Computer 2
execute if score rs1_25 Computer matches 1 run scoreboard players add count Computer 4
execute if score rs1_26 Computer matches 1 run scoreboard players add count Computer 8
execute if score rs1_27 Computer matches 1 run scoreboard players add count Computer 16
execute if score rs1_28 Computer matches 1 run scoreboard players add count Computer 32
execute if score rs1_29 Computer matches 1 run scoreboard players add count Computer 64
execute if score rs1_30 Computer matches 1 run scoreboard players add count Computer 128
execute if score count Computer matches ..22 run function computer:alu/fcvt_w_s_round

# If negative, take two's complement of rd
execute if score fcvt_sign Computer matches 1 run function computer:alu/fcvt_w_s_negate_rd
