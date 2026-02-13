tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running rem","color":"gold"}]

scoreboard players add found_dispatcher Computer 1


function computer:misc/load_rs1_15_19
function computer:misc/load_rs2_20_24


scoreboard players set sign Computer 0
scoreboard players operation rs1_31_cpy Computer = rs1_31 Computer
execute if score rs1_31 Computer matches 1 run function computer:alu/div_a2_rs1
execute if score rs2_31 Computer matches 1 run function computer:alu/div_a2_rs2


# divu
function computer:alu/divu

# copy remaining to rd
function computer:misc/copy_input_l_to_rd_add32

execute if score rd_0 Computer matches 0 run execute if score rd_1 Computer matches 0 run execute if score rd_2 Computer matches 0 run execute if score rd_3 Computer matches 0 run execute if score rd_4 Computer matches 0 run execute if score rd_5 Computer matches 0 run execute if score rd_6 Computer matches 0 run execute if score rd_7 Computer matches 0 run execute if score rd_8 Computer matches 0 run execute if score rd_9 Computer matches 0 run execute if score rd_10 Computer matches 0 run execute if score rd_11 Computer matches 0 run execute if score rd_12 Computer matches 0 run execute if score rd_13 Computer matches 0 run execute if score rd_14 Computer matches 0 run execute if score rd_15 Computer matches 0 run execute if score rd_16 Computer matches 0 run execute if score rd_17 Computer matches 0 run execute if score rd_18 Computer matches 0 run execute if score rd_19 Computer matches 0 run execute if score rd_20 Computer matches 0 run execute if score rd_21 Computer matches 0 run execute if score rd_22 Computer matches 0 run execute if score rd_23 Computer matches 0 run execute if score rd_24 Computer matches 0 run execute if score rd_25 Computer matches 0 run execute if score rd_26 Computer matches 0 run execute if score rd_27 Computer matches 0 run execute if score rd_28 Computer matches 0 run execute if score rd_29 Computer matches 0 run execute if score rd_30 Computer matches 0 run execute if score rd_31 Computer matches 0 run scoreboard players set sign Computer 0
execute if score sign Computer matches 2 run function computer:alu/div_adapt_sign
 execute if score rs1_31_cpy Computer matches 1 run execute unless score sign Computer matches 2 run function computer:alu/div_adapt_sign
# # update
function computer:misc/update_rd_7_11