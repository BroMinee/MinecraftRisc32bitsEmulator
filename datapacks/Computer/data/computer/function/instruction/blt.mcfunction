tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running blt","color":"gold"}]
#tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"Error: Not Yet Implemented blt","bold":true,"color":"red"}]
scoreboard players add found_dispatcher Computer 1

function computer:misc/load_rs1_15_19
function computer:misc/load_rs2_20_24


function computer:alu/compare_lower_strict_signed_rs1_rs2

# if rs1 < rs2 take branch (signed)
execute if score compare Computer matches 1 run function computer:misc/take_branch