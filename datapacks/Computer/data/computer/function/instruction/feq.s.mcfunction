tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running feq.s","color":"gold"}]

scoreboard players add found_dispatcher Computer 1

function computer:misc/load_rs1_15_19_f
function computer:misc/load_rs2_20_24_f

# feq.s rd, rs1, rs2 - set integer rd = (rs1 == rs2) ? 1 : 0
# Special case: +0.0 == -0.0 (IEEE 754)

# Check if both are zero (+0 or -0): bits 30..0 all zero for both
function computer:alu/check_both_floats_zero

# If both zero: they are equal -> result = 1
# Otherwise: compare all 32 bits for exact equality
scoreboard players set compare Computer 0

# Both-zero case: equal
execute if score fmin_both_zero Computer matches 1 run scoreboard players set compare Computer 1

# Non-zero case: check all 32 bits match (including sign bit)
execute if score fmin_both_zero Computer matches 0 run scoreboard players set compare Computer 1
execute if score fmin_both_zero Computer matches 0 run execute unless score rs1_31 Computer = rs2_31 Computer run scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 1 run execute unless score rs1_30 Computer = rs2_30 Computer run scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 1 run execute unless score rs1_29 Computer = rs2_29 Computer run scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 1 run execute unless score rs1_28 Computer = rs2_28 Computer run scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 1 run execute unless score rs1_27 Computer = rs2_27 Computer run scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 1 run execute unless score rs1_26 Computer = rs2_26 Computer run scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 1 run execute unless score rs1_25 Computer = rs2_25 Computer run scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 1 run execute unless score rs1_24 Computer = rs2_24 Computer run scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 1 run execute unless score rs1_23 Computer = rs2_23 Computer run scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 1 run execute unless score rs1_22 Computer = rs2_22 Computer run scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 1 run execute unless score rs1_21 Computer = rs2_21 Computer run scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 1 run execute unless score rs1_20 Computer = rs2_20 Computer run scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 1 run execute unless score rs1_19 Computer = rs2_19 Computer run scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 1 run execute unless score rs1_18 Computer = rs2_18 Computer run scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 1 run execute unless score rs1_17 Computer = rs2_17 Computer run scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 1 run execute unless score rs1_16 Computer = rs2_16 Computer run scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 1 run execute unless score rs1_15 Computer = rs2_15 Computer run scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 1 run execute unless score rs1_14 Computer = rs2_14 Computer run scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 1 run execute unless score rs1_13 Computer = rs2_13 Computer run scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 1 run execute unless score rs1_12 Computer = rs2_12 Computer run scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 1 run execute unless score rs1_11 Computer = rs2_11 Computer run scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 1 run execute unless score rs1_10 Computer = rs2_10 Computer run scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 1 run execute unless score rs1_9 Computer = rs2_9 Computer run scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 1 run execute unless score rs1_8 Computer = rs2_8 Computer run scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 1 run execute unless score rs1_7 Computer = rs2_7 Computer run scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 1 run execute unless score rs1_6 Computer = rs2_6 Computer run scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 1 run execute unless score rs1_5 Computer = rs2_5 Computer run scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 1 run execute unless score rs1_4 Computer = rs2_4 Computer run scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 1 run execute unless score rs1_3 Computer = rs2_3 Computer run scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 1 run execute unless score rs1_2 Computer = rs2_2 Computer run scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 1 run execute unless score rs1_1 Computer = rs2_1 Computer run scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 1 run execute unless score rs1_0 Computer = rs2_0 Computer run scoreboard players set compare Computer 0

# Set rd to compare result (0 or 1), all other bits = 0
function computer:misc/reset_rd
scoreboard players operation rd_0 Computer = compare Computer

function computer:misc/update_rd_7_11
