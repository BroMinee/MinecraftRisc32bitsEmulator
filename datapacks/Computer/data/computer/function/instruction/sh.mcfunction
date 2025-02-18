tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running sh","color":"gold"}]
#tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"Error: Not Yet Implemented sh","bold":true,"color":"red"}]
scoreboard players add found_dispatcher Computer 1

# sh [rs2], [imm]([rs1])
# memory[rs1+imm] =rs2 as (16 bits) SHOULD be aligned to 4 bytes

# load rs1
function computer:misc/load_rs1_15_19

# load rs2
function computer:misc/load_rs2_20_24


function computer:misc/copy_rs1_to_input_l_add32

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
execute as @e[limit=1,type=armor_stand,tag=write] run function computer:write/write_rs2_16bit