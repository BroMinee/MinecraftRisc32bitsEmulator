tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running bne","color":"gold"}]
# tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"Error: Not Yet Implemented bne","bold":true,"color":"red"}]
scoreboard players add found_dispatcher Computer 1


function computer:misc/load_rs1_15_19
function computer:misc/load_rs2_20_24


function computer:alu/compare_equal_rs1_rs2

execute if score compare Computer matches 0 run function computer:misc/take_branch