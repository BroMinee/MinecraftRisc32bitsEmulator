tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running sh","color":"gold"}]
#tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"Error: Not Yet Implemented sh","bold":true,"color":"red"}]
scoreboard players add found Computer 1

# sh [rs2], [imm]([rs1])
# memory[rs1+imm] =rs2 as (16 bits) SHOULD be aligned to 4 bytes

# load rs1
function computer:misc/load_rs1_15_19

# load rs2
function computer:misc/load_rs2_20_24


scoreboard players operation input_l_0 add32 = rs1_0 Computer
scoreboard players operation input_l_1 add32 = rs1_1 Computer
scoreboard players operation input_l_2 add32 = rs1_2 Computer
scoreboard players operation input_l_3 add32 = rs1_3 Computer
scoreboard players operation input_l_4 add32 = rs1_4 Computer
scoreboard players operation input_l_5 add32 = rs1_5 Computer
scoreboard players operation input_l_6 add32 = rs1_6 Computer
scoreboard players operation input_l_7 add32 = rs1_7 Computer
scoreboard players operation input_l_8 add32 = rs1_8 Computer
scoreboard players operation input_l_9 add32 = rs1_9 Computer
scoreboard players operation input_l_10 add32 = rs1_10 Computer
scoreboard players operation input_l_11 add32 = rs1_11 Computer
scoreboard players operation input_l_12 add32 = rs1_12 Computer
scoreboard players operation input_l_13 add32 = rs1_13 Computer
scoreboard players operation input_l_14 add32 = rs1_14 Computer
scoreboard players operation input_l_15 add32 = rs1_15 Computer
scoreboard players operation input_l_16 add32 = rs1_16 Computer
scoreboard players operation input_l_17 add32 = rs1_17 Computer
scoreboard players operation input_l_18 add32 = rs1_18 Computer
scoreboard players operation input_l_19 add32 = rs1_19 Computer
scoreboard players operation input_l_20 add32 = rs1_20 Computer
scoreboard players operation input_l_21 add32 = rs1_21 Computer
scoreboard players operation input_l_22 add32 = rs1_22 Computer
scoreboard players operation input_l_23 add32 = rs1_23 Computer
scoreboard players operation input_l_24 add32 = rs1_24 Computer
scoreboard players operation input_l_25 add32 = rs1_25 Computer
scoreboard players operation input_l_26 add32 = rs1_26 Computer
scoreboard players operation input_l_27 add32 = rs1_27 Computer
scoreboard players operation input_l_28 add32 = rs1_28 Computer
scoreboard players operation input_l_29 add32 = rs1_29 Computer
scoreboard players operation input_l_30 add32 = rs1_30 Computer
scoreboard players operation input_l_31 add32 = rs1_31 Computer

scoreboard players operation input_r_0 add32 = read_7 Computer
scoreboard players operation input_r_1 add32 = read_8 Computer
scoreboard players operation input_r_2 add32 = read_9 Computer
scoreboard players operation input_r_3 add32 = read_10 Computer
scoreboard players operation input_r_4 add32 = read_11 Computer
scoreboard players operation input_r_5 add32 = read_25 Computer
scoreboard players operation input_r_6 add32 = read_26 Computer
scoreboard players operation input_r_7 add32 = read_27 Computer
scoreboard players operation input_r_8 add32 = read_28 Computer
scoreboard players operation input_r_9 add32 = read_29 Computer
scoreboard players operation input_r_10 add32 = read_30 Computer
scoreboard players operation input_r_11 add32 = read_31 Computer

execute if score read_31 Computer matches 0 run scoreboard players set input_r_12 add32 0
execute if score read_31 Computer matches 0 run scoreboard players set input_r_13 add32 0
execute if score read_31 Computer matches 0 run scoreboard players set input_r_14 add32 0
execute if score read_31 Computer matches 0 run scoreboard players set input_r_15 add32 0
execute if score read_31 Computer matches 0 run scoreboard players set input_r_16 add32 0
execute if score read_31 Computer matches 0 run scoreboard players set input_r_17 add32 0
execute if score read_31 Computer matches 0 run scoreboard players set input_r_18 add32 0
execute if score read_31 Computer matches 0 run scoreboard players set input_r_19 add32 0
execute if score read_31 Computer matches 0 run scoreboard players set input_r_20 add32 0
execute if score read_31 Computer matches 0 run scoreboard players set input_r_21 add32 0
execute if score read_31 Computer matches 0 run scoreboard players set input_r_22 add32 0
execute if score read_31 Computer matches 0 run scoreboard players set input_r_23 add32 0
execute if score read_31 Computer matches 0 run scoreboard players set input_r_24 add32 0
execute if score read_31 Computer matches 0 run scoreboard players set input_r_25 add32 0
execute if score read_31 Computer matches 0 run scoreboard players set input_r_26 add32 0
execute if score read_31 Computer matches 0 run scoreboard players set input_r_27 add32 0
execute if score read_31 Computer matches 0 run scoreboard players set input_r_28 add32 0
execute if score read_31 Computer matches 0 run scoreboard players set input_r_29 add32 0
execute if score read_31 Computer matches 0 run scoreboard players set input_r_30 add32 0
execute if score read_31 Computer matches 0 run scoreboard players set input_r_31 add32 0

execute if score read_31 Computer matches 1 run scoreboard players set input_r_12 add32 1
execute if score read_31 Computer matches 1 run scoreboard players set input_r_13 add32 1
execute if score read_31 Computer matches 1 run scoreboard players set input_r_14 add32 1
execute if score read_31 Computer matches 1 run scoreboard players set input_r_15 add32 1
execute if score read_31 Computer matches 1 run scoreboard players set input_r_16 add32 1
execute if score read_31 Computer matches 1 run scoreboard players set input_r_17 add32 1
execute if score read_31 Computer matches 1 run scoreboard players set input_r_18 add32 1
execute if score read_31 Computer matches 1 run scoreboard players set input_r_19 add32 1
execute if score read_31 Computer matches 1 run scoreboard players set input_r_20 add32 1
execute if score read_31 Computer matches 1 run scoreboard players set input_r_21 add32 1
execute if score read_31 Computer matches 1 run scoreboard players set input_r_22 add32 1
execute if score read_31 Computer matches 1 run scoreboard players set input_r_23 add32 1
execute if score read_31 Computer matches 1 run scoreboard players set input_r_24 add32 1
execute if score read_31 Computer matches 1 run scoreboard players set input_r_25 add32 1
execute if score read_31 Computer matches 1 run scoreboard players set input_r_26 add32 1
execute if score read_31 Computer matches 1 run scoreboard players set input_r_27 add32 1
execute if score read_31 Computer matches 1 run scoreboard players set input_r_28 add32 1
execute if score read_31 Computer matches 1 run scoreboard players set input_r_29 add32 1
execute if score read_31 Computer matches 1 run scoreboard players set input_r_30 add32 1
execute if score read_31 Computer matches 1 run scoreboard players set input_r_31 add32 1

# compute rs1 + imm
function computer:alu/add_32bits
# result is currently stored in input_l_0

scoreboard players operation rs1_0 Computer = input_l_0 add32
scoreboard players operation rs1_1 Computer = input_l_1 add32
scoreboard players operation rs1_2 Computer = input_l_2 add32
scoreboard players operation rs1_3 Computer = input_l_3 add32
scoreboard players operation rs1_4 Computer = input_l_4 add32
scoreboard players operation rs1_5 Computer = input_l_5 add32
scoreboard players operation rs1_6 Computer = input_l_6 add32
scoreboard players operation rs1_7 Computer = input_l_7 add32
scoreboard players operation rs1_8 Computer = input_l_8 add32
scoreboard players operation rs1_9 Computer = input_l_9 add32
scoreboard players operation rs1_10 Computer = input_l_10 add32
scoreboard players operation rs1_11 Computer = input_l_11 add32
scoreboard players operation rs1_12 Computer = input_l_12 add32
scoreboard players operation rs1_13 Computer = input_l_13 add32
scoreboard players operation rs1_14 Computer = input_l_14 add32
scoreboard players operation rs1_15 Computer = input_l_15 add32
scoreboard players operation rs1_16 Computer = input_l_16 add32
scoreboard players operation rs1_17 Computer = input_l_17 add32
scoreboard players operation rs1_18 Computer = input_l_18 add32
scoreboard players operation rs1_19 Computer = input_l_19 add32
scoreboard players operation rs1_20 Computer = input_l_20 add32
scoreboard players operation rs1_21 Computer = input_l_21 add32
scoreboard players operation rs1_22 Computer = input_l_22 add32
scoreboard players operation rs1_23 Computer = input_l_23 add32
scoreboard players operation rs1_24 Computer = input_l_24 add32
scoreboard players operation rs1_25 Computer = input_l_25 add32
scoreboard players operation rs1_26 Computer = input_l_26 add32
scoreboard players operation rs1_27 Computer = input_l_27 add32
scoreboard players operation rs1_28 Computer = input_l_28 add32
scoreboard players operation rs1_29 Computer = input_l_29 add32
scoreboard players operation rs1_30 Computer = input_l_30 add32
scoreboard players operation rs1_31 Computer = input_l_31 add32

execute as @e[limit=1,type=armor_stand,tag=write] run function computer:write/tp_rs1
execute as @e[limit=1,type=armor_stand,tag=write] run function computer:write/write_rs2_16bit