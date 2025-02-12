data modify storage computer:memory bin set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
data modify storage computer:memory hexa set value ["","","","","","","",""]

execute store result storage computer:memory bin[0] int 1 run scoreboard players get x28_0 Computer
execute store result storage computer:memory bin[1] int 1 run scoreboard players get x28_1 Computer
execute store result storage computer:memory bin[2] int 1 run scoreboard players get x28_2 Computer
execute store result storage computer:memory bin[3] int 1 run scoreboard players get x28_3 Computer
execute store result storage computer:memory bin[4] int 1 run scoreboard players get x28_4 Computer
execute store result storage computer:memory bin[5] int 1 run scoreboard players get x28_5 Computer
execute store result storage computer:memory bin[6] int 1 run scoreboard players get x28_6 Computer
execute store result storage computer:memory bin[7] int 1 run scoreboard players get x28_7 Computer
execute store result storage computer:memory bin[8] int 1 run scoreboard players get x28_8 Computer
execute store result storage computer:memory bin[9] int 1 run scoreboard players get x28_9 Computer
execute store result storage computer:memory bin[10] int 1 run scoreboard players get x28_10 Computer
execute store result storage computer:memory bin[11] int 1 run scoreboard players get x28_11 Computer
execute store result storage computer:memory bin[12] int 1 run scoreboard players get x28_12 Computer
execute store result storage computer:memory bin[13] int 1 run scoreboard players get x28_13 Computer
execute store result storage computer:memory bin[14] int 1 run scoreboard players get x28_14 Computer
execute store result storage computer:memory bin[15] int 1 run scoreboard players get x28_15 Computer
execute store result storage computer:memory bin[16] int 1 run scoreboard players get x28_16 Computer
execute store result storage computer:memory bin[17] int 1 run scoreboard players get x28_17 Computer
execute store result storage computer:memory bin[18] int 1 run scoreboard players get x28_18 Computer
execute store result storage computer:memory bin[19] int 1 run scoreboard players get x28_19 Computer
execute store result storage computer:memory bin[20] int 1 run scoreboard players get x28_20 Computer
execute store result storage computer:memory bin[21] int 1 run scoreboard players get x28_21 Computer
execute store result storage computer:memory bin[22] int 1 run scoreboard players get x28_22 Computer
execute store result storage computer:memory bin[23] int 1 run scoreboard players get x28_23 Computer
execute store result storage computer:memory bin[24] int 1 run scoreboard players get x28_24 Computer
execute store result storage computer:memory bin[25] int 1 run scoreboard players get x28_25 Computer
execute store result storage computer:memory bin[26] int 1 run scoreboard players get x28_26 Computer
execute store result storage computer:memory bin[27] int 1 run scoreboard players get x28_27 Computer
execute store result storage computer:memory bin[28] int 1 run scoreboard players get x28_28 Computer
execute store result storage computer:memory bin[29] int 1 run scoreboard players get x28_29 Computer
execute store result storage computer:memory bin[30] int 1 run scoreboard players get x28_30 Computer
execute store result storage computer:memory bin[31] int 1 run scoreboard players get x28_31 Computer


scoreboard players operation #tmp0 Computer = x28_0 Computer
scoreboard players operation #tmp1 Computer = x28_1 Computer
scoreboard players operation #tmp2 Computer = x28_2 Computer
scoreboard players operation #tmp3 Computer = x28_3 Computer
function computer:debug/convert_8bits_to_hex
data modify storage computer:memory hexa[0] set string storage computer:memory hex_tmp

scoreboard players operation #tmp0 Computer = x28_4 Computer
scoreboard players operation #tmp1 Computer = x28_5 Computer
scoreboard players operation #tmp2 Computer = x28_6 Computer
scoreboard players operation #tmp3 Computer = x28_7 Computer
function computer:debug/convert_8bits_to_hex
data modify storage computer:memory hexa[1] set string storage computer:memory hex_tmp

scoreboard players operation #tmp0 Computer = x28_8 Computer
scoreboard players operation #tmp1 Computer = x28_9 Computer
scoreboard players operation #tmp2 Computer = x28_10 Computer
scoreboard players operation #tmp3 Computer = x28_11 Computer
function computer:debug/convert_8bits_to_hex
data modify storage computer:memory hexa[2] set string storage computer:memory hex_tmp

scoreboard players operation #tmp0 Computer = x28_12 Computer
scoreboard players operation #tmp1 Computer = x28_13 Computer
scoreboard players operation #tmp2 Computer = x28_14 Computer
scoreboard players operation #tmp3 Computer = x28_15 Computer
function computer:debug/convert_8bits_to_hex
data modify storage computer:memory hexa[3] set string storage computer:memory hex_tmp

scoreboard players operation #tmp0 Computer = x28_16 Computer
scoreboard players operation #tmp1 Computer = x28_17 Computer
scoreboard players operation #tmp2 Computer = x28_18 Computer
scoreboard players operation #tmp3 Computer = x28_19 Computer
function computer:debug/convert_8bits_to_hex
data modify storage computer:memory hexa[4] set string storage computer:memory hex_tmp

scoreboard players operation #tmp0 Computer = x28_20 Computer
scoreboard players operation #tmp1 Computer = x28_21 Computer
scoreboard players operation #tmp2 Computer = x28_22 Computer
scoreboard players operation #tmp3 Computer = x28_23 Computer
function computer:debug/convert_8bits_to_hex
data modify storage computer:memory hexa[5] set string storage computer:memory hex_tmp

scoreboard players operation #tmp0 Computer = x28_24 Computer
scoreboard players operation #tmp1 Computer = x28_25 Computer
scoreboard players operation #tmp2 Computer = x28_26 Computer
scoreboard players operation #tmp3 Computer = x28_27 Computer
function computer:debug/convert_8bits_to_hex
data modify storage computer:memory hexa[6] set string storage computer:memory hex_tmp

scoreboard players operation #tmp0 Computer = x28_28 Computer
scoreboard players operation #tmp1 Computer = x28_29 Computer
scoreboard players operation #tmp2 Computer = x28_30 Computer
scoreboard players operation #tmp3 Computer = x28_31 Computer
function computer:debug/convert_8bits_to_hex
data modify storage computer:memory hexa[7] set string storage computer:memory hex_tmp


data modify storage computer:memory type set value "Updated x28"
function computer:debug/printf