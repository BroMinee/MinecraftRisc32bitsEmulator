# input read_[7-11/25-31]
# offset[12|10:5] - offset[4:1|11]
function computer:misc/copy_pc_to_input_l_add32

scoreboard players set input_r_0 add32 0
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
scoreboard players operation input_r_11 add32 = read_7 Computer
scoreboard players operation input_r_12 add32 = read_31 Computer
# sign extend
scoreboard players operation input_r_13 add32 = input_r_12 add32
scoreboard players operation input_r_14 add32 = input_r_12 add32
scoreboard players operation input_r_15 add32 = input_r_12 add32
scoreboard players operation input_r_16 add32 = input_r_12 add32
scoreboard players operation input_r_17 add32 = input_r_12 add32
scoreboard players operation input_r_18 add32 = input_r_12 add32
scoreboard players operation input_r_19 add32 = input_r_12 add32
scoreboard players operation input_r_20 add32 = input_r_12 add32
scoreboard players operation input_r_21 add32 = input_r_12 add32
scoreboard players operation input_r_22 add32 = input_r_12 add32
scoreboard players operation input_r_23 add32 = input_r_12 add32
scoreboard players operation input_r_24 add32 = input_r_12 add32
scoreboard players operation input_r_25 add32 = input_r_12 add32
scoreboard players operation input_r_26 add32 = input_r_12 add32
scoreboard players operation input_r_27 add32 = input_r_12 add32
scoreboard players operation input_r_28 add32 = input_r_12 add32
scoreboard players operation input_r_29 add32 = input_r_12 add32
scoreboard players operation input_r_30 add32 = input_r_12 add32
scoreboard players operation input_r_31 add32 = input_r_12 add32

function computer:alu/add_32bits
function computer:misc/copy_input_l_to_pc_add32

function computer:tp/tp_pc
scoreboard players set increase_pc Computer 0