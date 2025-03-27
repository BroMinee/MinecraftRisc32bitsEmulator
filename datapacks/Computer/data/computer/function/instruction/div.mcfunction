tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running div","color":"gold"}]
# tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"Error: Not Yet Implemented div","bold":true,"color":"red"}]
scoreboard players add found_dispatcher Computer 1


function computer:misc/load_rs1_15_19
function computer:misc/load_rs2_20_24

scoreboard players set sign Computer 0


execute if score rs1_31 Computer matches 1 run function computer:alu/div_a2_rs1
execute if score rs2_31 Computer matches 1 run function computer:alu/div_a2_rs2

scoreboard players operation sign Computer %= 2 FixedValue

# divu
function computer:alu/divu


execute store result score rd_0 Computer run data get storage computer:memory div_res[31]
execute store result score rd_1 Computer run data get storage computer:memory div_res[30]
execute store result score rd_2 Computer run data get storage computer:memory div_res[29]
execute store result score rd_3 Computer run data get storage computer:memory div_res[28]
execute store result score rd_4 Computer run data get storage computer:memory div_res[27]
execute store result score rd_5 Computer run data get storage computer:memory div_res[26]
execute store result score rd_6 Computer run data get storage computer:memory div_res[25]
execute store result score rd_7 Computer run data get storage computer:memory div_res[24]
execute store result score rd_8 Computer run data get storage computer:memory div_res[23]
execute store result score rd_9 Computer run data get storage computer:memory div_res[22]
execute store result score rd_10 Computer run data get storage computer:memory div_res[21]
execute store result score rd_11 Computer run data get storage computer:memory div_res[20]
execute store result score rd_12 Computer run data get storage computer:memory div_res[19]
execute store result score rd_13 Computer run data get storage computer:memory div_res[18]
execute store result score rd_14 Computer run data get storage computer:memory div_res[17]
execute store result score rd_15 Computer run data get storage computer:memory div_res[16]
execute store result score rd_16 Computer run data get storage computer:memory div_res[15]
execute store result score rd_17 Computer run data get storage computer:memory div_res[14]
execute store result score rd_18 Computer run data get storage computer:memory div_res[13]
execute store result score rd_19 Computer run data get storage computer:memory div_res[12]
execute store result score rd_20 Computer run data get storage computer:memory div_res[11]
execute store result score rd_21 Computer run data get storage computer:memory div_res[10]
execute store result score rd_22 Computer run data get storage computer:memory div_res[9]
execute store result score rd_23 Computer run data get storage computer:memory div_res[8]
execute store result score rd_24 Computer run data get storage computer:memory div_res[7]
execute store result score rd_25 Computer run data get storage computer:memory div_res[6]
execute store result score rd_26 Computer run data get storage computer:memory div_res[5]
execute store result score rd_27 Computer run data get storage computer:memory div_res[4]
execute store result score rd_28 Computer run data get storage computer:memory div_res[3]
execute store result score rd_29 Computer run data get storage computer:memory div_res[2]
execute store result score rd_30 Computer run data get storage computer:memory div_res[1]
execute store result score rd_31 Computer run data get storage computer:memory div_res[0]

# if one and only one operator is negative (and result not 0)
execute if score rd_0 Computer matches 0 run execute if score rd_1 Computer matches 0 run execute if score rd_2 Computer matches 0 run execute if score rd_3 Computer matches 0 run execute if score rd_4 Computer matches 0 run execute if score rd_5 Computer matches 0 run execute if score rd_6 Computer matches 0 run execute if score rd_7 Computer matches 0 run execute if score rd_8 Computer matches 0 run execute if score rd_9 Computer matches 0 run execute if score rd_10 Computer matches 0 run execute if score rd_11 Computer matches 0 run execute if score rd_12 Computer matches 0 run execute if score rd_13 Computer matches 0 run execute if score rd_14 Computer matches 0 run execute if score rd_15 Computer matches 0 run execute if score rd_16 Computer matches 0 run execute if score rd_17 Computer matches 0 run execute if score rd_18 Computer matches 0 run execute if score rd_19 Computer matches 0 run execute if score rd_20 Computer matches 0 run execute if score rd_21 Computer matches 0 run execute if score rd_22 Computer matches 0 run execute if score rd_23 Computer matches 0 run execute if score rd_24 Computer matches 0 run execute if score rd_25 Computer matches 0 run execute if score rd_26 Computer matches 0 run execute if score rd_27 Computer matches 0 run execute if score rd_28 Computer matches 0 run execute if score rd_29 Computer matches 0 run execute if score rd_30 Computer matches 0 run execute if score rd_31 Computer matches 0 run scoreboard players set sign Computer 0
execute if score sign Computer matches 1 run function computer:alu/div_adapt_sign


# # update
function computer:misc/update_rd_7_11