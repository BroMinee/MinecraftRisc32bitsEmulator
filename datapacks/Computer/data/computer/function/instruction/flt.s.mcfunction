tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running flt.s","color":"gold"}]

scoreboard players add found_dispatcher Computer 1

function computer:misc/load_rs1_15_19_f
function computer:misc/load_rs2_20_24_f

# flt.s rd, rs1, rs2 - set integer rd = (rs1 < rs2) ? 1 : 0
# Special case: +0.0 and -0.0 are equal, so neither is less than the other

# Check if both are zero (+0 or -0): bits 30..0 all zero for both
function computer:alu/check_both_floats_zero

# If both zero: result is 0 (not less than)
# Otherwise: use strict float comparison
scoreboard players set compare Computer 0
execute if score fmin_both_zero Computer matches 0 run function computer:alu/compare_lower_strict_float_rs1_rs2

# Set rd to compare result (0 or 1), all other bits = 0
function computer:misc/reset_rd
scoreboard players operation rd_0 Computer = compare Computer

function computer:misc/update_rd_7_11
