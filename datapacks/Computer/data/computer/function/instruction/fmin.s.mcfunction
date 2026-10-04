tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running fmin.s","color":"gold"}]

scoreboard players add found_dispatcher Computer 1

function computer:misc/load_rs1_15_19_f
function computer:misc/load_rs2_20_24_f

# fmin.s rd, rs1, rs2 - set rd = min(rs1, rs2)
# Special case: when both are zero (+0/-0), return rs1
function computer:alu/check_both_floats_zero

# compare=1 if rs1 < rs2, 0 otherwise (skip if both zero)
scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 0 run function computer:alu/compare_lower_strict_float_rs1_rs2

# compare=1: rs1 < rs2 -> rd = rs1
# compare=0: rs1 >= rs2 or both zero -> rd = rs1 (both zero) or rd = rs2
execute if score compare Computer matches 1 run function computer:misc/copy_rs1_to_rd
execute if score compare Computer matches 0 run execute if score fmin_both_zero Computer matches 1 run function computer:misc/copy_rs1_to_rd
execute if score compare Computer matches 0 run execute if score fmin_both_zero Computer matches 0 run function computer:misc/copy_rs2_to_rd

function computer:misc/update_rd_7_11_f
