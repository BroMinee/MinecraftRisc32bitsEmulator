# Shift rd mantissa right by 1, tracking sticky bits
# fdiv_underflow_implicit = 1 for the first shift (insert implicit bit), 0 after

# The bit shifted out goes to guard -> round -> sticky
execute if score fdiv_round Computer matches 1 run scoreboard players set fdiv_sticky Computer 1
scoreboard players operation fdiv_round Computer = fdiv_guard Computer
scoreboard players operation fdiv_guard Computer = rd_0 Computer

# Shift right
scoreboard players operation rd_0 Computer = rd_1 Computer
scoreboard players operation rd_1 Computer = rd_2 Computer
scoreboard players operation rd_2 Computer = rd_3 Computer
scoreboard players operation rd_3 Computer = rd_4 Computer
scoreboard players operation rd_4 Computer = rd_5 Computer
scoreboard players operation rd_5 Computer = rd_6 Computer
scoreboard players operation rd_6 Computer = rd_7 Computer
scoreboard players operation rd_7 Computer = rd_8 Computer
scoreboard players operation rd_8 Computer = rd_9 Computer
scoreboard players operation rd_9 Computer = rd_10 Computer
scoreboard players operation rd_10 Computer = rd_11 Computer
scoreboard players operation rd_11 Computer = rd_12 Computer
scoreboard players operation rd_12 Computer = rd_13 Computer
scoreboard players operation rd_13 Computer = rd_14 Computer
scoreboard players operation rd_14 Computer = rd_15 Computer
scoreboard players operation rd_15 Computer = rd_16 Computer
scoreboard players operation rd_16 Computer = rd_17 Computer
scoreboard players operation rd_17 Computer = rd_18 Computer
scoreboard players operation rd_18 Computer = rd_19 Computer
scoreboard players operation rd_19 Computer = rd_20 Computer
scoreboard players operation rd_20 Computer = rd_21 Computer
scoreboard players operation rd_21 Computer = rd_22 Computer
# Insert implicit bit or 0
scoreboard players operation rd_22 Computer = fdiv_underflow_implicit Computer

# After first shift, no more implicit bit
scoreboard players set fdiv_underflow_implicit Computer 0

scoreboard players remove fdiv_shift_amount Computer 1
execute if score fdiv_shift_amount Computer matches 1.. run function computer:alu/fdiv_underflow_shift_right
