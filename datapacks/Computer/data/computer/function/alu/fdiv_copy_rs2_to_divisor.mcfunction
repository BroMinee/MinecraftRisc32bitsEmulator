# Copy rs2 mantissa (bits 0-22) to fdiv_divisor, set implicit bit 23
scoreboard players operation fdiv_divisor_0 Computer = rs2_0 Computer
scoreboard players operation fdiv_divisor_1 Computer = rs2_1 Computer
scoreboard players operation fdiv_divisor_2 Computer = rs2_2 Computer
scoreboard players operation fdiv_divisor_3 Computer = rs2_3 Computer
scoreboard players operation fdiv_divisor_4 Computer = rs2_4 Computer
scoreboard players operation fdiv_divisor_5 Computer = rs2_5 Computer
scoreboard players operation fdiv_divisor_6 Computer = rs2_6 Computer
scoreboard players operation fdiv_divisor_7 Computer = rs2_7 Computer
scoreboard players operation fdiv_divisor_8 Computer = rs2_8 Computer
scoreboard players operation fdiv_divisor_9 Computer = rs2_9 Computer
scoreboard players operation fdiv_divisor_10 Computer = rs2_10 Computer
scoreboard players operation fdiv_divisor_11 Computer = rs2_11 Computer
scoreboard players operation fdiv_divisor_12 Computer = rs2_12 Computer
scoreboard players operation fdiv_divisor_13 Computer = rs2_13 Computer
scoreboard players operation fdiv_divisor_14 Computer = rs2_14 Computer
scoreboard players operation fdiv_divisor_15 Computer = rs2_15 Computer
scoreboard players operation fdiv_divisor_16 Computer = rs2_16 Computer
scoreboard players operation fdiv_divisor_17 Computer = rs2_17 Computer
scoreboard players operation fdiv_divisor_18 Computer = rs2_18 Computer
scoreboard players operation fdiv_divisor_19 Computer = rs2_19 Computer
scoreboard players operation fdiv_divisor_20 Computer = rs2_20 Computer
scoreboard players operation fdiv_divisor_21 Computer = rs2_21 Computer
scoreboard players operation fdiv_divisor_22 Computer = rs2_22 Computer
# Implicit leading 1 for normals
scoreboard players set fdiv_divisor_23 Computer 0
execute if score fdiv_rs2_exp_zero Computer matches 0 run scoreboard players set fdiv_divisor_23 Computer 1
