tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running divu","color":"gold"}]
#tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"Error: Not Yet Implemented divu","bold":true,"color":"red"}]
scoreboard players add found_dispatcher Computer 1


function computer:misc/load_rs1_15_19
function computer:misc/load_rs2_20_24

# divu

data modify storage computer:memory div_res set value []
data modify storage computer:memory div set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
execute store result storage computer:memory div[0] int 1 run scoreboard players get rs1_0 Computer
execute store result storage computer:memory div[1] int 1 run scoreboard players get rs1_1 Computer
execute store result storage computer:memory div[2] int 1 run scoreboard players get rs1_2 Computer
execute store result storage computer:memory div[3] int 1 run scoreboard players get rs1_3 Computer
execute store result storage computer:memory div[4] int 1 run scoreboard players get rs1_4 Computer
execute store result storage computer:memory div[5] int 1 run scoreboard players get rs1_5 Computer
execute store result storage computer:memory div[6] int 1 run scoreboard players get rs1_6 Computer
execute store result storage computer:memory div[7] int 1 run scoreboard players get rs1_7 Computer
execute store result storage computer:memory div[8] int 1 run scoreboard players get rs1_8 Computer
execute store result storage computer:memory div[9] int 1 run scoreboard players get rs1_9 Computer
execute store result storage computer:memory div[10] int 1 run scoreboard players get rs1_10 Computer
execute store result storage computer:memory div[11] int 1 run scoreboard players get rs1_11 Computer
execute store result storage computer:memory div[12] int 1 run scoreboard players get rs1_12 Computer
execute store result storage computer:memory div[13] int 1 run scoreboard players get rs1_13 Computer
execute store result storage computer:memory div[14] int 1 run scoreboard players get rs1_14 Computer
execute store result storage computer:memory div[15] int 1 run scoreboard players get rs1_15 Computer
execute store result storage computer:memory div[16] int 1 run scoreboard players get rs1_16 Computer
execute store result storage computer:memory div[17] int 1 run scoreboard players get rs1_17 Computer
execute store result storage computer:memory div[18] int 1 run scoreboard players get rs1_18 Computer
execute store result storage computer:memory div[19] int 1 run scoreboard players get rs1_19 Computer
execute store result storage computer:memory div[20] int 1 run scoreboard players get rs1_20 Computer
execute store result storage computer:memory div[21] int 1 run scoreboard players get rs1_21 Computer
execute store result storage computer:memory div[22] int 1 run scoreboard players get rs1_22 Computer
execute store result storage computer:memory div[23] int 1 run scoreboard players get rs1_23 Computer
execute store result storage computer:memory div[24] int 1 run scoreboard players get rs1_24 Computer
execute store result storage computer:memory div[25] int 1 run scoreboard players get rs1_25 Computer
execute store result storage computer:memory div[26] int 1 run scoreboard players get rs1_26 Computer
execute store result storage computer:memory div[27] int 1 run scoreboard players get rs1_27 Computer
execute store result storage computer:memory div[28] int 1 run scoreboard players get rs1_28 Computer
execute store result storage computer:memory div[29] int 1 run scoreboard players get rs1_29 Computer
execute store result storage computer:memory div[30] int 1 run scoreboard players get rs1_30 Computer
execute store result storage computer:memory div[31] int 1 run scoreboard players get rs1_31 Computer

function computer:misc/copy_rs2_to_a2
function computer:alu/a2_32bits
function computer:misc/copy_input_a2_to_input_r_add32


function computer:misc/reset_rd
function computer:misc/reset_input_l_32bits
execute if data storage computer:memory div[-1] run function computer:alu/divu_iterate_over_array


execute store result score rd_0 Computer run data get storage computer:memory div_res[31]
execute store result score rd_1 Computer run data get storage computer:memory div_res[30]
execute store result score rd_2 Computer run data get storage computer:memory div_res[29]
execute store result score rd_3 Computer run data get storage computer:memory div_res[28]
execute store result score rd_4 Computer run data get storage computer:memory div_res[27]
execute store result score rd_5 Computer run data get storage computer:memory div_res[26]
execute store result score rd_6 Computer run data get storage computer:memory div_res[25]
execute store result score rd_7 Computer run data get storage computer:memory div_res[24]
execute store result score rd_8 Computer run data get storage computer:memory div_res[23]
execute store result score rd_9 Computer run data get storage computer:memory div_res[22]
execute store result score rd_10 Computer run data get storage computer:memory div_res[21]
execute store result score rd_11 Computer run data get storage computer:memory div_res[20]
execute store result score rd_12 Computer run data get storage computer:memory div_res[19]
execute store result score rd_13 Computer run data get storage computer:memory div_res[18]
execute store result score rd_14 Computer run data get storage computer:memory div_res[17]
execute store result score rd_15 Computer run data get storage computer:memory div_res[16]
execute store result score rd_16 Computer run data get storage computer:memory div_res[15]
execute store result score rd_17 Computer run data get storage computer:memory div_res[14]
execute store result score rd_18 Computer run data get storage computer:memory div_res[13]
execute store result score rd_19 Computer run data get storage computer:memory div_res[12]
execute store result score rd_20 Computer run data get storage computer:memory div_res[11]
execute store result score rd_21 Computer run data get storage computer:memory div_res[10]
execute store result score rd_22 Computer run data get storage computer:memory div_res[9]
execute store result score rd_23 Computer run data get storage computer:memory div_res[8]
execute store result score rd_24 Computer run data get storage computer:memory div_res[7]
execute store result score rd_25 Computer run data get storage computer:memory div_res[6]
execute store result score rd_26 Computer run data get storage computer:memory div_res[5]
execute store result score rd_27 Computer run data get storage computer:memory div_res[4]
execute store result score rd_28 Computer run data get storage computer:memory div_res[3]
execute store result score rd_29 Computer run data get storage computer:memory div_res[2]
execute store result score rd_30 Computer run data get storage computer:memory div_res[1]
execute store result score rd_31 Computer run data get storage computer:memory div_res[0]


# # update
function computer:misc/update_rd_7_11