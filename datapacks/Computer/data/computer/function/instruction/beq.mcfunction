tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running beq","color":"gold"}]
# tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"Error: Not Yet Implemented beq","bold":true,"color":"red"}]
scoreboard players add found Computer 1


function computer:misc/load_rs1_15_19
function computer:misc/load_rs2_20_24


function computer:alu/compare_equal_rs1_rs2

execute if score compare Computer matches 1 run function computer:misc/take_branch