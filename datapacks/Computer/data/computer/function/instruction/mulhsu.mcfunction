tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running mulhsu","color":"gold"}]
# tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"Error: Not Yet Implemented mulhsu","bold":true,"color":"red"}]
# scoreboard players set error stats 1

scoreboard players add found_dispatcher Computer 1

# load
function computer:misc/load_rd_7_11
function computer:misc/load_rs1_15_19
function computer:misc/load_rs2_20_24

# Save rs1_31 before mulhu (rs1 is not modified by mulhu, but be safe)
scoreboard players operation mulhsu_sign Computer = rs1_31 Computer

# Run mulhu core logic (same as mulhu instruction)

# Store rs2 bits into array
function computer:alu/store_rs2_bits_to_mul_array

# Initialize shifted rs1
function computer:misc/copy_rs1_to_rd
scoreboard players set mulhu_sh_0 Computer 0
scoreboard players set mulhu_sh_1 Computer 0
scoreboard players set mulhu_sh_2 Computer 0
scoreboard players set mulhu_sh_3 Computer 0
scoreboard players set mulhu_sh_4 Computer 0
scoreboard players set mulhu_sh_5 Computer 0
scoreboard players set mulhu_sh_6 Computer 0
scoreboard players set mulhu_sh_7 Computer 0
scoreboard players set mulhu_sh_8 Computer 0
scoreboard players set mulhu_sh_9 Computer 0
scoreboard players set mulhu_sh_10 Computer 0
scoreboard players set mulhu_sh_11 Computer 0
scoreboard players set mulhu_sh_12 Computer 0
scoreboard players set mulhu_sh_13 Computer 0
scoreboard players set mulhu_sh_14 Computer 0
scoreboard players set mulhu_sh_15 Computer 0
scoreboard players set mulhu_sh_16 Computer 0
scoreboard players set mulhu_sh_17 Computer 0
scoreboard players set mulhu_sh_18 Computer 0
scoreboard players set mulhu_sh_19 Computer 0
scoreboard players set mulhu_sh_20 Computer 0
scoreboard players set mulhu_sh_21 Computer 0
scoreboard players set mulhu_sh_22 Computer 0
scoreboard players set mulhu_sh_23 Computer 0
scoreboard players set mulhu_sh_24 Computer 0
scoreboard players set mulhu_sh_25 Computer 0
scoreboard players set mulhu_sh_26 Computer 0
scoreboard players set mulhu_sh_27 Computer 0
scoreboard players set mulhu_sh_28 Computer 0
scoreboard players set mulhu_sh_29 Computer 0
scoreboard players set mulhu_sh_30 Computer 0
scoreboard players set mulhu_sh_31 Computer 0

# Initialize accumulator
function computer:misc/reset_input_l_32bits
scoreboard players set mulhu_acc_0 Computer 0
scoreboard players set mulhu_acc_1 Computer 0
scoreboard players set mulhu_acc_2 Computer 0
scoreboard players set mulhu_acc_3 Computer 0
scoreboard players set mulhu_acc_4 Computer 0
scoreboard players set mulhu_acc_5 Computer 0
scoreboard players set mulhu_acc_6 Computer 0
scoreboard players set mulhu_acc_7 Computer 0
scoreboard players set mulhu_acc_8 Computer 0
scoreboard players set mulhu_acc_9 Computer 0
scoreboard players set mulhu_acc_10 Computer 0
scoreboard players set mulhu_acc_11 Computer 0
scoreboard players set mulhu_acc_12 Computer 0
scoreboard players set mulhu_acc_13 Computer 0
scoreboard players set mulhu_acc_14 Computer 0
scoreboard players set mulhu_acc_15 Computer 0
scoreboard players set mulhu_acc_16 Computer 0
scoreboard players set mulhu_acc_17 Computer 0
scoreboard players set mulhu_acc_18 Computer 0
scoreboard players set mulhu_acc_19 Computer 0
scoreboard players set mulhu_acc_20 Computer 0
scoreboard players set mulhu_acc_21 Computer 0
scoreboard players set mulhu_acc_22 Computer 0
scoreboard players set mulhu_acc_23 Computer 0
scoreboard players set mulhu_acc_24 Computer 0
scoreboard players set mulhu_acc_25 Computer 0
scoreboard players set mulhu_acc_26 Computer 0
scoreboard players set mulhu_acc_27 Computer 0
scoreboard players set mulhu_acc_28 Computer 0
scoreboard players set mulhu_acc_29 Computer 0
scoreboard players set mulhu_acc_30 Computer 0
scoreboard players set mulhu_acc_31 Computer 0

# Iterate
scoreboard players set mulhu_bit_pos Computer 0
execute if data storage computer:memory mul[-1] run function computer:alu/mulhu_iterate

# mulhu_acc now has the unsigned multiply high result
# Copy to rd
scoreboard players operation rd_0 Computer = mulhu_acc_0 Computer
scoreboard players operation rd_1 Computer = mulhu_acc_1 Computer
scoreboard players operation rd_2 Computer = mulhu_acc_2 Computer
scoreboard players operation rd_3 Computer = mulhu_acc_3 Computer
scoreboard players operation rd_4 Computer = mulhu_acc_4 Computer
scoreboard players operation rd_5 Computer = mulhu_acc_5 Computer
scoreboard players operation rd_6 Computer = mulhu_acc_6 Computer
scoreboard players operation rd_7 Computer = mulhu_acc_7 Computer
scoreboard players operation rd_8 Computer = mulhu_acc_8 Computer
scoreboard players operation rd_9 Computer = mulhu_acc_9 Computer
scoreboard players operation rd_10 Computer = mulhu_acc_10 Computer
scoreboard players operation rd_11 Computer = mulhu_acc_11 Computer
scoreboard players operation rd_12 Computer = mulhu_acc_12 Computer
scoreboard players operation rd_13 Computer = mulhu_acc_13 Computer
scoreboard players operation rd_14 Computer = mulhu_acc_14 Computer
scoreboard players operation rd_15 Computer = mulhu_acc_15 Computer
scoreboard players operation rd_16 Computer = mulhu_acc_16 Computer
scoreboard players operation rd_17 Computer = mulhu_acc_17 Computer
scoreboard players operation rd_18 Computer = mulhu_acc_18 Computer
scoreboard players operation rd_19 Computer = mulhu_acc_19 Computer
scoreboard players operation rd_20 Computer = mulhu_acc_20 Computer
scoreboard players operation rd_21 Computer = mulhu_acc_21 Computer
scoreboard players operation rd_22 Computer = mulhu_acc_22 Computer
scoreboard players operation rd_23 Computer = mulhu_acc_23 Computer
scoreboard players operation rd_24 Computer = mulhu_acc_24 Computer
scoreboard players operation rd_25 Computer = mulhu_acc_25 Computer
scoreboard players operation rd_26 Computer = mulhu_acc_26 Computer
scoreboard players operation rd_27 Computer = mulhu_acc_27 Computer
scoreboard players operation rd_28 Computer = mulhu_acc_28 Computer
scoreboard players operation rd_29 Computer = mulhu_acc_29 Computer
scoreboard players operation rd_30 Computer = mulhu_acc_30 Computer
scoreboard players operation rd_31 Computer = mulhu_acc_31 Computer

# Sign correction: if rs1 was negative, subtract rs2 from rd
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_0 A2 = rs2_0 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_1 A2 = rs2_1 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_2 A2 = rs2_2 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_3 A2 = rs2_3 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_4 A2 = rs2_4 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_5 A2 = rs2_5 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_6 A2 = rs2_6 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_7 A2 = rs2_7 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_8 A2 = rs2_8 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_9 A2 = rs2_9 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_10 A2 = rs2_10 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_11 A2 = rs2_11 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_12 A2 = rs2_12 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_13 A2 = rs2_13 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_14 A2 = rs2_14 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_15 A2 = rs2_15 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_16 A2 = rs2_16 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_17 A2 = rs2_17 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_18 A2 = rs2_18 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_19 A2 = rs2_19 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_20 A2 = rs2_20 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_21 A2 = rs2_21 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_22 A2 = rs2_22 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_23 A2 = rs2_23 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_24 A2 = rs2_24 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_25 A2 = rs2_25 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_26 A2 = rs2_26 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_27 A2 = rs2_27 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_28 A2 = rs2_28 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_29 A2 = rs2_29 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_30 A2 = rs2_30 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_31 A2 = rs2_31 Computer

execute if score mulhsu_sign Computer matches 1 run function computer:alu/a2_32bits

# Step 2: Copy negated rs2 (from A2 result) to input_r add32
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_r_0 add32 = input_0 A2
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_r_1 add32 = input_1 A2
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_r_2 add32 = input_2 A2
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_r_3 add32 = input_3 A2
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_r_4 add32 = input_4 A2
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_r_5 add32 = input_5 A2
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_r_6 add32 = input_6 A2
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_r_7 add32 = input_7 A2
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_r_8 add32 = input_8 A2
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_r_9 add32 = input_9 A2
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_r_10 add32 = input_10 A2
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_r_11 add32 = input_11 A2
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_r_12 add32 = input_12 A2
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_r_13 add32 = input_13 A2
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_r_14 add32 = input_14 A2
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_r_15 add32 = input_15 A2
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_r_16 add32 = input_16 A2
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_r_17 add32 = input_17 A2
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_r_18 add32 = input_18 A2
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_r_19 add32 = input_19 A2
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_r_20 add32 = input_20 A2
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_r_21 add32 = input_21 A2
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_r_22 add32 = input_22 A2
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_r_23 add32 = input_23 A2
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_r_24 add32 = input_24 A2
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_r_25 add32 = input_25 A2
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_r_26 add32 = input_26 A2
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_r_27 add32 = input_27 A2
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_r_28 add32 = input_28 A2
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_r_29 add32 = input_29 A2
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_r_30 add32 = input_30 A2
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_r_31 add32 = input_31 A2

# Step 3: NOW load rd into input_l add32 (safe since A2 is done)
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_l_0 add32 = rd_0 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_l_1 add32 = rd_1 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_l_2 add32 = rd_2 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_l_3 add32 = rd_3 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_l_4 add32 = rd_4 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_l_5 add32 = rd_5 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_l_6 add32 = rd_6 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_l_7 add32 = rd_7 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_l_8 add32 = rd_8 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_l_9 add32 = rd_9 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_l_10 add32 = rd_10 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_l_11 add32 = rd_11 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_l_12 add32 = rd_12 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_l_13 add32 = rd_13 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_l_14 add32 = rd_14 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_l_15 add32 = rd_15 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_l_16 add32 = rd_16 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_l_17 add32 = rd_17 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_l_18 add32 = rd_18 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_l_19 add32 = rd_19 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_l_20 add32 = rd_20 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_l_21 add32 = rd_21 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_l_22 add32 = rd_22 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_l_23 add32 = rd_23 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_l_24 add32 = rd_24 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_l_25 add32 = rd_25 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_l_26 add32 = rd_26 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_l_27 add32 = rd_27 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_l_28 add32 = rd_28 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_l_29 add32 = rd_29 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_l_30 add32 = rd_30 Computer
execute if score mulhsu_sign Computer matches 1 run scoreboard players operation input_l_31 add32 = rd_31 Computer

# Step 4: Add (rd + (-rs2)) = rd - rs2
execute if score mulhsu_sign Computer matches 1 run function computer:alu/add_32bits

# Copy result back to rd
execute if score mulhsu_sign Computer matches 1 run function computer:misc/copy_input_l_to_rd_add32

function computer:misc/update_rd_7_11
