# input rs2[0-22] Computer
# output rs2[0-22] Computer
scoreboard players operation rs2_0 Computer = rs2_1 Computer
scoreboard players operation rs2_1 Computer = rs2_2 Computer
scoreboard players operation rs2_2 Computer = rs2_3 Computer
scoreboard players operation rs2_3 Computer = rs2_4 Computer
scoreboard players operation rs2_4 Computer = rs2_5 Computer
scoreboard players operation rs2_5 Computer = rs2_6 Computer
scoreboard players operation rs2_6 Computer = rs2_7 Computer
scoreboard players operation rs2_7 Computer = rs2_8 Computer
scoreboard players operation rs2_8 Computer = rs2_9 Computer
scoreboard players operation rs2_9 Computer = rs2_10 Computer
scoreboard players operation rs2_10 Computer = rs2_11 Computer
scoreboard players operation rs2_11 Computer = rs2_12 Computer
scoreboard players operation rs2_12 Computer = rs2_13 Computer
scoreboard players operation rs2_13 Computer = rs2_14 Computer
scoreboard players operation rs2_14 Computer = rs2_15 Computer
scoreboard players operation rs2_15 Computer = rs2_16 Computer
scoreboard players operation rs2_16 Computer = rs2_17 Computer
scoreboard players operation rs2_17 Computer = rs2_18 Computer
scoreboard players operation rs2_18 Computer = rs2_19 Computer
scoreboard players operation rs2_19 Computer = rs2_20 Computer
scoreboard players operation rs2_20 Computer = rs2_21 Computer
scoreboard players operation rs2_21 Computer = rs2_22 Computer
execute if score count Computer matches 0 run scoreboard players set rs2_22 Computer 1
execute if score count Computer matches 1.. run scoreboard players set rs2_22 Computer 0
