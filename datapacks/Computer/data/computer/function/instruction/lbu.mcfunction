tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running lbu","color":"gold"}]

scoreboard players add found_dispatcher Computer 1
scoreboard players add read stats 1


# lhu [rd], [imm]([rs1])
# rd = memory[rs1+imm] as (8 bits extended to 32 filled with 0) SHOULD be aligned to 4 bytes

# load rs1
function computer:misc/load_rs1_15_19

function computer:misc/copy_rs1_to_input_l_add32

function computer:misc/copy_imm_12_to_input_r_add32

# sign extend
function computer:misc/sign_extend_input_r_add32_12_to_32

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
scoreboard players set rd_8 Computer 0
scoreboard players set rd_9 Computer 0
scoreboard players set rd_10 Computer 0
scoreboard players set rd_11 Computer 0
scoreboard players set rd_12 Computer 0
scoreboard players set rd_13 Computer 0
scoreboard players set rd_14 Computer 0
scoreboard players set rd_15 Computer 0
scoreboard players set rd_16 Computer 0
scoreboard players set rd_17 Computer 0
scoreboard players set rd_18 Computer 0
scoreboard players set rd_19 Computer 0
scoreboard players set rd_20 Computer 0
scoreboard players set rd_21 Computer 0
scoreboard players set rd_22 Computer 0
scoreboard players set rd_23 Computer 0
scoreboard players set rd_24 Computer 0
scoreboard players set rd_25 Computer 0
scoreboard players set rd_26 Computer 0
scoreboard players set rd_27 Computer 0
scoreboard players set rd_28 Computer 0
scoreboard players set rd_29 Computer 0
scoreboard players set rd_30 Computer 0
scoreboard players set rd_31 Computer 0

function computer:misc/update_rd_7_11