# One iteration of restoring binary long division
# 1. Compare remainder >= divisor
# 2. If yes: subtract divisor, set quotient bit = 1
# 3. Shift remainder left by 1

# Remove one element from iteration counter
data remove storage computer:memory div[-1]

# Compare remainder >= divisor
function computer:alu/fdiv_compare_rem_geq_div

# If remainder >= divisor: subtract, quotient bit = 1
execute if score fdiv_geq Computer matches 1 run function computer:alu/fdiv_div_subtract

# Set quotient bit at current position
execute if score fdiv_quot_pos Computer matches 25 run scoreboard players operation fdiv_quot_25 Computer = fdiv_geq Computer
execute if score fdiv_quot_pos Computer matches 24 run scoreboard players operation fdiv_quot_24 Computer = fdiv_geq Computer
execute if score fdiv_quot_pos Computer matches 23 run scoreboard players operation fdiv_quot_23 Computer = fdiv_geq Computer
execute if score fdiv_quot_pos Computer matches 22 run scoreboard players operation fdiv_quot_22 Computer = fdiv_geq Computer
execute if score fdiv_quot_pos Computer matches 21 run scoreboard players operation fdiv_quot_21 Computer = fdiv_geq Computer
execute if score fdiv_quot_pos Computer matches 20 run scoreboard players operation fdiv_quot_20 Computer = fdiv_geq Computer
execute if score fdiv_quot_pos Computer matches 19 run scoreboard players operation fdiv_quot_19 Computer = fdiv_geq Computer
execute if score fdiv_quot_pos Computer matches 18 run scoreboard players operation fdiv_quot_18 Computer = fdiv_geq Computer
execute if score fdiv_quot_pos Computer matches 17 run scoreboard players operation fdiv_quot_17 Computer = fdiv_geq Computer
execute if score fdiv_quot_pos Computer matches 16 run scoreboard players operation fdiv_quot_16 Computer = fdiv_geq Computer
execute if score fdiv_quot_pos Computer matches 15 run scoreboard players operation fdiv_quot_15 Computer = fdiv_geq Computer
execute if score fdiv_quot_pos Computer matches 14 run scoreboard players operation fdiv_quot_14 Computer = fdiv_geq Computer
execute if score fdiv_quot_pos Computer matches 13 run scoreboard players operation fdiv_quot_13 Computer = fdiv_geq Computer
execute if score fdiv_quot_pos Computer matches 12 run scoreboard players operation fdiv_quot_12 Computer = fdiv_geq Computer
execute if score fdiv_quot_pos Computer matches 11 run scoreboard players operation fdiv_quot_11 Computer = fdiv_geq Computer
execute if score fdiv_quot_pos Computer matches 10 run scoreboard players operation fdiv_quot_10 Computer = fdiv_geq Computer
execute if score fdiv_quot_pos Computer matches 9 run scoreboard players operation fdiv_quot_9 Computer = fdiv_geq Computer
execute if score fdiv_quot_pos Computer matches 8 run scoreboard players operation fdiv_quot_8 Computer = fdiv_geq Computer
execute if score fdiv_quot_pos Computer matches 7 run scoreboard players operation fdiv_quot_7 Computer = fdiv_geq Computer
execute if score fdiv_quot_pos Computer matches 6 run scoreboard players operation fdiv_quot_6 Computer = fdiv_geq Computer
execute if score fdiv_quot_pos Computer matches 5 run scoreboard players operation fdiv_quot_5 Computer = fdiv_geq Computer
execute if score fdiv_quot_pos Computer matches 4 run scoreboard players operation fdiv_quot_4 Computer = fdiv_geq Computer
execute if score fdiv_quot_pos Computer matches 3 run scoreboard players operation fdiv_quot_3 Computer = fdiv_geq Computer
execute if score fdiv_quot_pos Computer matches 2 run scoreboard players operation fdiv_quot_2 Computer = fdiv_geq Computer
execute if score fdiv_quot_pos Computer matches 1 run scoreboard players operation fdiv_quot_1 Computer = fdiv_geq Computer
execute if score fdiv_quot_pos Computer matches 0 run scoreboard players operation fdiv_quot_0 Computer = fdiv_geq Computer

# Shift remainder left by 1
scoreboard players operation fdiv_rem_24 Computer = fdiv_rem_23 Computer
scoreboard players operation fdiv_rem_23 Computer = fdiv_rem_22 Computer
scoreboard players operation fdiv_rem_22 Computer = fdiv_rem_21 Computer
scoreboard players operation fdiv_rem_21 Computer = fdiv_rem_20 Computer
scoreboard players operation fdiv_rem_20 Computer = fdiv_rem_19 Computer
scoreboard players operation fdiv_rem_19 Computer = fdiv_rem_18 Computer
scoreboard players operation fdiv_rem_18 Computer = fdiv_rem_17 Computer
scoreboard players operation fdiv_rem_17 Computer = fdiv_rem_16 Computer
scoreboard players operation fdiv_rem_16 Computer = fdiv_rem_15 Computer
scoreboard players operation fdiv_rem_15 Computer = fdiv_rem_14 Computer
scoreboard players operation fdiv_rem_14 Computer = fdiv_rem_13 Computer
scoreboard players operation fdiv_rem_13 Computer = fdiv_rem_12 Computer
scoreboard players operation fdiv_rem_12 Computer = fdiv_rem_11 Computer
scoreboard players operation fdiv_rem_11 Computer = fdiv_rem_10 Computer
scoreboard players operation fdiv_rem_10 Computer = fdiv_rem_9 Computer
scoreboard players operation fdiv_rem_9 Computer = fdiv_rem_8 Computer
scoreboard players operation fdiv_rem_8 Computer = fdiv_rem_7 Computer
scoreboard players operation fdiv_rem_7 Computer = fdiv_rem_6 Computer
scoreboard players operation fdiv_rem_6 Computer = fdiv_rem_5 Computer
scoreboard players operation fdiv_rem_5 Computer = fdiv_rem_4 Computer
scoreboard players operation fdiv_rem_4 Computer = fdiv_rem_3 Computer
scoreboard players operation fdiv_rem_3 Computer = fdiv_rem_2 Computer
scoreboard players operation fdiv_rem_2 Computer = fdiv_rem_1 Computer
scoreboard players operation fdiv_rem_1 Computer = fdiv_rem_0 Computer
scoreboard players set fdiv_rem_0 Computer 0

# Decrement position
scoreboard players remove fdiv_quot_pos Computer 1

# Continue if there are more iterations
execute if data storage computer:memory div[-1] run function computer:alu/fdiv_div_iterate
