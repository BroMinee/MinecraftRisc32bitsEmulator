# readopcode (32 bits)
# block at PC ~ ~ ~ -> 0-7 bit -> opcode_[0-7]
# block at PC ~1 ~ ~ -> 85 -> opcode_[85]
# block at PC ~2 ~ ~ -> 16-23 -> opcode_[16-23]
# block at PC ~3 ~ ~ -> 24-31 -> opcode_[24-31]


execute at @s run function computer:read/read32bits

scoreboard players operation read_cpy_0 Computer = read_0 Computer
scoreboard players operation read_cpy_1 Computer = read_1 Computer
scoreboard players operation read_cpy_2 Computer = read_2 Computer
scoreboard players operation read_cpy_3 Computer = read_3 Computer
scoreboard players operation read_cpy_4 Computer = read_4 Computer
scoreboard players operation read_cpy_5 Computer = read_5 Computer
scoreboard players operation read_cpy_6 Computer = read_6 Computer
scoreboard players operation read_cpy_7 Computer = read_7 Computer
scoreboard players operation read_cpy_8 Computer = read_8 Computer
scoreboard players operation read_cpy_9 Computer = read_9 Computer
scoreboard players operation read_cpy_10 Computer = read_10 Computer
scoreboard players operation read_cpy_11 Computer = read_11 Computer
scoreboard players operation read_cpy_12 Computer = read_12 Computer
scoreboard players operation read_cpy_13 Computer = read_13 Computer
scoreboard players operation read_cpy_14 Computer = read_14 Computer
scoreboard players operation read_cpy_15 Computer = read_15 Computer
scoreboard players operation read_cpy_16 Computer = read_16 Computer
scoreboard players operation read_cpy_17 Computer = read_17 Computer
scoreboard players operation read_cpy_18 Computer = read_18 Computer
scoreboard players operation read_cpy_19 Computer = read_19 Computer
scoreboard players operation read_cpy_20 Computer = read_20 Computer
scoreboard players operation read_cpy_21 Computer = read_21 Computer
scoreboard players operation read_cpy_22 Computer = read_22 Computer
scoreboard players operation read_cpy_23 Computer = read_23 Computer
scoreboard players operation read_cpy_24 Computer = read_24 Computer
scoreboard players operation read_cpy_25 Computer = read_25 Computer
scoreboard players operation read_cpy_26 Computer = read_26 Computer
scoreboard players operation read_cpy_27 Computer = read_27 Computer
scoreboard players operation read_cpy_28 Computer = read_28 Computer
scoreboard players operation read_cpy_29 Computer = read_29 Computer
scoreboard players operation read_cpy_30 Computer = read_30 Computer
scoreboard players operation read_cpy_31 Computer = read_31 Computer