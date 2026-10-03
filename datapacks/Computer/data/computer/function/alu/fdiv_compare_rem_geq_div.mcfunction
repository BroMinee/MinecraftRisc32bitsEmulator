# Compare 25-bit remainder >= 24-bit divisor (divisor bit 24 is implicitly 0)
# Result: fdiv_geq = 1 if rem >= div, 0 otherwise
# Compare MSB to LSB: first difference determines result

# If rem bit 24 is set, remainder is definitely >= (divisor bit 24 = 0)
scoreboard players set fdiv_geq Computer 1
scoreboard players set fdiv_cmp_done Computer 0
execute if score fdiv_rem_24 Computer matches 1 run scoreboard players set fdiv_cmp_done Computer 1

# Compare bits 23 down to 0
execute if score fdiv_cmp_done Computer matches 0 run execute if score fdiv_rem_23 Computer > fdiv_divisor_23 Computer run scoreboard players set fdiv_cmp_done Computer 1
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_23 Computer = fdiv_divisor_23 Computer run scoreboard players set fdiv_geq Computer 0
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_23 Computer = fdiv_divisor_23 Computer run scoreboard players set fdiv_cmp_done Computer 1

execute if score fdiv_cmp_done Computer matches 0 run execute if score fdiv_rem_22 Computer > fdiv_divisor_22 Computer run scoreboard players set fdiv_cmp_done Computer 1
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_22 Computer = fdiv_divisor_22 Computer run scoreboard players set fdiv_geq Computer 0
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_22 Computer = fdiv_divisor_22 Computer run scoreboard players set fdiv_cmp_done Computer 1

execute if score fdiv_cmp_done Computer matches 0 run execute if score fdiv_rem_21 Computer > fdiv_divisor_21 Computer run scoreboard players set fdiv_cmp_done Computer 1
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_21 Computer = fdiv_divisor_21 Computer run scoreboard players set fdiv_geq Computer 0
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_21 Computer = fdiv_divisor_21 Computer run scoreboard players set fdiv_cmp_done Computer 1

execute if score fdiv_cmp_done Computer matches 0 run execute if score fdiv_rem_20 Computer > fdiv_divisor_20 Computer run scoreboard players set fdiv_cmp_done Computer 1
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_20 Computer = fdiv_divisor_20 Computer run scoreboard players set fdiv_geq Computer 0
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_20 Computer = fdiv_divisor_20 Computer run scoreboard players set fdiv_cmp_done Computer 1

execute if score fdiv_cmp_done Computer matches 0 run execute if score fdiv_rem_19 Computer > fdiv_divisor_19 Computer run scoreboard players set fdiv_cmp_done Computer 1
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_19 Computer = fdiv_divisor_19 Computer run scoreboard players set fdiv_geq Computer 0
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_19 Computer = fdiv_divisor_19 Computer run scoreboard players set fdiv_cmp_done Computer 1

execute if score fdiv_cmp_done Computer matches 0 run execute if score fdiv_rem_18 Computer > fdiv_divisor_18 Computer run scoreboard players set fdiv_cmp_done Computer 1
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_18 Computer = fdiv_divisor_18 Computer run scoreboard players set fdiv_geq Computer 0
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_18 Computer = fdiv_divisor_18 Computer run scoreboard players set fdiv_cmp_done Computer 1

execute if score fdiv_cmp_done Computer matches 0 run execute if score fdiv_rem_17 Computer > fdiv_divisor_17 Computer run scoreboard players set fdiv_cmp_done Computer 1
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_17 Computer = fdiv_divisor_17 Computer run scoreboard players set fdiv_geq Computer 0
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_17 Computer = fdiv_divisor_17 Computer run scoreboard players set fdiv_cmp_done Computer 1

execute if score fdiv_cmp_done Computer matches 0 run execute if score fdiv_rem_16 Computer > fdiv_divisor_16 Computer run scoreboard players set fdiv_cmp_done Computer 1
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_16 Computer = fdiv_divisor_16 Computer run scoreboard players set fdiv_geq Computer 0
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_16 Computer = fdiv_divisor_16 Computer run scoreboard players set fdiv_cmp_done Computer 1

execute if score fdiv_cmp_done Computer matches 0 run execute if score fdiv_rem_15 Computer > fdiv_divisor_15 Computer run scoreboard players set fdiv_cmp_done Computer 1
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_15 Computer = fdiv_divisor_15 Computer run scoreboard players set fdiv_geq Computer 0
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_15 Computer = fdiv_divisor_15 Computer run scoreboard players set fdiv_cmp_done Computer 1

execute if score fdiv_cmp_done Computer matches 0 run execute if score fdiv_rem_14 Computer > fdiv_divisor_14 Computer run scoreboard players set fdiv_cmp_done Computer 1
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_14 Computer = fdiv_divisor_14 Computer run scoreboard players set fdiv_geq Computer 0
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_14 Computer = fdiv_divisor_14 Computer run scoreboard players set fdiv_cmp_done Computer 1

execute if score fdiv_cmp_done Computer matches 0 run execute if score fdiv_rem_13 Computer > fdiv_divisor_13 Computer run scoreboard players set fdiv_cmp_done Computer 1
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_13 Computer = fdiv_divisor_13 Computer run scoreboard players set fdiv_geq Computer 0
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_13 Computer = fdiv_divisor_13 Computer run scoreboard players set fdiv_cmp_done Computer 1

execute if score fdiv_cmp_done Computer matches 0 run execute if score fdiv_rem_12 Computer > fdiv_divisor_12 Computer run scoreboard players set fdiv_cmp_done Computer 1
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_12 Computer = fdiv_divisor_12 Computer run scoreboard players set fdiv_geq Computer 0
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_12 Computer = fdiv_divisor_12 Computer run scoreboard players set fdiv_cmp_done Computer 1

execute if score fdiv_cmp_done Computer matches 0 run execute if score fdiv_rem_11 Computer > fdiv_divisor_11 Computer run scoreboard players set fdiv_cmp_done Computer 1
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_11 Computer = fdiv_divisor_11 Computer run scoreboard players set fdiv_geq Computer 0
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_11 Computer = fdiv_divisor_11 Computer run scoreboard players set fdiv_cmp_done Computer 1

execute if score fdiv_cmp_done Computer matches 0 run execute if score fdiv_rem_10 Computer > fdiv_divisor_10 Computer run scoreboard players set fdiv_cmp_done Computer 1
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_10 Computer = fdiv_divisor_10 Computer run scoreboard players set fdiv_geq Computer 0
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_10 Computer = fdiv_divisor_10 Computer run scoreboard players set fdiv_cmp_done Computer 1

execute if score fdiv_cmp_done Computer matches 0 run execute if score fdiv_rem_9 Computer > fdiv_divisor_9 Computer run scoreboard players set fdiv_cmp_done Computer 1
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_9 Computer = fdiv_divisor_9 Computer run scoreboard players set fdiv_geq Computer 0
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_9 Computer = fdiv_divisor_9 Computer run scoreboard players set fdiv_cmp_done Computer 1

execute if score fdiv_cmp_done Computer matches 0 run execute if score fdiv_rem_8 Computer > fdiv_divisor_8 Computer run scoreboard players set fdiv_cmp_done Computer 1
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_8 Computer = fdiv_divisor_8 Computer run scoreboard players set fdiv_geq Computer 0
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_8 Computer = fdiv_divisor_8 Computer run scoreboard players set fdiv_cmp_done Computer 1

execute if score fdiv_cmp_done Computer matches 0 run execute if score fdiv_rem_7 Computer > fdiv_divisor_7 Computer run scoreboard players set fdiv_cmp_done Computer 1
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_7 Computer = fdiv_divisor_7 Computer run scoreboard players set fdiv_geq Computer 0
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_7 Computer = fdiv_divisor_7 Computer run scoreboard players set fdiv_cmp_done Computer 1

execute if score fdiv_cmp_done Computer matches 0 run execute if score fdiv_rem_6 Computer > fdiv_divisor_6 Computer run scoreboard players set fdiv_cmp_done Computer 1
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_6 Computer = fdiv_divisor_6 Computer run scoreboard players set fdiv_geq Computer 0
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_6 Computer = fdiv_divisor_6 Computer run scoreboard players set fdiv_cmp_done Computer 1

execute if score fdiv_cmp_done Computer matches 0 run execute if score fdiv_rem_5 Computer > fdiv_divisor_5 Computer run scoreboard players set fdiv_cmp_done Computer 1
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_5 Computer = fdiv_divisor_5 Computer run scoreboard players set fdiv_geq Computer 0
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_5 Computer = fdiv_divisor_5 Computer run scoreboard players set fdiv_cmp_done Computer 1

execute if score fdiv_cmp_done Computer matches 0 run execute if score fdiv_rem_4 Computer > fdiv_divisor_4 Computer run scoreboard players set fdiv_cmp_done Computer 1
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_4 Computer = fdiv_divisor_4 Computer run scoreboard players set fdiv_geq Computer 0
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_4 Computer = fdiv_divisor_4 Computer run scoreboard players set fdiv_cmp_done Computer 1

execute if score fdiv_cmp_done Computer matches 0 run execute if score fdiv_rem_3 Computer > fdiv_divisor_3 Computer run scoreboard players set fdiv_cmp_done Computer 1
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_3 Computer = fdiv_divisor_3 Computer run scoreboard players set fdiv_geq Computer 0
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_3 Computer = fdiv_divisor_3 Computer run scoreboard players set fdiv_cmp_done Computer 1

execute if score fdiv_cmp_done Computer matches 0 run execute if score fdiv_rem_2 Computer > fdiv_divisor_2 Computer run scoreboard players set fdiv_cmp_done Computer 1
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_2 Computer = fdiv_divisor_2 Computer run scoreboard players set fdiv_geq Computer 0
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_2 Computer = fdiv_divisor_2 Computer run scoreboard players set fdiv_cmp_done Computer 1

execute if score fdiv_cmp_done Computer matches 0 run execute if score fdiv_rem_1 Computer > fdiv_divisor_1 Computer run scoreboard players set fdiv_cmp_done Computer 1
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_1 Computer = fdiv_divisor_1 Computer run scoreboard players set fdiv_geq Computer 0
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_1 Computer = fdiv_divisor_1 Computer run scoreboard players set fdiv_cmp_done Computer 1

execute if score fdiv_cmp_done Computer matches 0 run execute if score fdiv_rem_0 Computer > fdiv_divisor_0 Computer run scoreboard players set fdiv_cmp_done Computer 1
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_0 Computer = fdiv_divisor_0 Computer run scoreboard players set fdiv_geq Computer 0
execute if score fdiv_cmp_done Computer matches 0 run execute unless score fdiv_rem_0 Computer = fdiv_divisor_0 Computer run scoreboard players set fdiv_cmp_done Computer 1

# If we get here with fdiv_cmp_done=0, all bits are equal -> rem == div -> geq = 1 (already set)
