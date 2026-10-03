tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running fle.s","color":"gold"}]

scoreboard players add found_dispatcher Computer 1

function computer:misc/load_rs1_15_19_f
function computer:misc/load_rs2_20_24_f

# fle.s rd, rs1, rs2 - set integer rd = (rs1 <= rs2) ? 1 : 0
# rs1 <= rs2 iff (rs1 < rs2) OR (rs1 == rs2)
# Special case: +0.0 and -0.0 are equal (IEEE 754)

# Check if both are zero (+0 or -0): bits 30..0 all zero for both
scoreboard players set fmin_both_zero Computer 0
execute if score rs1_30 Computer matches 0 run execute if score rs1_29 Computer matches 0 run execute if score rs1_28 Computer matches 0 run execute if score rs1_27 Computer matches 0 run execute if score rs1_26 Computer matches 0 run execute if score rs1_25 Computer matches 0 run execute if score rs1_24 Computer matches 0 run execute if score rs1_23 Computer matches 0 run execute if score rs1_22 Computer matches 0 run execute if score rs1_21 Computer matches 0 run execute if score rs1_20 Computer matches 0 run execute if score rs1_19 Computer matches 0 run execute if score rs1_18 Computer matches 0 run execute if score rs1_17 Computer matches 0 run execute if score rs1_16 Computer matches 0 run execute if score rs1_15 Computer matches 0 run execute if score rs1_14 Computer matches 0 run execute if score rs1_13 Computer matches 0 run execute if score rs1_12 Computer matches 0 run execute if score rs1_11 Computer matches 0 run execute if score rs1_10 Computer matches 0 run execute if score rs1_9 Computer matches 0 run execute if score rs1_8 Computer matches 0 run execute if score rs1_7 Computer matches 0 run execute if score rs1_6 Computer matches 0 run execute if score rs1_5 Computer matches 0 run execute if score rs1_4 Computer matches 0 run execute if score rs1_3 Computer matches 0 run execute if score rs1_2 Computer matches 0 run execute if score rs1_1 Computer matches 0 run execute if score rs1_0 Computer matches 0 run execute if score rs2_30 Computer matches 0 run execute if score rs2_29 Computer matches 0 run execute if score rs2_28 Computer matches 0 run execute if score rs2_27 Computer matches 0 run execute if score rs2_26 Computer matches 0 run execute if score rs2_25 Computer matches 0 run execute if score rs2_24 Computer matches 0 run execute if score rs2_23 Computer matches 0 run execute if score rs2_22 Computer matches 0 run execute if score rs2_21 Computer matches 0 run execute if score rs2_20 Computer matches 0 run execute if score rs2_19 Computer matches 0 run execute if score rs2_18 Computer matches 0 run execute if score rs2_17 Computer matches 0 run execute if score rs2_16 Computer matches 0 run execute if score rs2_15 Computer matches 0 run execute if score rs2_14 Computer matches 0 run execute if score rs2_13 Computer matches 0 run execute if score rs2_12 Computer matches 0 run execute if score rs2_11 Computer matches 0 run execute if score rs2_10 Computer matches 0 run execute if score rs2_9 Computer matches 0 run execute if score rs2_8 Computer matches 0 run execute if score rs2_7 Computer matches 0 run execute if score rs2_6 Computer matches 0 run execute if score rs2_5 Computer matches 0 run execute if score rs2_4 Computer matches 0 run execute if score rs2_3 Computer matches 0 run execute if score rs2_2 Computer matches 0 run execute if score rs2_1 Computer matches 0 run execute if score rs2_0 Computer matches 0 run scoreboard players set fmin_both_zero Computer 1

# If both zero: they are equal -> result = 1
scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 1 run scoreboard players set compare Computer 1

# Non-zero case: first check rs1 < rs2
execute if score fmin_both_zero Computer matches 0 run function computer:alu/compare_lower_strict_float_rs1_rs2
# compare is now 1 if rs1 < rs2, 0 if rs1 >= rs2

# If not strictly less (compare=0), check if equal (all 32 bits match)
# Use feq_equal as a temp: 1 = equal, 0 = not equal
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run scoreboard players set feq_equal Computer 1
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run execute unless score rs1_31 Computer = rs2_31 Computer run scoreboard players set feq_equal Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run execute if score feq_equal Computer matches 1 run execute unless score rs1_30 Computer = rs2_30 Computer run scoreboard players set feq_equal Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run execute if score feq_equal Computer matches 1 run execute unless score rs1_29 Computer = rs2_29 Computer run scoreboard players set feq_equal Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run execute if score feq_equal Computer matches 1 run execute unless score rs1_28 Computer = rs2_28 Computer run scoreboard players set feq_equal Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run execute if score feq_equal Computer matches 1 run execute unless score rs1_27 Computer = rs2_27 Computer run scoreboard players set feq_equal Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run execute if score feq_equal Computer matches 1 run execute unless score rs1_26 Computer = rs2_26 Computer run scoreboard players set feq_equal Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run execute if score feq_equal Computer matches 1 run execute unless score rs1_25 Computer = rs2_25 Computer run scoreboard players set feq_equal Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run execute if score feq_equal Computer matches 1 run execute unless score rs1_24 Computer = rs2_24 Computer run scoreboard players set feq_equal Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run execute if score feq_equal Computer matches 1 run execute unless score rs1_23 Computer = rs2_23 Computer run scoreboard players set feq_equal Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run execute if score feq_equal Computer matches 1 run execute unless score rs1_22 Computer = rs2_22 Computer run scoreboard players set feq_equal Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run execute if score feq_equal Computer matches 1 run execute unless score rs1_21 Computer = rs2_21 Computer run scoreboard players set feq_equal Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run execute if score feq_equal Computer matches 1 run execute unless score rs1_20 Computer = rs2_20 Computer run scoreboard players set feq_equal Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run execute if score feq_equal Computer matches 1 run execute unless score rs1_19 Computer = rs2_19 Computer run scoreboard players set feq_equal Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run execute if score feq_equal Computer matches 1 run execute unless score rs1_18 Computer = rs2_18 Computer run scoreboard players set feq_equal Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run execute if score feq_equal Computer matches 1 run execute unless score rs1_17 Computer = rs2_17 Computer run scoreboard players set feq_equal Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run execute if score feq_equal Computer matches 1 run execute unless score rs1_16 Computer = rs2_16 Computer run scoreboard players set feq_equal Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run execute if score feq_equal Computer matches 1 run execute unless score rs1_15 Computer = rs2_15 Computer run scoreboard players set feq_equal Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run execute if score feq_equal Computer matches 1 run execute unless score rs1_14 Computer = rs2_14 Computer run scoreboard players set feq_equal Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run execute if score feq_equal Computer matches 1 run execute unless score rs1_13 Computer = rs2_13 Computer run scoreboard players set feq_equal Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run execute if score feq_equal Computer matches 1 run execute unless score rs1_12 Computer = rs2_12 Computer run scoreboard players set feq_equal Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run execute if score feq_equal Computer matches 1 run execute unless score rs1_11 Computer = rs2_11 Computer run scoreboard players set feq_equal Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run execute if score feq_equal Computer matches 1 run execute unless score rs1_10 Computer = rs2_10 Computer run scoreboard players set feq_equal Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run execute if score feq_equal Computer matches 1 run execute unless score rs1_9 Computer = rs2_9 Computer run scoreboard players set feq_equal Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run execute if score feq_equal Computer matches 1 run execute unless score rs1_8 Computer = rs2_8 Computer run scoreboard players set feq_equal Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run execute if score feq_equal Computer matches 1 run execute unless score rs1_7 Computer = rs2_7 Computer run scoreboard players set feq_equal Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run execute if score feq_equal Computer matches 1 run execute unless score rs1_6 Computer = rs2_6 Computer run scoreboard players set feq_equal Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run execute if score feq_equal Computer matches 1 run execute unless score rs1_5 Computer = rs2_5 Computer run scoreboard players set feq_equal Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run execute if score feq_equal Computer matches 1 run execute unless score rs1_4 Computer = rs2_4 Computer run scoreboard players set feq_equal Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run execute if score feq_equal Computer matches 1 run execute unless score rs1_3 Computer = rs2_3 Computer run scoreboard players set feq_equal Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run execute if score feq_equal Computer matches 1 run execute unless score rs1_2 Computer = rs2_2 Computer run scoreboard players set feq_equal Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run execute if score feq_equal Computer matches 1 run execute unless score rs1_1 Computer = rs2_1 Computer run scoreboard players set feq_equal Computer 0
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run execute if score feq_equal Computer matches 1 run execute unless score rs1_0 Computer = rs2_0 Computer run scoreboard players set feq_equal Computer 0
# If equal, set compare to 1
execute if score fmin_both_zero Computer matches 0 run execute if score compare Computer matches 0 run execute if score feq_equal Computer matches 1 run scoreboard players set compare Computer 1

# Set rd to compare result (0 or 1), all other bits = 0
scoreboard players operation rd_0 Computer = compare Computer
scoreboard players set rd_1 Computer 0
scoreboard players set rd_2 Computer 0
scoreboard players set rd_3 Computer 0
scoreboard players set rd_4 Computer 0
scoreboard players set rd_5 Computer 0
scoreboard players set rd_6 Computer 0
scoreboard players set rd_7 Computer 0
scoreboard players set rd_8 Computer 0
scoreboard players set rd_9 Computer 0
scoreboard players set rd_10 Computer 0
scoreboard players set rd_11 Computer 0
scoreboard players set rd_12 Computer 0
scoreboard players set rd_13 Computer 0
scoreboard players set rd_14 Computer 0
scoreboard players set rd_15 Computer 0
scoreboard players set rd_16 Computer 0
scoreboard players set rd_17 Computer 0
scoreboard players set rd_18 Computer 0
scoreboard players set rd_19 Computer 0
scoreboard players set rd_20 Computer 0
scoreboard players set rd_21 Computer 0
scoreboard players set rd_22 Computer 0
scoreboard players set rd_23 Computer 0
scoreboard players set rd_24 Computer 0
scoreboard players set rd_25 Computer 0
scoreboard players set rd_26 Computer 0
scoreboard players set rd_27 Computer 0
scoreboard players set rd_28 Computer 0
scoreboard players set rd_29 Computer 0
scoreboard players set rd_30 Computer 0
scoreboard players set rd_31 Computer 0

function computer:misc/update_rd_7_11
