# Pre-normalize subnormal divisor: shift left until bit 23 is set, decrement exponent
# Only called when fdiv_rs2_exp_zero = 1 (subnormal)

scoreboard players remove fdiv_exp_b Computer 1

# Shift left by 1
scoreboard players operation fdiv_divisor_23 Computer = fdiv_divisor_22 Computer
scoreboard players operation fdiv_divisor_22 Computer = fdiv_divisor_21 Computer
scoreboard players operation fdiv_divisor_21 Computer = fdiv_divisor_20 Computer
scoreboard players operation fdiv_divisor_20 Computer = fdiv_divisor_19 Computer
scoreboard players operation fdiv_divisor_19 Computer = fdiv_divisor_18 Computer
scoreboard players operation fdiv_divisor_18 Computer = fdiv_divisor_17 Computer
scoreboard players operation fdiv_divisor_17 Computer = fdiv_divisor_16 Computer
scoreboard players operation fdiv_divisor_16 Computer = fdiv_divisor_15 Computer
scoreboard players operation fdiv_divisor_15 Computer = fdiv_divisor_14 Computer
scoreboard players operation fdiv_divisor_14 Computer = fdiv_divisor_13 Computer
scoreboard players operation fdiv_divisor_13 Computer = fdiv_divisor_12 Computer
scoreboard players operation fdiv_divisor_12 Computer = fdiv_divisor_11 Computer
scoreboard players operation fdiv_divisor_11 Computer = fdiv_divisor_10 Computer
scoreboard players operation fdiv_divisor_10 Computer = fdiv_divisor_9 Computer
scoreboard players operation fdiv_divisor_9 Computer = fdiv_divisor_8 Computer
scoreboard players operation fdiv_divisor_8 Computer = fdiv_divisor_7 Computer
scoreboard players operation fdiv_divisor_7 Computer = fdiv_divisor_6 Computer
scoreboard players operation fdiv_divisor_6 Computer = fdiv_divisor_5 Computer
scoreboard players operation fdiv_divisor_5 Computer = fdiv_divisor_4 Computer
scoreboard players operation fdiv_divisor_4 Computer = fdiv_divisor_3 Computer
scoreboard players operation fdiv_divisor_3 Computer = fdiv_divisor_2 Computer
scoreboard players operation fdiv_divisor_2 Computer = fdiv_divisor_1 Computer
scoreboard players operation fdiv_divisor_1 Computer = fdiv_divisor_0 Computer
scoreboard players set fdiv_divisor_0 Computer 0

# Continue if bit 23 is still not set
execute if score fdiv_divisor_23 Computer matches 0 run function computer:alu/fdiv_prenorm_divisor
