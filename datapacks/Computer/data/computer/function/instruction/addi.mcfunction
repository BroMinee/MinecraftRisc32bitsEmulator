# input read_[20-31] Computer AND rs1_0-11
# output rd_[0-11] Computer

tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running addi","color":"gold"}]
# tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"Error: Not Yet Implemented addi","bold":true,"color":"red"}]
scoreboard players add found_dispatcher Computer 1

# addi [rd], [rs], [imm]
# rd =rs1 + imm

function computer:misc/load_rs1_15_19
function computer:misc/load_rd_7_11

function computer:misc/copy_rs1_to_rd

scoreboard players operation input_l_0 add32 = rd_0 Computer
scoreboard players operation input_l_1 add32 = rd_1 Computer
scoreboard players operation input_l_2 add32 = rd_2 Computer
scoreboard players operation input_l_3 add32 = rd_3 Computer
scoreboard players operation input_l_4 add32 = rd_4 Computer
scoreboard players operation input_l_5 add32 = rd_5 Computer
scoreboard players operation input_l_6 add32 = rd_6 Computer
scoreboard players operation input_l_7 add32 = rd_7 Computer
scoreboard players operation input_l_8 add32 = rd_8 Computer
scoreboard players operation input_l_9 add32 = rd_9 Computer
scoreboard players operation input_l_10 add32 = rd_10 Computer
scoreboard players operation input_l_11 add32 = rd_11 Computer
scoreboard players operation input_l_12 add32 = rd_12 Computer
scoreboard players operation input_l_13 add32 = rd_13 Computer
scoreboard players operation input_l_14 add32 = rd_14 Computer
scoreboard players operation input_l_15 add32 = rd_15 Computer
scoreboard players operation input_l_16 add32 = rd_16 Computer
scoreboard players operation input_l_17 add32 = rd_17 Computer
scoreboard players operation input_l_18 add32 = rd_18 Computer
scoreboard players operation input_l_19 add32 = rd_19 Computer
scoreboard players operation input_l_20 add32 = rd_20 Computer
scoreboard players operation input_l_21 add32 = rd_21 Computer
scoreboard players operation input_l_22 add32 = rd_22 Computer
scoreboard players operation input_l_23 add32 = rd_23 Computer
scoreboard players operation input_l_24 add32 = rd_24 Computer
scoreboard players operation input_l_25 add32 = rd_25 Computer
scoreboard players operation input_l_26 add32 = rd_26 Computer
scoreboard players operation input_l_27 add32 = rd_27 Computer
scoreboard players operation input_l_28 add32 = rd_28 Computer
scoreboard players operation input_l_29 add32 = rd_29 Computer
scoreboard players operation input_l_30 add32 = rd_30 Computer
scoreboard players operation input_l_31 add32 = rd_31 Computer

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

# addi, x0, x0, -42 is represented as addi x0, x0, a2(42)
# and x0 - 42 = x0 + a2(42)

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


function computer:misc/copy_input_l_to_rd_add32

function computer:misc/update_rd_7_11