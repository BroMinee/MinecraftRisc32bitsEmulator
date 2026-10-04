tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running fcvt.s.wu","color":"gold"}]

scoreboard players add found_dispatcher Computer 1

# fcvt.s.wu rd, rs1: convert unsigned int32 (in integer reg) to float (in float reg)
function computer:misc/load_rs1_15_19

# Always positive
scoreboard players set fcvt_sign Computer 0

# Special case: rs1 == 0 -> rd = +0.0
scoreboard players set fcvt_zero Computer 1
execute unless score rs1_0 Computer matches 0 run scoreboard players set fcvt_zero Computer 0
execute unless score rs1_1 Computer matches 0 run scoreboard players set fcvt_zero Computer 0
execute unless score rs1_2 Computer matches 0 run scoreboard players set fcvt_zero Computer 0
execute unless score rs1_3 Computer matches 0 run scoreboard players set fcvt_zero Computer 0
execute unless score rs1_4 Computer matches 0 run scoreboard players set fcvt_zero Computer 0
execute unless score rs1_5 Computer matches 0 run scoreboard players set fcvt_zero Computer 0
execute unless score rs1_6 Computer matches 0 run scoreboard players set fcvt_zero Computer 0
execute unless score rs1_7 Computer matches 0 run scoreboard players set fcvt_zero Computer 0
execute unless score rs1_8 Computer matches 0 run scoreboard players set fcvt_zero Computer 0
execute unless score rs1_9 Computer matches 0 run scoreboard players set fcvt_zero Computer 0
execute unless score rs1_10 Computer matches 0 run scoreboard players set fcvt_zero Computer 0
execute unless score rs1_11 Computer matches 0 run scoreboard players set fcvt_zero Computer 0
execute unless score rs1_12 Computer matches 0 run scoreboard players set fcvt_zero Computer 0
execute unless score rs1_13 Computer matches 0 run scoreboard players set fcvt_zero Computer 0
execute unless score rs1_14 Computer matches 0 run scoreboard players set fcvt_zero Computer 0
execute unless score rs1_15 Computer matches 0 run scoreboard players set fcvt_zero Computer 0
execute unless score rs1_16 Computer matches 0 run scoreboard players set fcvt_zero Computer 0
execute unless score rs1_17 Computer matches 0 run scoreboard players set fcvt_zero Computer 0
execute unless score rs1_18 Computer matches 0 run scoreboard players set fcvt_zero Computer 0
execute unless score rs1_19 Computer matches 0 run scoreboard players set fcvt_zero Computer 0
execute unless score rs1_20 Computer matches 0 run scoreboard players set fcvt_zero Computer 0
execute unless score rs1_21 Computer matches 0 run scoreboard players set fcvt_zero Computer 0
execute unless score rs1_22 Computer matches 0 run scoreboard players set fcvt_zero Computer 0
execute unless score rs1_23 Computer matches 0 run scoreboard players set fcvt_zero Computer 0
execute unless score rs1_24 Computer matches 0 run scoreboard players set fcvt_zero Computer 0
execute unless score rs1_25 Computer matches 0 run scoreboard players set fcvt_zero Computer 0
execute unless score rs1_26 Computer matches 0 run scoreboard players set fcvt_zero Computer 0
execute unless score rs1_27 Computer matches 0 run scoreboard players set fcvt_zero Computer 0
execute unless score rs1_28 Computer matches 0 run scoreboard players set fcvt_zero Computer 0
execute unless score rs1_29 Computer matches 0 run scoreboard players set fcvt_zero Computer 0
execute unless score rs1_30 Computer matches 0 run scoreboard players set fcvt_zero Computer 0
execute unless score rs1_31 Computer matches 0 run scoreboard players set fcvt_zero Computer 0

execute if score fcvt_zero Computer matches 1 run function computer:misc/reset_rd
execute if score fcvt_zero Computer matches 1 run function computer:misc/update_rd_7_11_f

# Unsigned: leading bit can be 31, need to also check bit 31
# Reuse the same convert function (fcvt_sign is already 0)
execute if score fcvt_zero Computer matches 0 run function computer:alu/fcvt_s_w_convert
