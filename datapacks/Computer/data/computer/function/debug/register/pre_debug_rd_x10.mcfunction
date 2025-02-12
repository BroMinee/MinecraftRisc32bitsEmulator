data modify storage computer:memory bin set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
data modify storage computer:memory hexa set value ["","","","","","","",""]

execute store result storage computer:memory bin[0] int 1 run scoreboard players get x10_0 Computer
execute store result storage computer:memory bin[1] int 1 run scoreboard players get x10_1 Computer
execute store result storage computer:memory bin[2] int 1 run scoreboard players get x10_2 Computer
execute store result storage computer:memory bin[3] int 1 run scoreboard players get x10_3 Computer
execute store result storage computer:memory bin[4] int 1 run scoreboard players get x10_4 Computer
execute store result storage computer:memory bin[5] int 1 run scoreboard players get x10_5 Computer
execute store result storage computer:memory bin[6] int 1 run scoreboard players get x10_6 Computer
execute store result storage computer:memory bin[7] int 1 run scoreboard players get x10_7 Computer
execute store result storage computer:memory bin[8] int 1 run scoreboard players get x10_8 Computer
execute store result storage computer:memory bin[9] int 1 run scoreboard players get x10_9 Computer
execute store result storage computer:memory bin[10] int 1 run scoreboard players get x10_10 Computer
execute store result storage computer:memory bin[11] int 1 run scoreboard players get x10_11 Computer
execute store result storage computer:memory bin[12] int 1 run scoreboard players get x10_12 Computer
execute store result storage computer:memory bin[13] int 1 run scoreboard players get x10_13 Computer
execute store result storage computer:memory bin[14] int 1 run scoreboard players get x10_14 Computer
execute store result storage computer:memory bin[15] int 1 run scoreboard players get x10_15 Computer
execute store result storage computer:memory bin[16] int 1 run scoreboard players get x10_16 Computer
execute store result storage computer:memory bin[17] int 1 run scoreboard players get x10_17 Computer
execute store result storage computer:memory bin[18] int 1 run scoreboard players get x10_18 Computer
execute store result storage computer:memory bin[19] int 1 run scoreboard players get x10_19 Computer
execute store result storage computer:memory bin[20] int 1 run scoreboard players get x10_20 Computer
execute store result storage computer:memory bin[21] int 1 run scoreboard players get x10_21 Computer
execute store result storage computer:memory bin[22] int 1 run scoreboard players get x10_22 Computer
execute store result storage computer:memory bin[23] int 1 run scoreboard players get x10_23 Computer
execute store result storage computer:memory bin[24] int 1 run scoreboard players get x10_24 Computer
execute store result storage computer:memory bin[25] int 1 run scoreboard players get x10_25 Computer
execute store result storage computer:memory bin[26] int 1 run scoreboard players get x10_26 Computer
execute store result storage computer:memory bin[27] int 1 run scoreboard players get x10_27 Computer
execute store result storage computer:memory bin[28] int 1 run scoreboard players get x10_28 Computer
execute store result storage computer:memory bin[29] int 1 run scoreboard players get x10_29 Computer
execute store result storage computer:memory bin[30] int 1 run scoreboard players get x10_30 Computer
execute store result storage computer:memory bin[31] int 1 run scoreboard players get x10_31 Computer


scoreboard players operation #tmp0 Computer = x10_0 Computer
scoreboard players operation #tmp1 Computer = x10_1 Computer
scoreboard players operation #tmp2 Computer = x10_2 Computer
scoreboard players operation #tmp3 Computer = x10_3 Computer
function computer:debug/convert_8bits_to_hex
data modify storage computer:memory hexa[0] set string storage computer:memory hex_tmp

scoreboard players operation #tmp0 Computer = x10_4 Computer
scoreboard players operation #tmp1 Computer = x10_5 Computer
scoreboard players operation #tmp2 Computer = x10_6 Computer
scoreboard players operation #tmp3 Computer = x10_7 Computer
function computer:debug/convert_8bits_to_hex
data modify storage computer:memory hexa[1] set string storage computer:memory hex_tmp

scoreboard players operation #tmp0 Computer = x10_8 Computer
scoreboard players operation #tmp1 Computer = x10_9 Computer
scoreboard players operation #tmp2 Computer = x10_10 Computer
scoreboard players operation #tmp3 Computer = x10_11 Computer
function computer:debug/convert_8bits_to_hex
data modify storage computer:memory hexa[2] set string storage computer:memory hex_tmp

scoreboard players operation #tmp0 Computer = x10_12 Computer
scoreboard players operation #tmp1 Computer = x10_13 Computer
scoreboard players operation #tmp2 Computer = x10_14 Computer
scoreboard players operation #tmp3 Computer = x10_15 Computer
function computer:debug/convert_8bits_to_hex
data modify storage computer:memory hexa[3] set string storage computer:memory hex_tmp

scoreboard players operation #tmp0 Computer = x10_16 Computer
scoreboard players operation #tmp1 Computer = x10_17 Computer
scoreboard players operation #tmp2 Computer = x10_18 Computer
scoreboard players operation #tmp3 Computer = x10_19 Computer
function computer:debug/convert_8bits_to_hex
data modify storage computer:memory hexa[4] set string storage computer:memory hex_tmp

scoreboard players operation #tmp0 Computer = x10_20 Computer
scoreboard players operation #tmp1 Computer = x10_21 Computer
scoreboard players operation #tmp2 Computer = x10_22 Computer
scoreboard players operation #tmp3 Computer = x10_23 Computer
function computer:debug/convert_8bits_to_hex
data modify storage computer:memory hexa[5] set string storage computer:memory hex_tmp

scoreboard players operation #tmp0 Computer = x10_24 Computer
scoreboard players operation #tmp1 Computer = x10_25 Computer
scoreboard players operation #tmp2 Computer = x10_26 Computer
scoreboard players operation #tmp3 Computer = x10_27 Computer
function computer:debug/convert_8bits_to_hex
data modify storage computer:memory hexa[6] set string storage computer:memory hex_tmp

scoreboard players operation #tmp0 Computer = x10_28 Computer
scoreboard players operation #tmp1 Computer = x10_29 Computer
scoreboard players operation #tmp2 Computer = x10_30 Computer
scoreboard players operation #tmp3 Computer = x10_31 Computer
function computer:debug/convert_8bits_to_hex
data modify storage computer:memory hexa[7] set string storage computer:memory hex_tmp


data modify storage computer:memory type set value "Updated x10"
function computer:debug/printf