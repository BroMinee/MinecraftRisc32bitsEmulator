tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running lw","color":"gold"}]
# tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"Error: Not Yet Implemented lw","bold":true,"color":"red"}]
scoreboard players add found_dispatcher Computer 1


# lw [rd], [imm]([rs1])
# rd = memory[rs1+imm] as (32 bits) SHOULD be aligned to 4 bytes

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
data modify storage computer:memory type set value "read32 bits LW"
execute as @e[limit=1,type=armor_stand,tag=write] run function computer:read/read32bits

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
scoreboard players operation rd_16 Computer = read_16 Computer
scoreboard players operation rd_17 Computer = read_17 Computer
scoreboard players operation rd_18 Computer = read_18 Computer
scoreboard players operation rd_19 Computer = read_19 Computer
scoreboard players operation rd_20 Computer = read_20 Computer
scoreboard players operation rd_21 Computer = read_21 Computer
scoreboard players operation rd_22 Computer = read_22 Computer
scoreboard players operation rd_23 Computer = read_23 Computer
scoreboard players operation rd_24 Computer = read_24 Computer
scoreboard players operation rd_25 Computer = read_25 Computer
scoreboard players operation rd_26 Computer = read_26 Computer
scoreboard players operation rd_27 Computer = read_27 Computer
scoreboard players operation rd_28 Computer = read_28 Computer
scoreboard players operation rd_29 Computer = read_29 Computer
scoreboard players operation rd_30 Computer = read_30 Computer
scoreboard players operation rd_31 Computer = read_31 Computer

function computer:misc/update_rd_7_11