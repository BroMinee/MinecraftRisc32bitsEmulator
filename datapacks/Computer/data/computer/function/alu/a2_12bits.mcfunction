# input input_[0-11] A2
# output input_[0-11] A2
# perform a 12-bit arithmetic operation


scoreboard players operation input_0 A2 += 1 FixedValue
scoreboard players operation input_1 A2 += 1 FixedValue
scoreboard players operation input_2 A2 += 1 FixedValue
scoreboard players operation input_3 A2 += 1 FixedValue
scoreboard players operation input_4 A2 += 1 FixedValue
scoreboard players operation input_5 A2 += 1 FixedValue
scoreboard players operation input_6 A2 += 1 FixedValue
scoreboard players operation input_7 A2 += 1 FixedValue
scoreboard players operation input_8 A2 += 1 FixedValue
scoreboard players operation input_9 A2 += 1 FixedValue
scoreboard players operation input_10 A2 += 1 FixedValue
scoreboard players operation input_11 A2 += 1 FixedValue


scoreboard players operation input_0 A2 %= 2 FixedValue
scoreboard players operation input_1 A2 %= 2 FixedValue
scoreboard players operation input_2 A2 %= 2 FixedValue
scoreboard players operation input_3 A2 %= 2 FixedValue
scoreboard players operation input_4 A2 %= 2 FixedValue
scoreboard players operation input_5 A2 %= 2 FixedValue
scoreboard players operation input_6 A2 %= 2 FixedValue
scoreboard players operation input_7 A2 %= 2 FixedValue
scoreboard players operation input_8 A2 %= 2 FixedValue
scoreboard players operation input_9 A2 %= 2 FixedValue
scoreboard players operation input_10 A2 %= 2 FixedValue
scoreboard players operation input_11 A2 %= 2 FixedValue


scoreboard players set input_r_0 add12 1
scoreboard players set input_r_1 add12 0
scoreboard players set input_r_2 add12 0
scoreboard players set input_r_3 add12 0
scoreboard players set input_r_4 add12 0
scoreboard players set input_r_5 add12 0
scoreboard players set input_r_6 add12 0
scoreboard players set input_r_7 add12 0
scoreboard players set input_r_8 add12 0
scoreboard players set input_r_9 add12 0
scoreboard players set input_r_10 add12 0
scoreboard players set input_r_11 add12 0

scoreboard players operation input_l_0 add12 = input_0 A2
scoreboard players operation input_l_1 add12 = input_1 A2
scoreboard players operation input_l_2 add12 = input_2 A2
scoreboard players operation input_l_3 add12 = input_3 A2
scoreboard players operation input_l_4 add12 = input_4 A2
scoreboard players operation input_l_5 add12 = input_5 A2
scoreboard players operation input_l_6 add12 = input_6 A2
scoreboard players operation input_l_7 add12 = input_7 A2
scoreboard players operation input_l_8 add12 = input_8 A2
scoreboard players operation input_l_9 add12 = input_9 A2
scoreboard players operation input_l_10 add12 = input_10 A2
scoreboard players operation input_l_11 add12 = input_11 A2

function computer:alu/add_12bits

scoreboard players operation input_0 A2 = input_l_0 add12
scoreboard players operation input_1 A2 = input_l_1 add12
scoreboard players operation input_2 A2 = input_l_2 add12
scoreboard players operation input_3 A2 = input_l_3 add12
scoreboard players operation input_4 A2 = input_l_4 add12
scoreboard players operation input_5 A2 = input_l_5 add12
scoreboard players operation input_6 A2 = input_l_6 add12
scoreboard players operation input_7 A2 = input_l_7 add12
scoreboard players operation input_8 A2 = input_l_8 add12
scoreboard players operation input_9 A2 = input_l_9 add12
scoreboard players operation input_10 A2 = input_l_10 add12
scoreboard players operation input_11 A2 = input_l_11 add12