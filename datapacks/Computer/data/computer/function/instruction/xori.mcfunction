tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running xori","color":"gold"}]
# tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"Error: Not Yet Implemented xori","bold":true,"color":"red"}]
scoreboard players add found Computer 1

function computer:misc/load_rs1_15_19

function computer:misc/copy_rs1_to_input_l_xor

scoreboard players operation input_r_0 xor = read_20 Computer
scoreboard players operation input_r_1 xor = read_21 Computer
scoreboard players operation input_r_2 xor = read_22 Computer
scoreboard players operation input_r_3 xor = read_23 Computer
scoreboard players operation input_r_4 xor = read_24 Computer
scoreboard players operation input_r_5 xor = read_25 Computer
scoreboard players operation input_r_6 xor = read_26 Computer
scoreboard players operation input_r_7 xor = read_27 Computer
scoreboard players operation input_r_8 xor = read_28 Computer
scoreboard players operation input_r_9 xor = read_29 Computer
scoreboard players operation input_r_10 xor = read_30 Computer
scoreboard players operation input_r_11 xor = read_31 Computer
scoreboard players operation input_r_12 xor = input_r_11 xor
scoreboard players operation input_r_13 xor = input_r_11 xor
scoreboard players operation input_r_14 xor = input_r_11 xor
scoreboard players operation input_r_15 xor = input_r_11 xor
scoreboard players operation input_r_16 xor = input_r_11 xor
scoreboard players operation input_r_17 xor = input_r_11 xor
scoreboard players operation input_r_18 xor = input_r_11 xor
scoreboard players operation input_r_19 xor = input_r_11 xor
scoreboard players operation input_r_20 xor = input_r_11 xor
scoreboard players operation input_r_21 xor = input_r_11 xor
scoreboard players operation input_r_22 xor = input_r_11 xor
scoreboard players operation input_r_23 xor = input_r_11 xor
scoreboard players operation input_r_24 xor = input_r_11 xor
scoreboard players operation input_r_25 xor = input_r_11 xor
scoreboard players operation input_r_26 xor = input_r_11 xor
scoreboard players operation input_r_27 xor = input_r_11 xor
scoreboard players operation input_r_28 xor = input_r_11 xor
scoreboard players operation input_r_29 xor = input_r_11 xor
scoreboard players operation input_r_30 xor = input_r_11 xor
scoreboard players operation input_r_31 xor = input_r_11 xor

function computer:alu/xor_32bits

function computer:misc/copy_input_l_to_rd_xor
function computer:misc/update_rd_7_11