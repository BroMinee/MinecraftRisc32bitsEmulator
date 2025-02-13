# input memory at ~[-2,0]
# output read_[0-31]
# NOTE 16-31 are set to 0

scoreboard players set read_31 Computer 0
scoreboard players set read_30 Computer 0
scoreboard players set read_29 Computer 0
scoreboard players set read_28 Computer 0
scoreboard players set read_27 Computer 0
scoreboard players set read_26 Computer 0
scoreboard players set read_25 Computer 0
scoreboard players set read_24 Computer 0
scoreboard players set read_23 Computer 0
scoreboard players set read_22 Computer 0
scoreboard players set read_21 Computer 0
scoreboard players set read_20 Computer 0
scoreboard players set read_19 Computer 0
scoreboard players set read_18 Computer 0
scoreboard players set read_17 Computer 0
scoreboard players set read_16 Computer 0


execute at @s positioned ~-1 ~ ~ run function computer:read/read8bits
scoreboard players operation read_8 Computer = read_0 read8
scoreboard players operation read_9 Computer = read_1 read8
scoreboard players operation read_10 Computer = read_2 read8
scoreboard players operation read_11 Computer = read_3 read8
scoreboard players operation read_12 Computer = read_4 read8
scoreboard players operation read_13 Computer = read_5 read8
scoreboard players operation read_14 Computer = read_6 read8
scoreboard players operation read_15 Computer = read_7 read8


execute at @s positioned ~ ~ ~ run function computer:read/read8bits
scoreboard players operation read_0 Computer = read_0 read8
scoreboard players operation read_1 Computer = read_1 read8
scoreboard players operation read_2 Computer = read_2 read8
scoreboard players operation read_3 Computer = read_3 read8
scoreboard players operation read_4 Computer = read_4 read8
scoreboard players operation read_5 Computer = read_5 read8
scoreboard players operation read_6 Computer = read_6 read8
scoreboard players operation read_7 Computer = read_7 read8

data modify storage computer:memory type set value "Read memory 16 bits"
function computer:debug/pre_debug_read_32