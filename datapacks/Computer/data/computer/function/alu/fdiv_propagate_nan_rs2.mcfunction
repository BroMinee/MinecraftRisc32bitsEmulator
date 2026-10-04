# Propagate NaN from rs2: rd = rs2 with bit 22 set (quiet NaN), sign=0, exp=0xFF
function computer:misc/reset_rd
function computer:misc/set_rd_exponent_to_inf
scoreboard players set rd_31 Computer 0
scoreboard players operation rd_22 Computer = rs2_22 Computer
scoreboard players operation rd_21 Computer = rs2_21 Computer
scoreboard players operation rd_20 Computer = rs2_20 Computer
scoreboard players operation rd_19 Computer = rs2_19 Computer
scoreboard players operation rd_18 Computer = rs2_18 Computer
scoreboard players operation rd_17 Computer = rs2_17 Computer
scoreboard players operation rd_16 Computer = rs2_16 Computer
scoreboard players operation rd_15 Computer = rs2_15 Computer
scoreboard players operation rd_14 Computer = rs2_14 Computer
scoreboard players operation rd_13 Computer = rs2_13 Computer
scoreboard players operation rd_12 Computer = rs2_12 Computer
scoreboard players operation rd_11 Computer = rs2_11 Computer
scoreboard players operation rd_10 Computer = rs2_10 Computer
scoreboard players operation rd_9 Computer = rs2_9 Computer
scoreboard players operation rd_8 Computer = rs2_8 Computer
scoreboard players operation rd_7 Computer = rs2_7 Computer
scoreboard players operation rd_6 Computer = rs2_6 Computer
scoreboard players operation rd_5 Computer = rs2_5 Computer
scoreboard players operation rd_4 Computer = rs2_4 Computer
scoreboard players operation rd_3 Computer = rs2_3 Computer
scoreboard players operation rd_2 Computer = rs2_2 Computer
scoreboard players operation rd_1 Computer = rs2_1 Computer
scoreboard players operation rd_0 Computer = rs2_0 Computer
scoreboard players set rd_22 Computer 1
