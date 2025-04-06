# input input_l_[0-25] add25
# output input_l_[0-25] add25

# shifting right -> incrementing rs exponent
execute if score rs1_lower Computer matches 1 run function computer:alu/add_1_rs2_exponent
execute if score rs1_lower Computer matches 0 run function computer:alu/add_1_rs1_exponent
scoreboard players add nb_shifting_mantissa Computer 1


scoreboard players operation fadd_last_bit Computer = input_l_0 add25
execute if score input_l_0 add25 matches 1 run scoreboard players add fadd_nb_1_discarded Computer 1

scoreboard players operation input_l_0 add25 = input_l_1 add25
scoreboard players operation input_l_1 add25 = input_l_2 add25
scoreboard players operation input_l_2 add25 = input_l_3 add25
scoreboard players operation input_l_3 add25 = input_l_4 add25
scoreboard players operation input_l_4 add25 = input_l_5 add25
scoreboard players operation input_l_5 add25 = input_l_6 add25
scoreboard players operation input_l_6 add25 = input_l_7 add25
scoreboard players operation input_l_7 add25 = input_l_8 add25
scoreboard players operation input_l_8 add25 = input_l_9 add25
scoreboard players operation input_l_9 add25 = input_l_10 add25
scoreboard players operation input_l_10 add25 = input_l_11 add25
scoreboard players operation input_l_11 add25 = input_l_12 add25
scoreboard players operation input_l_12 add25 = input_l_13 add25
scoreboard players operation input_l_13 add25 = input_l_14 add25
scoreboard players operation input_l_14 add25 = input_l_15 add25
scoreboard players operation input_l_15 add25 = input_l_16 add25
scoreboard players operation input_l_16 add25 = input_l_17 add25
scoreboard players operation input_l_17 add25 = input_l_18 add25
scoreboard players operation input_l_18 add25 = input_l_19 add25
scoreboard players operation input_l_19 add25 = input_l_20 add25
scoreboard players operation input_l_20 add25 = input_l_21 add25
scoreboard players operation input_l_21 add25 = input_l_22 add25
scoreboard players operation input_l_22 add25 = input_l_23 add25
scoreboard players operation input_l_23 add25 = input_l_24 add25
scoreboard players set input_l_24 add25 0

scoreboard players set keep_going_shift_mantissa Computer 1

execute if score input_l_24 add25 matches 0 run execute if score input_l_23 add25 matches 1 run scoreboard players set keep_going_shift_mantissa Computer 0

execute if score keep_going_shift_mantissa Computer matches 1 run execute if score nb_shifting_mantissa Computer matches 23 run tellraw @a[tag=ERROR] ["",{"text":"Error: [shift_right_input_l_add_25_until_alignement] 23 cycles reteched","color":"red","bold": true}]
execute if score keep_going_shift_mantissa Computer matches 1 run execute if score nb_shifting_mantissa Computer matches 23 run scoreboard players set error stats 1

execute if score keep_going_shift_mantissa Computer matches 1 run execute if score nb_shifting_mantissa Computer matches ..22 run function computer:alu/shift_right_input_l_add25_until_alignement

