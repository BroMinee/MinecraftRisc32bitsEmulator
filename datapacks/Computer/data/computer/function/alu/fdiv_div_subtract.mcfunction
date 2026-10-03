# Subtract divisor from remainder: fdiv_rem -= fdiv_divisor
# Both are binary (each bit is 0 or 1)
# We know rem >= div, so no underflow
# Method: rem_i -= div_i, then propagate borrows from bit 0 to 24

# Subtract each bit
scoreboard players operation fdiv_rem_0 Computer -= fdiv_divisor_0 Computer
scoreboard players operation fdiv_rem_1 Computer -= fdiv_divisor_1 Computer
scoreboard players operation fdiv_rem_2 Computer -= fdiv_divisor_2 Computer
scoreboard players operation fdiv_rem_3 Computer -= fdiv_divisor_3 Computer
scoreboard players operation fdiv_rem_4 Computer -= fdiv_divisor_4 Computer
scoreboard players operation fdiv_rem_5 Computer -= fdiv_divisor_5 Computer
scoreboard players operation fdiv_rem_6 Computer -= fdiv_divisor_6 Computer
scoreboard players operation fdiv_rem_7 Computer -= fdiv_divisor_7 Computer
scoreboard players operation fdiv_rem_8 Computer -= fdiv_divisor_8 Computer
scoreboard players operation fdiv_rem_9 Computer -= fdiv_divisor_9 Computer
scoreboard players operation fdiv_rem_10 Computer -= fdiv_divisor_10 Computer
scoreboard players operation fdiv_rem_11 Computer -= fdiv_divisor_11 Computer
scoreboard players operation fdiv_rem_12 Computer -= fdiv_divisor_12 Computer
scoreboard players operation fdiv_rem_13 Computer -= fdiv_divisor_13 Computer
scoreboard players operation fdiv_rem_14 Computer -= fdiv_divisor_14 Computer
scoreboard players operation fdiv_rem_15 Computer -= fdiv_divisor_15 Computer
scoreboard players operation fdiv_rem_16 Computer -= fdiv_divisor_16 Computer
scoreboard players operation fdiv_rem_17 Computer -= fdiv_divisor_17 Computer
scoreboard players operation fdiv_rem_18 Computer -= fdiv_divisor_18 Computer
scoreboard players operation fdiv_rem_19 Computer -= fdiv_divisor_19 Computer
scoreboard players operation fdiv_rem_20 Computer -= fdiv_divisor_20 Computer
scoreboard players operation fdiv_rem_21 Computer -= fdiv_divisor_21 Computer
scoreboard players operation fdiv_rem_22 Computer -= fdiv_divisor_22 Computer
scoreboard players operation fdiv_rem_23 Computer -= fdiv_divisor_23 Computer

# Propagate borrows from bit 0 to bit 24
# If a bit is negative (-1): borrow from next bit FIRST, then fix current bit
execute if score fdiv_rem_0 Computer matches ..-1 run scoreboard players remove fdiv_rem_1 Computer 1
execute if score fdiv_rem_0 Computer matches ..-1 run scoreboard players add fdiv_rem_0 Computer 2
execute if score fdiv_rem_1 Computer matches ..-1 run scoreboard players remove fdiv_rem_2 Computer 1
execute if score fdiv_rem_1 Computer matches ..-1 run scoreboard players add fdiv_rem_1 Computer 2
execute if score fdiv_rem_2 Computer matches ..-1 run scoreboard players remove fdiv_rem_3 Computer 1
execute if score fdiv_rem_2 Computer matches ..-1 run scoreboard players add fdiv_rem_2 Computer 2
execute if score fdiv_rem_3 Computer matches ..-1 run scoreboard players remove fdiv_rem_4 Computer 1
execute if score fdiv_rem_3 Computer matches ..-1 run scoreboard players add fdiv_rem_3 Computer 2
execute if score fdiv_rem_4 Computer matches ..-1 run scoreboard players remove fdiv_rem_5 Computer 1
execute if score fdiv_rem_4 Computer matches ..-1 run scoreboard players add fdiv_rem_4 Computer 2
execute if score fdiv_rem_5 Computer matches ..-1 run scoreboard players remove fdiv_rem_6 Computer 1
execute if score fdiv_rem_5 Computer matches ..-1 run scoreboard players add fdiv_rem_5 Computer 2
execute if score fdiv_rem_6 Computer matches ..-1 run scoreboard players remove fdiv_rem_7 Computer 1
execute if score fdiv_rem_6 Computer matches ..-1 run scoreboard players add fdiv_rem_6 Computer 2
execute if score fdiv_rem_7 Computer matches ..-1 run scoreboard players remove fdiv_rem_8 Computer 1
execute if score fdiv_rem_7 Computer matches ..-1 run scoreboard players add fdiv_rem_7 Computer 2
execute if score fdiv_rem_8 Computer matches ..-1 run scoreboard players remove fdiv_rem_9 Computer 1
execute if score fdiv_rem_8 Computer matches ..-1 run scoreboard players add fdiv_rem_8 Computer 2
execute if score fdiv_rem_9 Computer matches ..-1 run scoreboard players remove fdiv_rem_10 Computer 1
execute if score fdiv_rem_9 Computer matches ..-1 run scoreboard players add fdiv_rem_9 Computer 2
execute if score fdiv_rem_10 Computer matches ..-1 run scoreboard players remove fdiv_rem_11 Computer 1
execute if score fdiv_rem_10 Computer matches ..-1 run scoreboard players add fdiv_rem_10 Computer 2
execute if score fdiv_rem_11 Computer matches ..-1 run scoreboard players remove fdiv_rem_12 Computer 1
execute if score fdiv_rem_11 Computer matches ..-1 run scoreboard players add fdiv_rem_11 Computer 2
execute if score fdiv_rem_12 Computer matches ..-1 run scoreboard players remove fdiv_rem_13 Computer 1
execute if score fdiv_rem_12 Computer matches ..-1 run scoreboard players add fdiv_rem_12 Computer 2
execute if score fdiv_rem_13 Computer matches ..-1 run scoreboard players remove fdiv_rem_14 Computer 1
execute if score fdiv_rem_13 Computer matches ..-1 run scoreboard players add fdiv_rem_13 Computer 2
execute if score fdiv_rem_14 Computer matches ..-1 run scoreboard players remove fdiv_rem_15 Computer 1
execute if score fdiv_rem_14 Computer matches ..-1 run scoreboard players add fdiv_rem_14 Computer 2
execute if score fdiv_rem_15 Computer matches ..-1 run scoreboard players remove fdiv_rem_16 Computer 1
execute if score fdiv_rem_15 Computer matches ..-1 run scoreboard players add fdiv_rem_15 Computer 2
execute if score fdiv_rem_16 Computer matches ..-1 run scoreboard players remove fdiv_rem_17 Computer 1
execute if score fdiv_rem_16 Computer matches ..-1 run scoreboard players add fdiv_rem_16 Computer 2
execute if score fdiv_rem_17 Computer matches ..-1 run scoreboard players remove fdiv_rem_18 Computer 1
execute if score fdiv_rem_17 Computer matches ..-1 run scoreboard players add fdiv_rem_17 Computer 2
execute if score fdiv_rem_18 Computer matches ..-1 run scoreboard players remove fdiv_rem_19 Computer 1
execute if score fdiv_rem_18 Computer matches ..-1 run scoreboard players add fdiv_rem_18 Computer 2
execute if score fdiv_rem_19 Computer matches ..-1 run scoreboard players remove fdiv_rem_20 Computer 1
execute if score fdiv_rem_19 Computer matches ..-1 run scoreboard players add fdiv_rem_19 Computer 2
execute if score fdiv_rem_20 Computer matches ..-1 run scoreboard players remove fdiv_rem_21 Computer 1
execute if score fdiv_rem_20 Computer matches ..-1 run scoreboard players add fdiv_rem_20 Computer 2
execute if score fdiv_rem_21 Computer matches ..-1 run scoreboard players remove fdiv_rem_22 Computer 1
execute if score fdiv_rem_21 Computer matches ..-1 run scoreboard players add fdiv_rem_21 Computer 2
execute if score fdiv_rem_22 Computer matches ..-1 run scoreboard players remove fdiv_rem_23 Computer 1
execute if score fdiv_rem_22 Computer matches ..-1 run scoreboard players add fdiv_rem_22 Computer 2
execute if score fdiv_rem_23 Computer matches ..-1 run scoreboard players remove fdiv_rem_24 Computer 1
execute if score fdiv_rem_23 Computer matches ..-1 run scoreboard players add fdiv_rem_23 Computer 2
execute if score fdiv_rem_24 Computer matches ..-1 run scoreboard players add fdiv_rem_24 Computer 2
