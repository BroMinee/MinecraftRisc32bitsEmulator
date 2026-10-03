# Pre-normalize subnormal dividend: shift left until bit 23 is set, decrement exponent
# Only called when fdiv_rs1_exp_zero = 1 (subnormal)

scoreboard players remove fdiv_exp_a Computer 1

# Shift left by 1
scoreboard players operation fdiv_dividend_23 Computer = fdiv_dividend_22 Computer
scoreboard players operation fdiv_dividend_22 Computer = fdiv_dividend_21 Computer
scoreboard players operation fdiv_dividend_21 Computer = fdiv_dividend_20 Computer
scoreboard players operation fdiv_dividend_20 Computer = fdiv_dividend_19 Computer
scoreboard players operation fdiv_dividend_19 Computer = fdiv_dividend_18 Computer
scoreboard players operation fdiv_dividend_18 Computer = fdiv_dividend_17 Computer
scoreboard players operation fdiv_dividend_17 Computer = fdiv_dividend_16 Computer
scoreboard players operation fdiv_dividend_16 Computer = fdiv_dividend_15 Computer
scoreboard players operation fdiv_dividend_15 Computer = fdiv_dividend_14 Computer
scoreboard players operation fdiv_dividend_14 Computer = fdiv_dividend_13 Computer
scoreboard players operation fdiv_dividend_13 Computer = fdiv_dividend_12 Computer
scoreboard players operation fdiv_dividend_12 Computer = fdiv_dividend_11 Computer
scoreboard players operation fdiv_dividend_11 Computer = fdiv_dividend_10 Computer
scoreboard players operation fdiv_dividend_10 Computer = fdiv_dividend_9 Computer
scoreboard players operation fdiv_dividend_9 Computer = fdiv_dividend_8 Computer
scoreboard players operation fdiv_dividend_8 Computer = fdiv_dividend_7 Computer
scoreboard players operation fdiv_dividend_7 Computer = fdiv_dividend_6 Computer
scoreboard players operation fdiv_dividend_6 Computer = fdiv_dividend_5 Computer
scoreboard players operation fdiv_dividend_5 Computer = fdiv_dividend_4 Computer
scoreboard players operation fdiv_dividend_4 Computer = fdiv_dividend_3 Computer
scoreboard players operation fdiv_dividend_3 Computer = fdiv_dividend_2 Computer
scoreboard players operation fdiv_dividend_2 Computer = fdiv_dividend_1 Computer
scoreboard players operation fdiv_dividend_1 Computer = fdiv_dividend_0 Computer
scoreboard players set fdiv_dividend_0 Computer 0

# Continue if bit 23 is still not set
execute if score fdiv_dividend_23 Computer matches 0 run function computer:alu/fdiv_prenorm_dividend
