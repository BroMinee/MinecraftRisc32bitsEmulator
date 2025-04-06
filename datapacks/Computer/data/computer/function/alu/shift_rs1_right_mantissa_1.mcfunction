# input rd_[0-31] Computer
# output rd_[0-31] Computer
scoreboard players operation rs1_0 Computer = rs1_1 Computer
scoreboard players operation rs1_1 Computer = rs1_2 Computer
scoreboard players operation rs1_2 Computer = rs1_3 Computer
scoreboard players operation rs1_3 Computer = rs1_4 Computer
scoreboard players operation rs1_4 Computer = rs1_5 Computer
scoreboard players operation rs1_5 Computer = rs1_6 Computer
scoreboard players operation rs1_6 Computer = rs1_7 Computer
scoreboard players operation rs1_7 Computer = rs1_8 Computer
scoreboard players operation rs1_8 Computer = rs1_9 Computer
scoreboard players operation rs1_9 Computer = rs1_10 Computer
scoreboard players operation rs1_10 Computer = rs1_11 Computer
scoreboard players operation rs1_11 Computer = rs1_12 Computer
scoreboard players operation rs1_12 Computer = rs1_13 Computer
scoreboard players operation rs1_13 Computer = rs1_14 Computer
scoreboard players operation rs1_14 Computer = rs1_15 Computer
scoreboard players operation rs1_15 Computer = rs1_16 Computer
scoreboard players operation rs1_16 Computer = rs1_17 Computer
scoreboard players operation rs1_17 Computer = rs1_18 Computer
scoreboard players operation rs1_18 Computer = rs1_19 Computer
scoreboard players operation rs1_19 Computer = rs1_20 Computer
scoreboard players operation rs1_20 Computer = rs1_21 Computer
scoreboard players operation rs1_21 Computer = rs1_22 Computer
execute if score count Computer matches 0 run scoreboard players set rs1_22 Computer 1
execute if score count Computer matches 1.. run scoreboard players set rs1_22 Computer 0
