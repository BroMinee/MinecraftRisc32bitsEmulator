tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running mulh","color":"gold"}]
# tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"Error: Not Yet Implemented mulh","bold":true,"color":"red"}]
# scoreboard players set error stats 1

scoreboard players add found_dispatcher Computer 1

# load
function computer:misc/load_rd_7_11
function computer:misc/load_rs1_15_19
function computer:misc/load_rs2_20_24

# Save sign bits
scoreboard players operation mulh_sign_rs1 Computer = rs1_31 Computer
scoreboard players operation mulh_sign_rs2 Computer = rs2_31 Computer

# Save rs1 bits for later subtraction (mulhu clobbers rd which holds shifted rs1)
scoreboard players operation mulh_rs1_0 Computer = rs1_0 Computer
scoreboard players operation mulh_rs1_1 Computer = rs1_1 Computer
scoreboard players operation mulh_rs1_2 Computer = rs1_2 Computer
scoreboard players operation mulh_rs1_3 Computer = rs1_3 Computer
scoreboard players operation mulh_rs1_4 Computer = rs1_4 Computer
scoreboard players operation mulh_rs1_5 Computer = rs1_5 Computer
scoreboard players operation mulh_rs1_6 Computer = rs1_6 Computer
scoreboard players operation mulh_rs1_7 Computer = rs1_7 Computer
scoreboard players operation mulh_rs1_8 Computer = rs1_8 Computer
scoreboard players operation mulh_rs1_9 Computer = rs1_9 Computer
scoreboard players operation mulh_rs1_10 Computer = rs1_10 Computer
scoreboard players operation mulh_rs1_11 Computer = rs1_11 Computer
scoreboard players operation mulh_rs1_12 Computer = rs1_12 Computer
scoreboard players operation mulh_rs1_13 Computer = rs1_13 Computer
scoreboard players operation mulh_rs1_14 Computer = rs1_14 Computer
scoreboard players operation mulh_rs1_15 Computer = rs1_15 Computer
scoreboard players operation mulh_rs1_16 Computer = rs1_16 Computer
scoreboard players operation mulh_rs1_17 Computer = rs1_17 Computer
scoreboard players operation mulh_rs1_18 Computer = rs1_18 Computer
scoreboard players operation mulh_rs1_19 Computer = rs1_19 Computer
scoreboard players operation mulh_rs1_20 Computer = rs1_20 Computer
scoreboard players operation mulh_rs1_21 Computer = rs1_21 Computer
scoreboard players operation mulh_rs1_22 Computer = rs1_22 Computer
scoreboard players operation mulh_rs1_23 Computer = rs1_23 Computer
scoreboard players operation mulh_rs1_24 Computer = rs1_24 Computer
scoreboard players operation mulh_rs1_25 Computer = rs1_25 Computer
scoreboard players operation mulh_rs1_26 Computer = rs1_26 Computer
scoreboard players operation mulh_rs1_27 Computer = rs1_27 Computer
scoreboard players operation mulh_rs1_28 Computer = rs1_28 Computer
scoreboard players operation mulh_rs1_29 Computer = rs1_29 Computer
scoreboard players operation mulh_rs1_30 Computer = rs1_30 Computer
scoreboard players operation mulh_rs1_31 Computer = rs1_31 Computer

# Store rs2 bits into array
function computer:alu/store_rs2_bits_to_mul_array

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

# Copy mulhu result to rd
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

# Sign correction 1: if rs1 was negative, subtract rs2 from rd
execute if score mulh_sign_rs1 Computer matches 1 run scoreboard players operation input_0 A2 = rs2_0 Computer
execute if score mulh_sign_rs1 Computer matches 1 run scoreboard players operation input_1 A2 = rs2_1 Computer
execute if score mulh_sign_rs1 Computer matches 1 run scoreboard players operation input_2 A2 = rs2_2 Computer
execute if score mulh_sign_rs1 Computer matches 1 run scoreboard players operation input_3 A2 = rs2_3 Computer
execute if score mulh_sign_rs1 Computer matches 1 run scoreboard players operation input_4 A2 = rs2_4 Computer
execute if score mulh_sign_rs1 Computer matches 1 run scoreboard players operation input_5 A2 = rs2_5 Computer
execute if score mulh_sign_rs1 Computer matches 1 run scoreboard players operation input_6 A2 = rs2_6 Computer
execute if score mulh_sign_rs1 Computer matches 1 run scoreboard players operation input_7 A2 = rs2_7 Computer
execute if score mulh_sign_rs1 Computer matches 1 run scoreboard players operation input_8 A2 = rs2_8 Computer
execute if score mulh_sign_rs1 Computer matches 1 run scoreboard players operation input_9 A2 = rs2_9 Computer
execute if score mulh_sign_rs1 Computer matches 1 run scoreboard players operation input_10 A2 = rs2_10 Computer
execute if score mulh_sign_rs1 Computer matches 1 run scoreboard players operation input_11 A2 = rs2_11 Computer
execute if score mulh_sign_rs1 Computer matches 1 run scoreboard players operation input_12 A2 = rs2_12 Computer
execute if score mulh_sign_rs1 Computer matches 1 run scoreboard players operation input_13 A2 = rs2_13 Computer
execute if score mulh_sign_rs1 Computer matches 1 run scoreboard players operation input_14 A2 = rs2_14 Computer
execute if score mulh_sign_rs1 Computer matches 1 run scoreboard players operation input_15 A2 = rs2_15 Computer
execute if score mulh_sign_rs1 Computer matches 1 run scoreboard players operation input_16 A2 = rs2_16 Computer
execute if score mulh_sign_rs1 Computer matches 1 run scoreboard players operation input_17 A2 = rs2_17 Computer
execute if score mulh_sign_rs1 Computer matches 1 run scoreboard players operation input_18 A2 = rs2_18 Computer
execute if score mulh_sign_rs1 Computer matches 1 run scoreboard players operation input_19 A2 = rs2_19 Computer
execute if score mulh_sign_rs1 Computer matches 1 run scoreboard players operation input_20 A2 = rs2_20 Computer
execute if score mulh_sign_rs1 Computer matches 1 run scoreboard players operation input_21 A2 = rs2_21 Computer
execute if score mulh_sign_rs1 Computer matches 1 run scoreboard players operation input_22 A2 = rs2_22 Computer
execute if score mulh_sign_rs1 Computer matches 1 run scoreboard players operation input_23 A2 = rs2_23 Computer
execute if score mulh_sign_rs1 Computer matches 1 run scoreboard players operation input_24 A2 = rs2_24 Computer
execute if score mulh_sign_rs1 Computer matches 1 run scoreboard players operation input_25 A2 = rs2_25 Computer
execute if score mulh_sign_rs1 Computer matches 1 run scoreboard players operation input_26 A2 = rs2_26 Computer
execute if score mulh_sign_rs1 Computer matches 1 run scoreboard players operation input_27 A2 = rs2_27 Computer
execute if score mulh_sign_rs1 Computer matches 1 run scoreboard players operation input_28 A2 = rs2_28 Computer
execute if score mulh_sign_rs1 Computer matches 1 run scoreboard players operation input_29 A2 = rs2_29 Computer
execute if score mulh_sign_rs1 Computer matches 1 run scoreboard players operation input_30 A2 = rs2_30 Computer
execute if score mulh_sign_rs1 Computer matches 1 run scoreboard players operation input_31 A2 = rs2_31 Computer
execute if score mulh_sign_rs1 Computer matches 1 run function computer:alu/subtract_a2_from_rd

# Sign correction 2: if rs2 was negative, subtract rs1 from rd
execute if score mulh_sign_rs2 Computer matches 1 run scoreboard players operation input_0 A2 = mulh_rs1_0 Computer
execute if score mulh_sign_rs2 Computer matches 1 run scoreboard players operation input_1 A2 = mulh_rs1_1 Computer
execute if score mulh_sign_rs2 Computer matches 1 run scoreboard players operation input_2 A2 = mulh_rs1_2 Computer
execute if score mulh_sign_rs2 Computer matches 1 run scoreboard players operation input_3 A2 = mulh_rs1_3 Computer
execute if score mulh_sign_rs2 Computer matches 1 run scoreboard players operation input_4 A2 = mulh_rs1_4 Computer
execute if score mulh_sign_rs2 Computer matches 1 run scoreboard players operation input_5 A2 = mulh_rs1_5 Computer
execute if score mulh_sign_rs2 Computer matches 1 run scoreboard players operation input_6 A2 = mulh_rs1_6 Computer
execute if score mulh_sign_rs2 Computer matches 1 run scoreboard players operation input_7 A2 = mulh_rs1_7 Computer
execute if score mulh_sign_rs2 Computer matches 1 run scoreboard players operation input_8 A2 = mulh_rs1_8 Computer
execute if score mulh_sign_rs2 Computer matches 1 run scoreboard players operation input_9 A2 = mulh_rs1_9 Computer
execute if score mulh_sign_rs2 Computer matches 1 run scoreboard players operation input_10 A2 = mulh_rs1_10 Computer
execute if score mulh_sign_rs2 Computer matches 1 run scoreboard players operation input_11 A2 = mulh_rs1_11 Computer
execute if score mulh_sign_rs2 Computer matches 1 run scoreboard players operation input_12 A2 = mulh_rs1_12 Computer
execute if score mulh_sign_rs2 Computer matches 1 run scoreboard players operation input_13 A2 = mulh_rs1_13 Computer
execute if score mulh_sign_rs2 Computer matches 1 run scoreboard players operation input_14 A2 = mulh_rs1_14 Computer
execute if score mulh_sign_rs2 Computer matches 1 run scoreboard players operation input_15 A2 = mulh_rs1_15 Computer
execute if score mulh_sign_rs2 Computer matches 1 run scoreboard players operation input_16 A2 = mulh_rs1_16 Computer
execute if score mulh_sign_rs2 Computer matches 1 run scoreboard players operation input_17 A2 = mulh_rs1_17 Computer
execute if score mulh_sign_rs2 Computer matches 1 run scoreboard players operation input_18 A2 = mulh_rs1_18 Computer
execute if score mulh_sign_rs2 Computer matches 1 run scoreboard players operation input_19 A2 = mulh_rs1_19 Computer
execute if score mulh_sign_rs2 Computer matches 1 run scoreboard players operation input_20 A2 = mulh_rs1_20 Computer
execute if score mulh_sign_rs2 Computer matches 1 run scoreboard players operation input_21 A2 = mulh_rs1_21 Computer
execute if score mulh_sign_rs2 Computer matches 1 run scoreboard players operation input_22 A2 = mulh_rs1_22 Computer
execute if score mulh_sign_rs2 Computer matches 1 run scoreboard players operation input_23 A2 = mulh_rs1_23 Computer
execute if score mulh_sign_rs2 Computer matches 1 run scoreboard players operation input_24 A2 = mulh_rs1_24 Computer
execute if score mulh_sign_rs2 Computer matches 1 run scoreboard players operation input_25 A2 = mulh_rs1_25 Computer
execute if score mulh_sign_rs2 Computer matches 1 run scoreboard players operation input_26 A2 = mulh_rs1_26 Computer
execute if score mulh_sign_rs2 Computer matches 1 run scoreboard players operation input_27 A2 = mulh_rs1_27 Computer
execute if score mulh_sign_rs2 Computer matches 1 run scoreboard players operation input_28 A2 = mulh_rs1_28 Computer
execute if score mulh_sign_rs2 Computer matches 1 run scoreboard players operation input_29 A2 = mulh_rs1_29 Computer
execute if score mulh_sign_rs2 Computer matches 1 run scoreboard players operation input_30 A2 = mulh_rs1_30 Computer
execute if score mulh_sign_rs2 Computer matches 1 run scoreboard players operation input_31 A2 = mulh_rs1_31 Computer
execute if score mulh_sign_rs2 Computer matches 1 run function computer:alu/subtract_a2_from_rd

function computer:misc/update_rd_7_11
