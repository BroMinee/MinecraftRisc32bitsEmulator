tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running jalr","color":"gold"}]
#tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"Error: Not Yet Implemented jalr","bold":true,"color":"red"}]
scoreboard players add found_dispatcher Computer 1



function computer:misc/copy_pc_to_input_l_add32
function computer:misc/set_input_r_4_add32
function computer:alu/add_32bits
function computer:misc/copy_input_l_to_rd_add32

function computer:misc/update_rd_7_11

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

function computer:alu/add_32bits

function computer:misc/copy_input_l_to_pc_add32

function computer:tp/tp_pc

scoreboard players set increase_pc Computer 0

execute if score read_cpy_0 Computer matches 1 run execute if score read_cpy_1 Computer matches 1 run execute if score read_cpy_2 Computer matches 1 run execute if score read_cpy_3 Computer matches 0 run execute if score read_cpy_4 Computer matches 0 run execute if score read_cpy_5 Computer matches 1 run execute if score read_cpy_6 Computer matches 1 run execute if score read_cpy_7 Computer matches 0 run execute if score read_cpy_8 Computer matches 0 run execute if score read_cpy_9 Computer matches 0 run execute if score read_cpy_10 Computer matches 0 run execute if score read_cpy_11 Computer matches 0 run execute if score read_cpy_12 Computer matches 0 run execute if score read_cpy_13 Computer matches 0 run execute if score read_cpy_14 Computer matches 0 run execute if score read_cpy_15 Computer matches 1 run execute if score read_cpy_16 Computer matches 0 run execute if score read_cpy_17 Computer matches 0 run execute if score read_cpy_18 Computer matches 0 run execute if score read_cpy_19 Computer matches 0 run execute if score read_cpy_20 Computer matches 0 run execute if score read_cpy_21 Computer matches 0 run execute if score read_cpy_22 Computer matches 0 run execute if score read_cpy_23 Computer matches 0 run execute if score read_cpy_24 Computer matches 0 run execute if score read_cpy_25 Computer matches 0 run execute if score read_cpy_26 Computer matches 0 run execute if score read_cpy_27 Computer matches 0 run execute if score read_cpy_28 Computer matches 0 run execute if score read_cpy_29 Computer matches 0 run execute if score read_cpy_30 Computer matches 0 run execute if score read_cpy_31 Computer matches 0 run execute if score x1_0 Computer matches 0 run execute if score x1_1 Computer matches 0 run execute if score x1_2 Computer matches 0 run execute if score x1_3 Computer matches 0 run execute if score x1_4 Computer matches 0 run execute if score x1_5 Computer matches 0 run execute if score x1_6 Computer matches 0 run execute if score x1_7 Computer matches 0 run execute if score x1_8 Computer matches 0 run execute if score x1_9 Computer matches 0 run execute if score x1_10 Computer matches 0 run execute if score x1_11 Computer matches 0 run execute if score x1_12 Computer matches 0 run execute if score x1_13 Computer matches 0 run execute if score x1_14 Computer matches 0 run execute if score x1_15 Computer matches 0 run execute if score x1_16 Computer matches 0 run execute if score x1_17 Computer matches 0 run execute if score x1_18 Computer matches 0 run execute if score x1_19 Computer matches 0 run execute if score x1_20 Computer matches 0 run execute if score x1_21 Computer matches 0 run execute if score x1_22 Computer matches 0 run execute if score x1_23 Computer matches 0 run execute if score x1_24 Computer matches 0 run execute if score x1_25 Computer matches 0 run execute if score x1_26 Computer matches 0 run execute if score x1_27 Computer matches 0 run execute if score x1_28 Computer matches 0 run execute if score x1_29 Computer matches 0 run execute if score x1_30 Computer matches 0 run execute if score x1_31 Computer matches 0 run scoreboard players set done Computer 1