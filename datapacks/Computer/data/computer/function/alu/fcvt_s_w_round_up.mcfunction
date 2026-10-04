# Increment rd mantissa [22:0] by 1 using add25
# If bit 23 overflows, increment exponent (rd[30:23]) using add8

function computer:misc/copy_input_l_add25_from_rd_mantissa

scoreboard players set input_r_0 add25 1
scoreboard players set input_r_1 add25 0
scoreboard players set input_r_2 add25 0
scoreboard players set input_r_3 add25 0
scoreboard players set input_r_4 add25 0
scoreboard players set input_r_5 add25 0
scoreboard players set input_r_6 add25 0
scoreboard players set input_r_7 add25 0
scoreboard players set input_r_8 add25 0
scoreboard players set input_r_9 add25 0
scoreboard players set input_r_10 add25 0
scoreboard players set input_r_11 add25 0
scoreboard players set input_r_12 add25 0
scoreboard players set input_r_13 add25 0
scoreboard players set input_r_14 add25 0
scoreboard players set input_r_15 add25 0
scoreboard players set input_r_16 add25 0
scoreboard players set input_r_17 add25 0
scoreboard players set input_r_18 add25 0
scoreboard players set input_r_19 add25 0
scoreboard players set input_r_20 add25 0
scoreboard players set input_r_21 add25 0
scoreboard players set input_r_22 add25 0
scoreboard players set input_r_23 add25 0
scoreboard players set input_r_24 add25 0

function computer:alu/add_25bits

scoreboard players operation rd_0 Computer = input_l_0 add25
scoreboard players operation rd_1 Computer = input_l_1 add25
scoreboard players operation rd_2 Computer = input_l_2 add25
scoreboard players operation rd_3 Computer = input_l_3 add25
scoreboard players operation rd_4 Computer = input_l_4 add25
scoreboard players operation rd_5 Computer = input_l_5 add25
scoreboard players operation rd_6 Computer = input_l_6 add25
scoreboard players operation rd_7 Computer = input_l_7 add25
scoreboard players operation rd_8 Computer = input_l_8 add25
scoreboard players operation rd_9 Computer = input_l_9 add25
scoreboard players operation rd_10 Computer = input_l_10 add25
scoreboard players operation rd_11 Computer = input_l_11 add25
scoreboard players operation rd_12 Computer = input_l_12 add25
scoreboard players operation rd_13 Computer = input_l_13 add25
scoreboard players operation rd_14 Computer = input_l_14 add25
scoreboard players operation rd_15 Computer = input_l_15 add25
scoreboard players operation rd_16 Computer = input_l_16 add25
scoreboard players operation rd_17 Computer = input_l_17 add25
scoreboard players operation rd_18 Computer = input_l_18 add25
scoreboard players operation rd_19 Computer = input_l_19 add25
scoreboard players operation rd_20 Computer = input_l_20 add25
scoreboard players operation rd_21 Computer = input_l_21 add25
scoreboard players operation rd_22 Computer = input_l_22 add25

# If bit 23 overflowed (mantissa carry), increment exponent and clear mantissa
# Save exponent bits BEFORE reset_rd clears them
execute if score input_l_23 add25 matches 1 run scoreboard players operation input_l_0 add8 = rd_23 Computer
execute if score input_l_23 add25 matches 1 run scoreboard players operation input_l_1 add8 = rd_24 Computer
execute if score input_l_23 add25 matches 1 run scoreboard players operation input_l_2 add8 = rd_25 Computer
execute if score input_l_23 add25 matches 1 run scoreboard players operation input_l_3 add8 = rd_26 Computer
execute if score input_l_23 add25 matches 1 run scoreboard players operation input_l_4 add8 = rd_27 Computer
execute if score input_l_23 add25 matches 1 run scoreboard players operation input_l_5 add8 = rd_28 Computer
execute if score input_l_23 add25 matches 1 run scoreboard players operation input_l_6 add8 = rd_29 Computer
execute if score input_l_23 add25 matches 1 run scoreboard players operation input_l_7 add8 = rd_30 Computer
execute if score input_l_23 add25 matches 1 run function computer:misc/reset_rd
execute if score input_l_23 add25 matches 1 run scoreboard players set input_r_0 add8 1
execute if score input_l_23 add25 matches 1 run scoreboard players set input_r_1 add8 0
execute if score input_l_23 add25 matches 1 run scoreboard players set input_r_2 add8 0
execute if score input_l_23 add25 matches 1 run scoreboard players set input_r_3 add8 0
execute if score input_l_23 add25 matches 1 run scoreboard players set input_r_4 add8 0
execute if score input_l_23 add25 matches 1 run scoreboard players set input_r_5 add8 0
execute if score input_l_23 add25 matches 1 run scoreboard players set input_r_6 add8 0
execute if score input_l_23 add25 matches 1 run scoreboard players set input_r_7 add8 0
execute if score input_l_23 add25 matches 1 run function computer:alu/add_8bits
execute if score input_l_23 add25 matches 1 run scoreboard players operation rd_23 Computer = input_l_0 add8
execute if score input_l_23 add25 matches 1 run scoreboard players operation rd_24 Computer = input_l_1 add8
execute if score input_l_23 add25 matches 1 run scoreboard players operation rd_25 Computer = input_l_2 add8
execute if score input_l_23 add25 matches 1 run scoreboard players operation rd_26 Computer = input_l_3 add8
execute if score input_l_23 add25 matches 1 run scoreboard players operation rd_27 Computer = input_l_4 add8
execute if score input_l_23 add25 matches 1 run scoreboard players operation rd_28 Computer = input_l_5 add8
execute if score input_l_23 add25 matches 1 run scoreboard players operation rd_29 Computer = input_l_6 add8
execute if score input_l_23 add25 matches 1 run scoreboard players operation rd_30 Computer = input_l_7 add8
