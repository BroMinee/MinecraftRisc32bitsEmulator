# PC = PC + 4
scoreboard players set input_r_0 add32 0
scoreboard players set input_r_1 add32 0
scoreboard players set input_r_2 add32 1
scoreboard players set input_r_3 add32 0
scoreboard players set input_r_4 add32 0
scoreboard players set input_r_5 add32 0
scoreboard players set input_r_6 add32 0
scoreboard players set input_r_7 add32 0
scoreboard players set input_r_8 add32 0
scoreboard players set input_r_9 add32 0
scoreboard players set input_r_10 add32 0
scoreboard players set input_r_11 add32 0
scoreboard players set input_r_12 add32 0
scoreboard players set input_r_13 add32 0
scoreboard players set input_r_14 add32 0
scoreboard players set input_r_15 add32 0
scoreboard players set input_r_16 add32 0
scoreboard players set input_r_17 add32 0
scoreboard players set input_r_18 add32 0
scoreboard players set input_r_19 add32 0
scoreboard players set input_r_20 add32 0
scoreboard players set input_r_21 add32 0
scoreboard players set input_r_22 add32 0
scoreboard players set input_r_23 add32 0
scoreboard players set input_r_24 add32 0
scoreboard players set input_r_25 add32 0
scoreboard players set input_r_26 add32 0
scoreboard players set input_r_27 add32 0
scoreboard players set input_r_28 add32 0
scoreboard players set input_r_29 add32 0
scoreboard players set input_r_30 add32 0
scoreboard players set input_r_31 add32 0

scoreboard players operation input_l_0 add32 = pc_0 Computer
scoreboard players operation input_l_1 add32 = pc_1 Computer
scoreboard players operation input_l_2 add32 = pc_2 Computer
scoreboard players operation input_l_3 add32 = pc_3 Computer
scoreboard players operation input_l_4 add32 = pc_4 Computer
scoreboard players operation input_l_5 add32 = pc_5 Computer
scoreboard players operation input_l_6 add32 = pc_6 Computer
scoreboard players operation input_l_7 add32 = pc_7 Computer
scoreboard players operation input_l_8 add32 = pc_8 Computer
scoreboard players operation input_l_9 add32 = pc_9 Computer
scoreboard players operation input_l_10 add32 = pc_10 Computer
scoreboard players operation input_l_11 add32 = pc_11 Computer
scoreboard players operation input_l_12 add32 = pc_12 Computer
scoreboard players operation input_l_13 add32 = pc_13 Computer
scoreboard players operation input_l_14 add32 = pc_14 Computer
scoreboard players operation input_l_15 add32 = pc_15 Computer
scoreboard players operation input_l_16 add32 = pc_16 Computer
scoreboard players operation input_l_17 add32 = pc_17 Computer
scoreboard players operation input_l_18 add32 = pc_18 Computer
scoreboard players operation input_l_19 add32 = pc_19 Computer
scoreboard players operation input_l_20 add32 = pc_20 Computer
scoreboard players operation input_l_21 add32 = pc_21 Computer
scoreboard players operation input_l_22 add32 = pc_22 Computer
scoreboard players operation input_l_23 add32 = pc_23 Computer
scoreboard players operation input_l_24 add32 = pc_24 Computer
scoreboard players operation input_l_25 add32 = pc_25 Computer
scoreboard players operation input_l_26 add32 = pc_26 Computer
scoreboard players operation input_l_27 add32 = pc_27 Computer
scoreboard players operation input_l_28 add32 = pc_28 Computer
scoreboard players operation input_l_29 add32 = pc_29 Computer
scoreboard players operation input_l_30 add32 = pc_30 Computer
scoreboard players operation input_l_31 add32 = pc_31 Computer

function computer:alu/add32bits

scoreboard players operation pc_0 Computer = input_l_0 add32
scoreboard players operation pc_1 Computer = input_l_1 add32
scoreboard players operation pc_2 Computer = input_l_2 add32
scoreboard players operation pc_3 Computer = input_l_3 add32
scoreboard players operation pc_4 Computer = input_l_4 add32
scoreboard players operation pc_5 Computer = input_l_5 add32
scoreboard players operation pc_6 Computer = input_l_6 add32
scoreboard players operation pc_7 Computer = input_l_7 add32
scoreboard players operation pc_8 Computer = input_l_8 add32
scoreboard players operation pc_9 Computer = input_l_9 add32
scoreboard players operation pc_10 Computer = input_l_10 add32
scoreboard players operation pc_11 Computer = input_l_11 add32
scoreboard players operation pc_12 Computer = input_l_12 add32
scoreboard players operation pc_13 Computer = input_l_13 add32
scoreboard players operation pc_14 Computer = input_l_14 add32
scoreboard players operation pc_15 Computer = input_l_15 add32
scoreboard players operation pc_16 Computer = input_l_16 add32
scoreboard players operation pc_17 Computer = input_l_17 add32
scoreboard players operation pc_18 Computer = input_l_18 add32
scoreboard players operation pc_19 Computer = input_l_19 add32
scoreboard players operation pc_20 Computer = input_l_20 add32
scoreboard players operation pc_21 Computer = input_l_21 add32
scoreboard players operation pc_22 Computer = input_l_22 add32
scoreboard players operation pc_23 Computer = input_l_23 add32
scoreboard players operation pc_24 Computer = input_l_24 add32
scoreboard players operation pc_25 Computer = input_l_25 add32
scoreboard players operation pc_26 Computer = input_l_26 add32
scoreboard players operation pc_27 Computer = input_l_27 add32
scoreboard players operation pc_28 Computer = input_l_28 add32
scoreboard players operation pc_29 Computer = input_l_29 add32
scoreboard players operation pc_30 Computer = input_l_30 add32
scoreboard players operation pc_31 Computer = input_l_31 add32


tp @s 0 0 0

execute if score pc_0 Computer matches 1.. run say Error pc_0 must be 0 (align by 4)
execute if score pc_1 Computer matches 1.. run say Error pc_1 must be 0 (align by 4)

scoreboard players operation input_0 scoretp_x = pc_0 Computer
scoreboard players operation input_1 scoretp_x = pc_1 Computer
scoreboard players operation input_2 scoretp_x = pc_2 Computer
scoreboard players operation input_3 scoretp_x = pc_3 Computer
scoreboard players operation input_4 scoretp_x = pc_4 Computer
scoreboard players operation input_5 scoretp_x = pc_5 Computer
scoreboard players operation input_6 scoretp_x = pc_6 Computer
scoreboard players operation input_7 scoretp_x = pc_7 Computer
scoreboard players operation input_8 scoretp_x = pc_8 Computer
scoreboard players operation input_9 scoretp_x = pc_9 Computer
scoreboard players operation input_10 scoretp_x = pc_10 Computer
scoreboard players operation input_11 scoretp_x = pc_11 Computer

scoreboard players operation input_0 scoretp_z = pc_12 Computer
scoreboard players operation input_1 scoretp_z = pc_13 Computer
scoreboard players operation input_2 scoretp_z = pc_14 Computer
scoreboard players operation input_3 scoretp_z = pc_15 Computer
scoreboard players operation input_4 scoretp_z = pc_16 Computer
scoreboard players operation input_5 scoretp_z = pc_17 Computer
scoreboard players operation input_6 scoretp_z = pc_18 Computer
scoreboard players operation input_7 scoretp_z = pc_19 Computer
scoreboard players operation input_8 scoretp_z = pc_20 Computer
scoreboard players operation input_9 scoretp_z = pc_21 Computer
scoreboard players operation input_10 scoretp_z = pc_22 Computer
scoreboard players operation input_11 scoretp_z = pc_23 Computer

scoreboard players operation input_0 scoretp_y = pc_24 Computer
scoreboard players operation input_1 scoretp_y = pc_25 Computer
scoreboard players operation input_2 scoretp_y = pc_26 Computer
scoreboard players operation input_3 scoretp_y = pc_27 Computer
scoreboard players operation input_4 scoretp_y = pc_28 Computer
scoreboard players operation input_5 scoretp_y = pc_29 Computer
scoreboard players operation input_6 scoretp_y = pc_30 Computer
scoreboard players operation input_7 scoretp_y = pc_31 Computer

function _em:scoretp/x
function _em:scoretp/y
function _em:scoretp/z