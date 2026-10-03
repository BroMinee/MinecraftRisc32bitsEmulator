# Normalize fdiv quotient by shifting rd mantissa left
# Same logic as fmul_normalize_left

scoreboard players remove fdiv_exp_result Computer 1

# Save rd_22 value before shift (it becomes the implicit bit)
scoreboard players operation fdiv_shifted_out Computer = rd_22 Computer

# Shift rd left by 1
scoreboard players operation rd_22 Computer = rd_21 Computer
scoreboard players operation rd_21 Computer = rd_20 Computer
scoreboard players operation rd_20 Computer = rd_19 Computer
scoreboard players operation rd_19 Computer = rd_18 Computer
scoreboard players operation rd_18 Computer = rd_17 Computer
scoreboard players operation rd_17 Computer = rd_16 Computer
scoreboard players operation rd_16 Computer = rd_15 Computer
scoreboard players operation rd_15 Computer = rd_14 Computer
scoreboard players operation rd_14 Computer = rd_13 Computer
scoreboard players operation rd_13 Computer = rd_12 Computer
scoreboard players operation rd_12 Computer = rd_11 Computer
scoreboard players operation rd_11 Computer = rd_10 Computer
scoreboard players operation rd_10 Computer = rd_9 Computer
scoreboard players operation rd_9 Computer = rd_8 Computer
scoreboard players operation rd_8 Computer = rd_7 Computer
scoreboard players operation rd_7 Computer = rd_6 Computer
scoreboard players operation rd_6 Computer = rd_5 Computer
scoreboard players operation rd_5 Computer = rd_4 Computer
scoreboard players operation rd_4 Computer = rd_3 Computer
scoreboard players operation rd_3 Computer = rd_2 Computer
scoreboard players operation rd_2 Computer = rd_1 Computer
scoreboard players operation rd_1 Computer = rd_0 Computer
scoreboard players operation rd_0 Computer = fdiv_guard Computer

# Update guard/round/sticky
scoreboard players operation fdiv_guard Computer = fdiv_round Computer
scoreboard players operation fdiv_round Computer = fdiv_sticky Computer

# Continue if shifted-out bit was 0 and we haven't gone too far
execute if score fdiv_shifted_out Computer matches 0 run execute if score fdiv_exp_result Computer matches -46.. run function computer:alu/fdiv_normalize_left
