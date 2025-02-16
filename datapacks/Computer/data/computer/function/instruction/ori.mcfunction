tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running ori","color":"gold"}]
#tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"Error: Not Yet Implemented ori","bold":true,"color":"red"}]
scoreboard players add found Computer 1

function computer:misc/load_rs1_15_19

function computer:misc/copy_rs1_to_input_l_or

scoreboard players operation input_r_0 or = read_20 Computer
scoreboard players operation input_r_1 or = read_21 Computer
scoreboard players operation input_r_2 or = read_22 Computer
scoreboard players operation input_r_3 or = read_23 Computer
scoreboard players operation input_r_4 or = read_24 Computer
scoreboard players operation input_r_5 or = read_25 Computer
scoreboard players operation input_r_6 or = read_26 Computer
scoreboard players operation input_r_7 or = read_27 Computer
scoreboard players operation input_r_8 or = read_28 Computer
scoreboard players operation input_r_9 or = read_29 Computer
scoreboard players operation input_r_10 or = read_30 Computer
scoreboard players operation input_r_11 or = read_31 Computer
scoreboard players operation input_r_12 or = input_r_11 or
scoreboard players operation input_r_13 or = input_r_11 or
scoreboard players operation input_r_14 or = input_r_11 or
scoreboard players operation input_r_15 or = input_r_11 or
scoreboard players operation input_r_16 or = input_r_11 or
scoreboard players operation input_r_17 or = input_r_11 or
scoreboard players operation input_r_18 or = input_r_11 or
scoreboard players operation input_r_19 or = input_r_11 or
scoreboard players operation input_r_20 or = input_r_11 or
scoreboard players operation input_r_21 or = input_r_11 or
scoreboard players operation input_r_22 or = input_r_11 or
scoreboard players operation input_r_23 or = input_r_11 or
scoreboard players operation input_r_24 or = input_r_11 or
scoreboard players operation input_r_25 or = input_r_11 or
scoreboard players operation input_r_26 or = input_r_11 or
scoreboard players operation input_r_27 or = input_r_11 or
scoreboard players operation input_r_28 or = input_r_11 or
scoreboard players operation input_r_29 or = input_r_11 or
scoreboard players operation input_r_30 or = input_r_11 or
scoreboard players operation input_r_31 or = input_r_11 or

function computer:alu/or_32bits

function computer:misc/copy_input_l_to_rd_or
function computer:misc/update_rd_7_11