# input input_l_[0-31] add8 AND input_r_[0-31] add8
# output input_l_[0-31] add8
scoreboard players set C add8 0

scoreboard players operation input_l_0 add8 += input_r_0 add8
execute store result score C add8 run execute if score input_l_0 add8 matches 2..
scoreboard players operation input_l_0 add8 %= 2 FixedValue


scoreboard players operation input_l_1 add8 += input_r_1 add8
scoreboard players operation input_l_1 add8 += C add8
execute store result score C add8 run execute if score input_l_1 add8 matches 2..
scoreboard players operation input_l_1 add8 %= 2 FixedValue

scoreboard players operation input_l_2 add8 += input_r_2 add8
scoreboard players operation input_l_2 add8 += C add8
execute store result score C add8 run execute if score input_l_2 add8 matches 2..
scoreboard players operation input_l_2 add8 %= 2 FixedValue

scoreboard players operation input_l_3 add8 += input_r_3 add8
scoreboard players operation input_l_3 add8 += C add8
execute store result score C add8 run execute if score input_l_3 add8 matches 2..
scoreboard players operation input_l_3 add8 %= 2 FixedValue

scoreboard players operation input_l_4 add8 += input_r_4 add8
scoreboard players operation input_l_4 add8 += C add8
execute store result score C add8 run execute if score input_l_4 add8 matches 2..
scoreboard players operation input_l_4 add8 %= 2 FixedValue

scoreboard players operation input_l_5 add8 += input_r_5 add8
scoreboard players operation input_l_5 add8 += C add8
execute store result score C add8 run execute if score input_l_5 add8 matches 2..
scoreboard players operation input_l_5 add8 %= 2 FixedValue

scoreboard players operation input_l_6 add8 += input_r_6 add8
scoreboard players operation input_l_6 add8 += C add8
execute store result score C add8 run execute if score input_l_6 add8 matches 2..
scoreboard players operation input_l_6 add8 %= 2 FixedValue

scoreboard players operation input_l_7 add8 += input_r_7 add8
scoreboard players operation input_l_7 add8 += C add8
execute store result score C add8 run execute if score input_l_7 add8 matches 2..
scoreboard players operation input_l_7 add8 %= 2 FixedValue
