tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running mul","color":"gold"}]
# tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"Error: Not Yet Implemented mul","bold":true,"color":"red"}]
scoreboard players add found_dispatcher Computer 1

# # load
# function computer:misc/load_rd_7_11
function computer:misc/load_rs1_15_19
function computer:misc/load_rs2_20_24

# # mul


data modify storage computer:memory mul set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
execute store result storage computer:memory mul[0] int 1 run scoreboard players get rs2_31 Computer
execute store result storage computer:memory mul[1] int 1 run scoreboard players get rs2_30 Computer
execute store result storage computer:memory mul[2] int 1 run scoreboard players get rs2_29 Computer
execute store result storage computer:memory mul[3] int 1 run scoreboard players get rs2_28 Computer
execute store result storage computer:memory mul[4] int 1 run scoreboard players get rs2_27 Computer
execute store result storage computer:memory mul[5] int 1 run scoreboard players get rs2_26 Computer
execute store result storage computer:memory mul[6] int 1 run scoreboard players get rs2_25 Computer
execute store result storage computer:memory mul[7] int 1 run scoreboard players get rs2_24 Computer
execute store result storage computer:memory mul[8] int 1 run scoreboard players get rs2_23 Computer
execute store result storage computer:memory mul[9] int 1 run scoreboard players get rs2_22 Computer
execute store result storage computer:memory mul[10] int 1 run scoreboard players get rs2_21 Computer
execute store result storage computer:memory mul[11] int 1 run scoreboard players get rs2_20 Computer
execute store result storage computer:memory mul[12] int 1 run scoreboard players get rs2_19 Computer
execute store result storage computer:memory mul[13] int 1 run scoreboard players get rs2_18 Computer
execute store result storage computer:memory mul[14] int 1 run scoreboard players get rs2_17 Computer
execute store result storage computer:memory mul[15] int 1 run scoreboard players get rs2_16 Computer
execute store result storage computer:memory mul[16] int 1 run scoreboard players get rs2_15 Computer
execute store result storage computer:memory mul[17] int 1 run scoreboard players get rs2_14 Computer
execute store result storage computer:memory mul[18] int 1 run scoreboard players get rs2_13 Computer
execute store result storage computer:memory mul[19] int 1 run scoreboard players get rs2_12 Computer
execute store result storage computer:memory mul[20] int 1 run scoreboard players get rs2_11 Computer
execute store result storage computer:memory mul[21] int 1 run scoreboard players get rs2_10 Computer
execute store result storage computer:memory mul[22] int 1 run scoreboard players get rs2_9 Computer
execute store result storage computer:memory mul[23] int 1 run scoreboard players get rs2_8 Computer
execute store result storage computer:memory mul[24] int 1 run scoreboard players get rs2_7 Computer
execute store result storage computer:memory mul[25] int 1 run scoreboard players get rs2_6 Computer
execute store result storage computer:memory mul[26] int 1 run scoreboard players get rs2_5 Computer
execute store result storage computer:memory mul[27] int 1 run scoreboard players get rs2_4 Computer
execute store result storage computer:memory mul[28] int 1 run scoreboard players get rs2_3 Computer
execute store result storage computer:memory mul[29] int 1 run scoreboard players get rs2_2 Computer
execute store result storage computer:memory mul[30] int 1 run scoreboard players get rs2_1 Computer
execute store result storage computer:memory mul[31] int 1 run scoreboard players get rs2_0 Computer

scoreboard players set mul_index Computer 0
function computer:misc/reset_input_l_32bits
scoreboard players set left_mul Computer -1
scoreboard players set right_mul Computer -1
execute if data storage computer:memory mul[-1] run function computer:alu/mul_iterate_over_array

function computer:misc/copy_input_l_to_rd_add32

# # update
function computer:misc/update_rd_7_11