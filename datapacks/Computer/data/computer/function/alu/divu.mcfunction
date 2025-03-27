# divu

data modify storage computer:memory div_res set value []
data modify storage computer:memory div set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
execute store result storage computer:memory div[0] int 1 run scoreboard players get rs1_0 Computer
execute store result storage computer:memory div[1] int 1 run scoreboard players get rs1_1 Computer
execute store result storage computer:memory div[2] int 1 run scoreboard players get rs1_2 Computer
execute store result storage computer:memory div[3] int 1 run scoreboard players get rs1_3 Computer
execute store result storage computer:memory div[4] int 1 run scoreboard players get rs1_4 Computer
execute store result storage computer:memory div[5] int 1 run scoreboard players get rs1_5 Computer
execute store result storage computer:memory div[6] int 1 run scoreboard players get rs1_6 Computer
execute store result storage computer:memory div[7] int 1 run scoreboard players get rs1_7 Computer
execute store result storage computer:memory div[8] int 1 run scoreboard players get rs1_8 Computer
execute store result storage computer:memory div[9] int 1 run scoreboard players get rs1_9 Computer
execute store result storage computer:memory div[10] int 1 run scoreboard players get rs1_10 Computer
execute store result storage computer:memory div[11] int 1 run scoreboard players get rs1_11 Computer
execute store result storage computer:memory div[12] int 1 run scoreboard players get rs1_12 Computer
execute store result storage computer:memory div[13] int 1 run scoreboard players get rs1_13 Computer
execute store result storage computer:memory div[14] int 1 run scoreboard players get rs1_14 Computer
execute store result storage computer:memory div[15] int 1 run scoreboard players get rs1_15 Computer
execute store result storage computer:memory div[16] int 1 run scoreboard players get rs1_16 Computer
execute store result storage computer:memory div[17] int 1 run scoreboard players get rs1_17 Computer
execute store result storage computer:memory div[18] int 1 run scoreboard players get rs1_18 Computer
execute store result storage computer:memory div[19] int 1 run scoreboard players get rs1_19 Computer
execute store result storage computer:memory div[20] int 1 run scoreboard players get rs1_20 Computer
execute store result storage computer:memory div[21] int 1 run scoreboard players get rs1_21 Computer
execute store result storage computer:memory div[22] int 1 run scoreboard players get rs1_22 Computer
execute store result storage computer:memory div[23] int 1 run scoreboard players get rs1_23 Computer
execute store result storage computer:memory div[24] int 1 run scoreboard players get rs1_24 Computer
execute store result storage computer:memory div[25] int 1 run scoreboard players get rs1_25 Computer
execute store result storage computer:memory div[26] int 1 run scoreboard players get rs1_26 Computer
execute store result storage computer:memory div[27] int 1 run scoreboard players get rs1_27 Computer
execute store result storage computer:memory div[28] int 1 run scoreboard players get rs1_28 Computer
execute store result storage computer:memory div[29] int 1 run scoreboard players get rs1_29 Computer
execute store result storage computer:memory div[30] int 1 run scoreboard players get rs1_30 Computer
execute store result storage computer:memory div[31] int 1 run scoreboard players get rs1_31 Computer

function computer:misc/copy_rs2_to_a2
function computer:alu/a2_32bits
function computer:misc/copy_input_a2_to_input_r_add32


function computer:misc/reset_rd
function computer:misc/reset_input_l_32bits
execute if data storage computer:memory div[-1] run function computer:alu/divu_iterate_over_array