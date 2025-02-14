# input input_[0-11] A2 and rs2_[0-4] Computer
# output input_[0-11] A2
# perform a 12-bit arithmetic operation
# MUST be called when rs2 is NOT 0 since it does 1 shift and recall itself using rs2[0-4] = 0b00000

scoreboard players add count Computer 1
function computer:alu/shift_arith_rd_right_1

scoreboard players operation input_l_0 add12 = rs2_0 Computer
scoreboard players operation input_l_1 add12 = rs2_1 Computer
scoreboard players operation input_l_2 add12 = rs2_2 Computer
scoreboard players operation input_l_3 add12 = rs2_3 Computer
scoreboard players operation input_l_4 add12 = rs2_4 Computer


scoreboard players set input_r_0 add12 1
scoreboard players set input_r_1 add12 1
scoreboard players set input_r_2 add12 1
scoreboard players set input_r_3 add12 1
scoreboard players set input_r_4 add12 1

function computer:alu/add_12bits

scoreboard players set keep_going Computer 0

scoreboard players operation rs2_0 Computer = input_l_0 add12
scoreboard players operation rs2_1 Computer = input_l_1 add12
scoreboard players operation rs2_2 Computer = input_l_2 add12
scoreboard players operation rs2_3 Computer = input_l_3 add12
scoreboard players operation rs2_4 Computer = input_l_4 add12

execute if score rs2_0 Computer matches 1 run scoreboard players set keep_going Computer 1
execute if score rs2_1 Computer matches 1 run scoreboard players set keep_going Computer 1
execute if score rs2_2 Computer matches 1 run scoreboard players set keep_going Computer 1
execute if score rs2_3 Computer matches 1 run scoreboard players set keep_going Computer 1
execute if score rs2_4 Computer matches 1 run scoreboard players set keep_going Computer 1

execute if score keep_going Computer matches 1 run execute unless score count Computer matches 32.. run function computer:alu/shift_arith_rd_right_based_on_rs2_5bits
