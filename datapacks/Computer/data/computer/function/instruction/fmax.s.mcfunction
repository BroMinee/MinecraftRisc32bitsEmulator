tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running fmax.s","color":"gold"}]

scoreboard players add found_dispatcher Computer 1

function computer:misc/load_rs1_15_19_f
function computer:misc/load_rs2_20_24_f

# fmax.s rd, rs1, rs2 - set rd = max(rs1, rs2)
# Default: copy rs1 to rd (fmin_use_rs2=0 means use rs1)
scoreboard players set fmin_use_rs2 Computer 0

# Check if both values are zero (ignore sign bit)
scoreboard players set fmin_both_zero Computer 0
execute if score rs1_30 Computer matches 0 run execute if score rs1_29 Computer matches 0 run execute if score rs1_28 Computer matches 0 run execute if score rs1_27 Computer matches 0 run execute if score rs1_26 Computer matches 0 run execute if score rs1_25 Computer matches 0 run execute if score rs1_24 Computer matches 0 run execute if score rs1_23 Computer matches 0 run execute if score rs1_22 Computer matches 0 run execute if score rs1_21 Computer matches 0 run execute if score rs1_20 Computer matches 0 run execute if score rs1_19 Computer matches 0 run execute if score rs1_18 Computer matches 0 run execute if score rs1_17 Computer matches 0 run execute if score rs1_16 Computer matches 0 run execute if score rs1_15 Computer matches 0 run execute if score rs1_14 Computer matches 0 run execute if score rs1_13 Computer matches 0 run execute if score rs1_12 Computer matches 0 run execute if score rs1_11 Computer matches 0 run execute if score rs1_10 Computer matches 0 run execute if score rs1_9 Computer matches 0 run execute if score rs1_8 Computer matches 0 run execute if score rs1_7 Computer matches 0 run execute if score rs1_6 Computer matches 0 run execute if score rs1_5 Computer matches 0 run execute if score rs1_4 Computer matches 0 run execute if score rs1_3 Computer matches 0 run execute if score rs1_2 Computer matches 0 run execute if score rs1_1 Computer matches 0 run execute if score rs1_0 Computer matches 0 run execute if score rs2_30 Computer matches 0 run execute if score rs2_29 Computer matches 0 run execute if score rs2_28 Computer matches 0 run execute if score rs2_27 Computer matches 0 run execute if score rs2_26 Computer matches 0 run execute if score rs2_25 Computer matches 0 run execute if score rs2_24 Computer matches 0 run execute if score rs2_23 Computer matches 0 run execute if score rs2_22 Computer matches 0 run execute if score rs2_21 Computer matches 0 run execute if score rs2_20 Computer matches 0 run execute if score rs2_19 Computer matches 0 run execute if score rs2_18 Computer matches 0 run execute if score rs2_17 Computer matches 0 run execute if score rs2_16 Computer matches 0 run execute if score rs2_15 Computer matches 0 run execute if score rs2_14 Computer matches 0 run execute if score rs2_13 Computer matches 0 run execute if score rs2_12 Computer matches 0 run execute if score rs2_11 Computer matches 0 run execute if score rs2_10 Computer matches 0 run execute if score rs2_9 Computer matches 0 run execute if score rs2_8 Computer matches 0 run execute if score rs2_7 Computer matches 0 run execute if score rs2_6 Computer matches 0 run execute if score rs2_5 Computer matches 0 run execute if score rs2_4 Computer matches 0 run execute if score rs2_3 Computer matches 0 run execute if score rs2_2 Computer matches 0 run execute if score rs2_1 Computer matches 0 run execute if score rs2_0 Computer matches 0 run scoreboard players set fmin_both_zero Computer 1

# If both zero, just use rs1 (skip all comparisons)
execute if score fmin_both_zero Computer matches 0 run function computer:instruction/fmax.s_compare

# Copy result to rd
execute if score fmin_use_rs2 Computer matches 0 run function computer:misc/copy_rs1_to_rd
execute if score fmin_use_rs2 Computer matches 1 run function computer:misc/copy_rs2_to_rd

function computer:misc/update_rd_7_11_f
