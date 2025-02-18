tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running lb","color":"gold"}]
# tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"Error: Not Yet Implemented lb","bold":true,"color":"red"}]
scoreboard players add found_dispatcher Computer 1


# lhu [rd], [imm]([rs1])
# rd = memory[rs1+imm] as (8 bits sign extended to 32) SHOULD be aligned to 4 bytes

# load rs1
function computer:misc/load_rs1_15_19

function computer:misc/copy_rs1_to_input_l_add32

scoreboard players operation input_r_0 add32 = read_20 Computer
scoreboard players operation input_r_1 add32 = read_21 Computer
scoreboard players operation input_r_2 add32 = read_22 Computer
scoreboard players operation input_r_3 add32 = read_23 Computer
scoreboard players operation input_r_4 add32 = read_24 Computer
scoreboard players operation input_r_5 add32 = read_25 Computer
scoreboard players operation input_r_6 add32 = read_26 Computer
scoreboard players operation input_r_7 add32 = read_27 Computer
scoreboard players operation input_r_8 add32 = read_28 Computer
scoreboard players operation input_r_9 add32 = read_29 Computer
scoreboard players operation input_r_10 add32 = read_30 Computer
scoreboard players operation input_r_11 add32 = read_31 Computer

# sign extend
scoreboard players operation input_r_12 add32 = input_r_11 add32
scoreboard players operation input_r_13 add32 = input_r_11 add32
scoreboard players operation input_r_14 add32 = input_r_11 add32
scoreboard players operation input_r_15 add32 = input_r_11 add32
scoreboard players operation input_r_16 add32 = input_r_11 add32
scoreboard players operation input_r_17 add32 = input_r_11 add32
scoreboard players operation input_r_18 add32 = input_r_11 add32
scoreboard players operation input_r_19 add32 = input_r_11 add32
scoreboard players operation input_r_20 add32 = input_r_11 add32
scoreboard players operation input_r_21 add32 = input_r_11 add32
scoreboard players operation input_r_22 add32 = input_r_11 add32
scoreboard players operation input_r_23 add32 = input_r_11 add32
scoreboard players operation input_r_24 add32 = input_r_11 add32
scoreboard players operation input_r_25 add32 = input_r_11 add32
scoreboard players operation input_r_26 add32 = input_r_11 add32
scoreboard players operation input_r_27 add32 = input_r_11 add32
scoreboard players operation input_r_28 add32 = input_r_11 add32
scoreboard players operation input_r_29 add32 = input_r_11 add32
scoreboard players operation input_r_30 add32 = input_r_11 add32
scoreboard players operation input_r_31 add32 = input_r_11 add32

# compute rs1 + imm
function computer:alu/add_32bits
# result is currently stored in input_l_0

function computer:misc/copy_input_l_to_rs1_add32

execute as @e[limit=1,type=armor_stand,tag=write] run function computer:write/tp_rs1


scoreboard players set read_31 Computer 0
scoreboard players set read_30 Computer 0
scoreboard players set read_29 Computer 0
scoreboard players set read_28 Computer 0
scoreboard players set read_27 Computer 0
scoreboard players set read_26 Computer 0
scoreboard players set read_25 Computer 0
scoreboard players set read_24 Computer 0
scoreboard players set read_23 Computer 0
scoreboard players set read_22 Computer 0
scoreboard players set read_21 Computer 0
scoreboard players set read_20 Computer 0
scoreboard players set read_19 Computer 0
scoreboard players set read_18 Computer 0
scoreboard players set read_17 Computer 0
scoreboard players set read_16 Computer 0
scoreboard players set read_15 Computer 0
scoreboard players set read_14 Computer 0
scoreboard players set read_13 Computer 0
scoreboard players set read_12 Computer 0
scoreboard players set read_11 Computer 0
scoreboard players set read_10 Computer 0
scoreboard players set read_9 Computer 0
scoreboard players set read_8 Computer 0
scoreboard players set read_7 Computer 0

execute at @e[limit=1,type=armor_stand,tag=write] run function computer:read/read8bits
scoreboard players operation read_0 Computer = read_0 read8
scoreboard players operation read_1 Computer = read_1 read8
scoreboard players operation read_2 Computer = read_2 read8
scoreboard players operation read_3 Computer = read_3 read8
scoreboard players operation read_4 Computer = read_4 read8
scoreboard players operation read_5 Computer = read_5 read8
scoreboard players operation read_6 Computer = read_6 read8
scoreboard players operation read_7 Computer = read_7 read8

data modify storage computer:memory type set value "Read memory 8 bits"
function computer:debug/pre_debug_read_32

scoreboard players operation rd_0 Computer = read_0 Computer
scoreboard players operation rd_1 Computer = read_1 Computer
scoreboard players operation rd_2 Computer = read_2 Computer
scoreboard players operation rd_3 Computer = read_3 Computer
scoreboard players operation rd_4 Computer = read_4 Computer
scoreboard players operation rd_5 Computer = read_5 Computer
scoreboard players operation rd_6 Computer = read_6 Computer
scoreboard players operation rd_7 Computer = read_7 Computer
scoreboard players operation rd_8 Computer = rd_7 Computer
scoreboard players operation rd_9 Computer = rd_7 Computer
scoreboard players operation rd_10 Computer = rd_7 Computer
scoreboard players operation rd_11 Computer = rd_7 Computer
scoreboard players operation rd_12 Computer = rd_7 Computer
scoreboard players operation rd_13 Computer = rd_7 Computer
scoreboard players operation rd_14 Computer = rd_7 Computer
scoreboard players operation rd_15 Computer = rd_7 Computer
scoreboard players operation rd_16 Computer = rd_7 Computer
scoreboard players operation rd_17 Computer = rd_7 Computer
scoreboard players operation rd_18 Computer = rd_7 Computer
scoreboard players operation rd_19 Computer = rd_7 Computer
scoreboard players operation rd_20 Computer = rd_7 Computer
scoreboard players operation rd_21 Computer = rd_7 Computer
scoreboard players operation rd_22 Computer = rd_7 Computer
scoreboard players operation rd_23 Computer = rd_7 Computer
scoreboard players operation rd_24 Computer = rd_7 Computer
scoreboard players operation rd_25 Computer = rd_7 Computer
scoreboard players operation rd_26 Computer = rd_7 Computer
scoreboard players operation rd_27 Computer = rd_7 Computer
scoreboard players operation rd_28 Computer = rd_7 Computer
scoreboard players operation rd_29 Computer = rd_7 Computer
scoreboard players operation rd_30 Computer = rd_7 Computer
scoreboard players operation rd_31 Computer = rd_7 Computer

function computer:misc/update_rd_7_11