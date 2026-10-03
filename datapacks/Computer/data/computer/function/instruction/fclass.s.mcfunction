tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running fclass.s","color":"gold"}]
# tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"Error: Not Yet Implemented fclass.s","bold":true,"color":"red"}]
# scoreboard players set error stats 1
scoreboard players add found_dispatcher Computer 1

function computer:misc/load_rs1_15_19_f

# fclass.s rd, rs1 - classify float in rs1, write bitmask to integer rd
# Sign = rs1_31
# Exponent = rs1_30..rs1_23 (8 bits)
# Mantissa = rs1_22..rs1_0 (23 bits)

# Check if exponent is all zeros
scoreboard players set fclass_exp_zero Computer 1
execute unless score rs1_30 Computer matches 0 run scoreboard players set fclass_exp_zero Computer 0
execute if score fclass_exp_zero Computer matches 1 run execute unless score rs1_29 Computer matches 0 run scoreboard players set fclass_exp_zero Computer 0
execute if score fclass_exp_zero Computer matches 1 run execute unless score rs1_28 Computer matches 0 run scoreboard players set fclass_exp_zero Computer 0
execute if score fclass_exp_zero Computer matches 1 run execute unless score rs1_27 Computer matches 0 run scoreboard players set fclass_exp_zero Computer 0
execute if score fclass_exp_zero Computer matches 1 run execute unless score rs1_26 Computer matches 0 run scoreboard players set fclass_exp_zero Computer 0
execute if score fclass_exp_zero Computer matches 1 run execute unless score rs1_25 Computer matches 0 run scoreboard players set fclass_exp_zero Computer 0
execute if score fclass_exp_zero Computer matches 1 run execute unless score rs1_24 Computer matches 0 run scoreboard players set fclass_exp_zero Computer 0
execute if score fclass_exp_zero Computer matches 1 run execute unless score rs1_23 Computer matches 0 run scoreboard players set fclass_exp_zero Computer 0

# Check if exponent is all ones (0xFF)
scoreboard players set fclass_exp_ff Computer 1
execute unless score rs1_30 Computer matches 1 run scoreboard players set fclass_exp_ff Computer 0
execute if score fclass_exp_ff Computer matches 1 run execute unless score rs1_29 Computer matches 1 run scoreboard players set fclass_exp_ff Computer 0
execute if score fclass_exp_ff Computer matches 1 run execute unless score rs1_28 Computer matches 1 run scoreboard players set fclass_exp_ff Computer 0
execute if score fclass_exp_ff Computer matches 1 run execute unless score rs1_27 Computer matches 1 run scoreboard players set fclass_exp_ff Computer 0
execute if score fclass_exp_ff Computer matches 1 run execute unless score rs1_26 Computer matches 1 run scoreboard players set fclass_exp_ff Computer 0
execute if score fclass_exp_ff Computer matches 1 run execute unless score rs1_25 Computer matches 1 run scoreboard players set fclass_exp_ff Computer 0
execute if score fclass_exp_ff Computer matches 1 run execute unless score rs1_24 Computer matches 1 run scoreboard players set fclass_exp_ff Computer 0
execute if score fclass_exp_ff Computer matches 1 run execute unless score rs1_23 Computer matches 1 run scoreboard players set fclass_exp_ff Computer 0

# Check if mantissa is all zeros
scoreboard players set fclass_man_zero Computer 1
execute unless score rs1_22 Computer matches 0 run scoreboard players set fclass_man_zero Computer 0
execute if score fclass_man_zero Computer matches 1 run execute unless score rs1_21 Computer matches 0 run scoreboard players set fclass_man_zero Computer 0
execute if score fclass_man_zero Computer matches 1 run execute unless score rs1_20 Computer matches 0 run scoreboard players set fclass_man_zero Computer 0
execute if score fclass_man_zero Computer matches 1 run execute unless score rs1_19 Computer matches 0 run scoreboard players set fclass_man_zero Computer 0
execute if score fclass_man_zero Computer matches 1 run execute unless score rs1_18 Computer matches 0 run scoreboard players set fclass_man_zero Computer 0
execute if score fclass_man_zero Computer matches 1 run execute unless score rs1_17 Computer matches 0 run scoreboard players set fclass_man_zero Computer 0
execute if score fclass_man_zero Computer matches 1 run execute unless score rs1_16 Computer matches 0 run scoreboard players set fclass_man_zero Computer 0
execute if score fclass_man_zero Computer matches 1 run execute unless score rs1_15 Computer matches 0 run scoreboard players set fclass_man_zero Computer 0
execute if score fclass_man_zero Computer matches 1 run execute unless score rs1_14 Computer matches 0 run scoreboard players set fclass_man_zero Computer 0
execute if score fclass_man_zero Computer matches 1 run execute unless score rs1_13 Computer matches 0 run scoreboard players set fclass_man_zero Computer 0
execute if score fclass_man_zero Computer matches 1 run execute unless score rs1_12 Computer matches 0 run scoreboard players set fclass_man_zero Computer 0
execute if score fclass_man_zero Computer matches 1 run execute unless score rs1_11 Computer matches 0 run scoreboard players set fclass_man_zero Computer 0
execute if score fclass_man_zero Computer matches 1 run execute unless score rs1_10 Computer matches 0 run scoreboard players set fclass_man_zero Computer 0
execute if score fclass_man_zero Computer matches 1 run execute unless score rs1_9 Computer matches 0 run scoreboard players set fclass_man_zero Computer 0
execute if score fclass_man_zero Computer matches 1 run execute unless score rs1_8 Computer matches 0 run scoreboard players set fclass_man_zero Computer 0
execute if score fclass_man_zero Computer matches 1 run execute unless score rs1_7 Computer matches 0 run scoreboard players set fclass_man_zero Computer 0
execute if score fclass_man_zero Computer matches 1 run execute unless score rs1_6 Computer matches 0 run scoreboard players set fclass_man_zero Computer 0
execute if score fclass_man_zero Computer matches 1 run execute unless score rs1_5 Computer matches 0 run scoreboard players set fclass_man_zero Computer 0
execute if score fclass_man_zero Computer matches 1 run execute unless score rs1_4 Computer matches 0 run scoreboard players set fclass_man_zero Computer 0
execute if score fclass_man_zero Computer matches 1 run execute unless score rs1_3 Computer matches 0 run scoreboard players set fclass_man_zero Computer 0
execute if score fclass_man_zero Computer matches 1 run execute unless score rs1_2 Computer matches 0 run scoreboard players set fclass_man_zero Computer 0
execute if score fclass_man_zero Computer matches 1 run execute unless score rs1_1 Computer matches 0 run scoreboard players set fclass_man_zero Computer 0
execute if score fclass_man_zero Computer matches 1 run execute unless score rs1_0 Computer matches 0 run scoreboard players set fclass_man_zero Computer 0

# Initialize all rd bits to 0
function computer:misc/reset_rd

# bit 0: -inf (sign=1, exp=FF, mantissa=0)
execute if score rs1_31 Computer matches 1 run execute if score fclass_exp_ff Computer matches 1 run execute if score fclass_man_zero Computer matches 1 run scoreboard players set rd_0 Computer 1
# bit 1: negative normal (sign=1, 0 < exp < FF)
execute if score rs1_31 Computer matches 1 run execute if score fclass_exp_zero Computer matches 0 run execute if score fclass_exp_ff Computer matches 0 run scoreboard players set rd_1 Computer 1
# bit 2: negative subnormal (sign=1, exp=0, mantissa!=0)
execute if score rs1_31 Computer matches 1 run execute if score fclass_exp_zero Computer matches 1 run execute if score fclass_man_zero Computer matches 0 run scoreboard players set rd_2 Computer 1
# bit 3: -0 (sign=1, exp=0, mantissa=0)
execute if score rs1_31 Computer matches 1 run execute if score fclass_exp_zero Computer matches 1 run execute if score fclass_man_zero Computer matches 1 run scoreboard players set rd_3 Computer 1
# bit 4: +0 (sign=0, exp=0, mantissa=0)
execute if score rs1_31 Computer matches 0 run execute if score fclass_exp_zero Computer matches 1 run execute if score fclass_man_zero Computer matches 1 run scoreboard players set rd_4 Computer 1
# bit 5: positive subnormal (sign=0, exp=0, mantissa!=0)
execute if score rs1_31 Computer matches 0 run execute if score fclass_exp_zero Computer matches 1 run execute if score fclass_man_zero Computer matches 0 run scoreboard players set rd_5 Computer 1
# bit 6: positive normal (sign=0, 0 < exp < FF)
execute if score rs1_31 Computer matches 0 run execute if score fclass_exp_zero Computer matches 0 run execute if score fclass_exp_ff Computer matches 0 run scoreboard players set rd_6 Computer 1
# bit 7: +inf (sign=0, exp=FF, mantissa=0)
execute if score rs1_31 Computer matches 0 run execute if score fclass_exp_ff Computer matches 1 run execute if score fclass_man_zero Computer matches 1 run scoreboard players set rd_7 Computer 1
# bit 8: signaling NaN (exp=FF, mantissa!=0, bit22=0)
execute if score fclass_exp_ff Computer matches 1 run execute if score fclass_man_zero Computer matches 0 run execute if score rs1_22 Computer matches 0 run scoreboard players set rd_8 Computer 1
# bit 9: quiet NaN (exp=FF, mantissa!=0, bit22=1)
execute if score fclass_exp_ff Computer matches 1 run execute if score fclass_man_zero Computer matches 0 run execute if score rs1_22 Computer matches 1 run scoreboard players set rd_9 Computer 1

function computer:misc/update_rd_7_11
