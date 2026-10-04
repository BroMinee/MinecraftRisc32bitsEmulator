# Copy rs1 mantissa (bits 0-22) to fdiv_dividend, set implicit bit 23
scoreboard players operation fdiv_dividend_0 Computer = rs1_0 Computer
scoreboard players operation fdiv_dividend_1 Computer = rs1_1 Computer
scoreboard players operation fdiv_dividend_2 Computer = rs1_2 Computer
scoreboard players operation fdiv_dividend_3 Computer = rs1_3 Computer
scoreboard players operation fdiv_dividend_4 Computer = rs1_4 Computer
scoreboard players operation fdiv_dividend_5 Computer = rs1_5 Computer
scoreboard players operation fdiv_dividend_6 Computer = rs1_6 Computer
scoreboard players operation fdiv_dividend_7 Computer = rs1_7 Computer
scoreboard players operation fdiv_dividend_8 Computer = rs1_8 Computer
scoreboard players operation fdiv_dividend_9 Computer = rs1_9 Computer
scoreboard players operation fdiv_dividend_10 Computer = rs1_10 Computer
scoreboard players operation fdiv_dividend_11 Computer = rs1_11 Computer
scoreboard players operation fdiv_dividend_12 Computer = rs1_12 Computer
scoreboard players operation fdiv_dividend_13 Computer = rs1_13 Computer
scoreboard players operation fdiv_dividend_14 Computer = rs1_14 Computer
scoreboard players operation fdiv_dividend_15 Computer = rs1_15 Computer
scoreboard players operation fdiv_dividend_16 Computer = rs1_16 Computer
scoreboard players operation fdiv_dividend_17 Computer = rs1_17 Computer
scoreboard players operation fdiv_dividend_18 Computer = rs1_18 Computer
scoreboard players operation fdiv_dividend_19 Computer = rs1_19 Computer
scoreboard players operation fdiv_dividend_20 Computer = rs1_20 Computer
scoreboard players operation fdiv_dividend_21 Computer = rs1_21 Computer
scoreboard players operation fdiv_dividend_22 Computer = rs1_22 Computer
# Implicit leading 1 for normals
scoreboard players set fdiv_dividend_23 Computer 0
execute if score fdiv_rs1_exp_zero Computer matches 0 run scoreboard players set fdiv_dividend_23 Computer 1
