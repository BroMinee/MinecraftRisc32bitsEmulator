# input rs1_[23-30] Computer AND rs2_[23-30] Computer
# output compare Computer (EXPONENT)
# compare = 1 if rs1 < rs2 else 0

scoreboard players set compare Computer -1

execute if score compare Computer matches -1 run execute if score rs1_30 Computer matches 1 run execute if score rs2_30 Computer matches 0 run scoreboard players set compare Computer 0
execute if score compare Computer matches -1 run execute if score rs1_30 Computer matches 0 run execute if score rs2_30 Computer matches 1 run scoreboard players set compare Computer 1

execute if score compare Computer matches -1 run execute if score rs1_29 Computer matches 1 run execute if score rs2_29 Computer matches 0 run scoreboard players set compare Computer 0
execute if score compare Computer matches -1 run execute if score rs1_29 Computer matches 0 run execute if score rs2_29 Computer matches 1 run scoreboard players set compare Computer 1

execute if score compare Computer matches -1 run execute if score rs1_28 Computer matches 1 run execute if score rs2_28 Computer matches 0 run scoreboard players set compare Computer 0
execute if score compare Computer matches -1 run execute if score rs1_28 Computer matches 0 run execute if score rs2_28 Computer matches 1 run scoreboard players set compare Computer 1

execute if score compare Computer matches -1 run execute if score rs1_27 Computer matches 1 run execute if score rs2_27 Computer matches 0 run scoreboard players set compare Computer 0
execute if score compare Computer matches -1 run execute if score rs1_27 Computer matches 0 run execute if score rs2_27 Computer matches 1 run scoreboard players set compare Computer 1

execute if score compare Computer matches -1 run execute if score rs1_26 Computer matches 1 run execute if score rs2_26 Computer matches 0 run scoreboard players set compare Computer 0
execute if score compare Computer matches -1 run execute if score rs1_26 Computer matches 0 run execute if score rs2_26 Computer matches 1 run scoreboard players set compare Computer 1

execute if score compare Computer matches -1 run execute if score rs1_25 Computer matches 1 run execute if score rs2_25 Computer matches 0 run scoreboard players set compare Computer 0
execute if score compare Computer matches -1 run execute if score rs1_25 Computer matches 0 run execute if score rs2_25 Computer matches 1 run scoreboard players set compare Computer 1

execute if score compare Computer matches -1 run execute if score rs1_24 Computer matches 1 run execute if score rs2_24 Computer matches 0 run scoreboard players set compare Computer 0
execute if score compare Computer matches -1 run execute if score rs1_24 Computer matches 0 run execute if score rs2_24 Computer matches 1 run scoreboard players set compare Computer 1

execute if score compare Computer matches -1 run execute if score rs1_23 Computer matches 1 run execute if score rs2_23 Computer matches 0 run scoreboard players set compare Computer 0
execute if score compare Computer matches -1 run execute if score rs1_23 Computer matches 0 run execute if score rs2_23 Computer matches 1 run scoreboard players set compare Computer 1

execute if score compare Computer matches -1 run scoreboard players set compare Computer 0