# use rs2 as write register (16 bits)
# MUST be run as armor stand write (after TP)
scoreboard players operation write_0 Computer = rs2_0 Computer
scoreboard players operation write_1 Computer = rs2_1 Computer
scoreboard players operation write_2 Computer = rs2_2 Computer
scoreboard players operation write_3 Computer = rs2_3 Computer
scoreboard players operation write_4 Computer = rs2_4 Computer
scoreboard players operation write_5 Computer = rs2_5 Computer
scoreboard players operation write_6 Computer = rs2_6 Computer
scoreboard players operation write_7 Computer = rs2_7 Computer
execute at @s positioned ~ ~ ~ run function computer:write/write_8bits

scoreboard players operation write_0 Computer = rs2_8 Computer
scoreboard players operation write_1 Computer = rs2_9 Computer
scoreboard players operation write_2 Computer = rs2_10 Computer
scoreboard players operation write_3 Computer = rs2_11 Computer
scoreboard players operation write_4 Computer = rs2_12 Computer
scoreboard players operation write_5 Computer = rs2_13 Computer
scoreboard players operation write_6 Computer = rs2_14 Computer
scoreboard players operation write_7 Computer = rs2_15 Computer
execute at @s positioned ~-1 ~ ~ run function computer:write/write_8bits