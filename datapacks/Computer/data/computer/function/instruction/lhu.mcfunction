tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running lhu","color":"gold"}]

scoreboard players add found_dispatcher Computer 1
scoreboard players add read stats 1

# lhu [rd], [imm]([rs1])
# rd = memory[rs1+imm] as (16 bits extended to 32 filled with 0) SHOULD be aligned to 4 bytes

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
execute as @e[limit=1,type=armor_stand,tag=write] run function computer:read/read16bits

scoreboard players operation rd_0 Computer = read_0 Computer
scoreboard players operation rd_1 Computer = read_1 Computer
scoreboard players operation rd_2 Computer = read_2 Computer
scoreboard players operation rd_3 Computer = read_3 Computer
scoreboard players operation rd_4 Computer = read_4 Computer
scoreboard players operation rd_5 Computer = read_5 Computer
scoreboard players operation rd_6 Computer = read_6 Computer
scoreboard players operation rd_7 Computer = read_7 Computer
scoreboard players operation rd_8 Computer = read_8 Computer
scoreboard players operation rd_9 Computer = read_9 Computer
scoreboard players operation rd_10 Computer = read_10 Computer
scoreboard players operation rd_11 Computer = read_11 Computer
scoreboard players operation rd_12 Computer = read_12 Computer
scoreboard players operation rd_13 Computer = read_13 Computer
scoreboard players operation rd_14 Computer = read_14 Computer
scoreboard players operation rd_15 Computer = read_15 Computer
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