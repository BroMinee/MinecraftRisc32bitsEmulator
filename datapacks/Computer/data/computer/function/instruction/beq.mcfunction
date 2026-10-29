#!jvmtimer end _dispatcher
#!jvmtimer start _v1_load_beq
tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running beq","color":"gold"}]

scoreboard players add found_dispatcher Computer 1


function computer:misc/load_rs1_15_19
function computer:misc/load_rs2_20_24
#!jvmtimer end _v1_load_beq


#!jvmtimer start beq
function computer:alu/compare_equal_rs1_rs2

execute if score compare Computer matches 1 run function computer:misc/take_branch
#!jvmtimer end beq
