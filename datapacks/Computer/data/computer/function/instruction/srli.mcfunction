tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running srli","color":"gold"}]
# tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"Error: Not Yet Implemented srli","bold":true,"color":"red"}]
scoreboard players add found_dispatcher Computer 1

function computer:misc/load_rd_7_11

function computer:misc/load_rs1_15_19

function computer:misc/copy_rs1_to_rd

scoreboard players set keep_going Computer 0

scoreboard players operation rs2_0 Computer = read_20 Computer
scoreboard players operation rs2_1 Computer = read_21 Computer
scoreboard players operation rs2_2 Computer = read_22 Computer
scoreboard players operation rs2_3 Computer = read_23 Computer
scoreboard players operation rs2_4 Computer = read_24 Computer

execute if score rs2_0 Computer matches 1 run scoreboard players set keep_going Computer 1
execute if score rs2_1 Computer matches 1 run scoreboard players set keep_going Computer 1
execute if score rs2_2 Computer matches 1 run scoreboard players set keep_going Computer 1
execute if score rs2_3 Computer matches 1 run scoreboard players set keep_going Computer 1
execute if score rs2_4 Computer matches 1 run scoreboard players set keep_going Computer 1

scoreboard players set count Computer 0
execute if score keep_going Computer matches 1 run function computer:alu/shift_rd_right_based_on_rs2_5bits

execute if score count Computer matches 32.. run tellraw @a[tag=ERROR] [{"text":"Error: srli, recursive function as been called more than 31 times","color": "red","bold": true}]

function computer:misc/update_rd_7_11