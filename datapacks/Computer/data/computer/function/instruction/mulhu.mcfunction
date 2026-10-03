tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running mulhu","color":"gold"}]

# tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"Error: Not Yet Implemented mulhu","bold":true,"color":"red"}]
# scoreboard players set error stats 1
scoreboard players add found_dispatcher Computer 1

# load
function computer:misc/load_rd_7_11
function computer:misc/load_rs1_15_19
function computer:misc/load_rs2_20_24

# Store rs2 bits into array (MSB first, same format as mul)
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

# Initialize shifted rs1: rd = rs1 (low 32), mulhu_sh = 0 (high 32)
function computer:misc/copy_rs1_to_rd
scoreboard players set mulhu_sh_0 Computer 0
scoreboard players set mulhu_sh_1 Computer 0
scoreboard players set mulhu_sh_2 Computer 0
scoreboard players set mulhu_sh_3 Computer 0
scoreboard players set mulhu_sh_4 Computer 0
scoreboard players set mulhu_sh_5 Computer 0
scoreboard players set mulhu_sh_6 Computer 0
scoreboard players set mulhu_sh_7 Computer 0
scoreboard players set mulhu_sh_8 Computer 0
scoreboard players set mulhu_sh_9 Computer 0
scoreboard players set mulhu_sh_10 Computer 0
scoreboard players set mulhu_sh_11 Computer 0
scoreboard players set mulhu_sh_12 Computer 0
scoreboard players set mulhu_sh_13 Computer 0
scoreboard players set mulhu_sh_14 Computer 0
scoreboard players set mulhu_sh_15 Computer 0
scoreboard players set mulhu_sh_16 Computer 0
scoreboard players set mulhu_sh_17 Computer 0
scoreboard players set mulhu_sh_18 Computer 0
scoreboard players set mulhu_sh_19 Computer 0
scoreboard players set mulhu_sh_20 Computer 0
scoreboard players set mulhu_sh_21 Computer 0
scoreboard players set mulhu_sh_22 Computer 0
scoreboard players set mulhu_sh_23 Computer 0
scoreboard players set mulhu_sh_24 Computer 0
scoreboard players set mulhu_sh_25 Computer 0
scoreboard players set mulhu_sh_26 Computer 0
scoreboard players set mulhu_sh_27 Computer 0
scoreboard players set mulhu_sh_28 Computer 0
scoreboard players set mulhu_sh_29 Computer 0
scoreboard players set mulhu_sh_30 Computer 0
scoreboard players set mulhu_sh_31 Computer 0

# Initialize 64-bit accumulator to 0
function computer:misc/reset_input_l_32bits
scoreboard players set mulhu_acc_0 Computer 0
scoreboard players set mulhu_acc_1 Computer 0
scoreboard players set mulhu_acc_2 Computer 0
scoreboard players set mulhu_acc_3 Computer 0
scoreboard players set mulhu_acc_4 Computer 0
scoreboard players set mulhu_acc_5 Computer 0
scoreboard players set mulhu_acc_6 Computer 0
scoreboard players set mulhu_acc_7 Computer 0
scoreboard players set mulhu_acc_8 Computer 0
scoreboard players set mulhu_acc_9 Computer 0
scoreboard players set mulhu_acc_10 Computer 0
scoreboard players set mulhu_acc_11 Computer 0
scoreboard players set mulhu_acc_12 Computer 0
scoreboard players set mulhu_acc_13 Computer 0
scoreboard players set mulhu_acc_14 Computer 0
scoreboard players set mulhu_acc_15 Computer 0
scoreboard players set mulhu_acc_16 Computer 0
scoreboard players set mulhu_acc_17 Computer 0
scoreboard players set mulhu_acc_18 Computer 0
scoreboard players set mulhu_acc_19 Computer 0
scoreboard players set mulhu_acc_20 Computer 0
scoreboard players set mulhu_acc_21 Computer 0
scoreboard players set mulhu_acc_22 Computer 0
scoreboard players set mulhu_acc_23 Computer 0
scoreboard players set mulhu_acc_24 Computer 0
scoreboard players set mulhu_acc_25 Computer 0
scoreboard players set mulhu_acc_26 Computer 0
scoreboard players set mulhu_acc_27 Computer 0
scoreboard players set mulhu_acc_28 Computer 0
scoreboard players set mulhu_acc_29 Computer 0
scoreboard players set mulhu_acc_30 Computer 0
scoreboard players set mulhu_acc_31 Computer 0

# Iterate through all 32 bits
scoreboard players set mulhu_bit_pos Computer 0
execute if data storage computer:memory mul[-1] run function computer:alu/mulhu_iterate

# Result: upper 32 bits are in mulhu_acc_0..31 -> copy to rd
scoreboard players operation rd_0 Computer = mulhu_acc_0 Computer
scoreboard players operation rd_1 Computer = mulhu_acc_1 Computer
scoreboard players operation rd_2 Computer = mulhu_acc_2 Computer
scoreboard players operation rd_3 Computer = mulhu_acc_3 Computer
scoreboard players operation rd_4 Computer = mulhu_acc_4 Computer
scoreboard players operation rd_5 Computer = mulhu_acc_5 Computer
scoreboard players operation rd_6 Computer = mulhu_acc_6 Computer
scoreboard players operation rd_7 Computer = mulhu_acc_7 Computer
scoreboard players operation rd_8 Computer = mulhu_acc_8 Computer
scoreboard players operation rd_9 Computer = mulhu_acc_9 Computer
scoreboard players operation rd_10 Computer = mulhu_acc_10 Computer
scoreboard players operation rd_11 Computer = mulhu_acc_11 Computer
scoreboard players operation rd_12 Computer = mulhu_acc_12 Computer
scoreboard players operation rd_13 Computer = mulhu_acc_13 Computer
scoreboard players operation rd_14 Computer = mulhu_acc_14 Computer
scoreboard players operation rd_15 Computer = mulhu_acc_15 Computer
scoreboard players operation rd_16 Computer = mulhu_acc_16 Computer
scoreboard players operation rd_17 Computer = mulhu_acc_17 Computer
scoreboard players operation rd_18 Computer = mulhu_acc_18 Computer
scoreboard players operation rd_19 Computer = mulhu_acc_19 Computer
scoreboard players operation rd_20 Computer = mulhu_acc_20 Computer
scoreboard players operation rd_21 Computer = mulhu_acc_21 Computer
scoreboard players operation rd_22 Computer = mulhu_acc_22 Computer
scoreboard players operation rd_23 Computer = mulhu_acc_23 Computer
scoreboard players operation rd_24 Computer = mulhu_acc_24 Computer
scoreboard players operation rd_25 Computer = mulhu_acc_25 Computer
scoreboard players operation rd_26 Computer = mulhu_acc_26 Computer
scoreboard players operation rd_27 Computer = mulhu_acc_27 Computer
scoreboard players operation rd_28 Computer = mulhu_acc_28 Computer
scoreboard players operation rd_29 Computer = mulhu_acc_29 Computer
scoreboard players operation rd_30 Computer = mulhu_acc_30 Computer
scoreboard players operation rd_31 Computer = mulhu_acc_31 Computer

function computer:misc/update_rd_7_11
