# Propagate NaN from rs1: rd = rs1 with bit 22 set (quiet NaN), sign=0, exp=0xFF
function computer:misc/reset_rd
function computer:misc/set_rd_exponent_to_inf
scoreboard players set rd_31 Computer 0
scoreboard players operation rd_22 Computer = rs1_22 Computer
scoreboard players operation rd_21 Computer = rs1_21 Computer
scoreboard players operation rd_20 Computer = rs1_20 Computer
scoreboard players operation rd_19 Computer = rs1_19 Computer
scoreboard players operation rd_18 Computer = rs1_18 Computer
scoreboard players operation rd_17 Computer = rs1_17 Computer
scoreboard players operation rd_16 Computer = rs1_16 Computer
scoreboard players operation rd_15 Computer = rs1_15 Computer
scoreboard players operation rd_14 Computer = rs1_14 Computer
scoreboard players operation rd_13 Computer = rs1_13 Computer
scoreboard players operation rd_12 Computer = rs1_12 Computer
scoreboard players operation rd_11 Computer = rs1_11 Computer
scoreboard players operation rd_10 Computer = rs1_10 Computer
scoreboard players operation rd_9 Computer = rs1_9 Computer
scoreboard players operation rd_8 Computer = rs1_8 Computer
scoreboard players operation rd_7 Computer = rs1_7 Computer
scoreboard players operation rd_6 Computer = rs1_6 Computer
scoreboard players operation rd_5 Computer = rs1_5 Computer
scoreboard players operation rd_4 Computer = rs1_4 Computer
scoreboard players operation rd_3 Computer = rs1_3 Computer
scoreboard players operation rd_2 Computer = rs1_2 Computer
scoreboard players operation rd_1 Computer = rs1_1 Computer
scoreboard players operation rd_0 Computer = rs1_0 Computer
scoreboard players set rd_22 Computer 1
