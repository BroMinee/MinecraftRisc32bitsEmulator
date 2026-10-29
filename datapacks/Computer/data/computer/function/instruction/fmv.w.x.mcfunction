#!jvmtimer end _dispatcher
#!jvmtimer start fmv.w.x
tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running fmv.w.x","color":"gold"}]

scoreboard players add found_dispatcher Computer 1

function computer:misc/load_rs1_15_19

function computer:misc/copy_rs1_to_rd

function computer:misc/update_rd_7_11_f

#!jvmtimer end fmv.w.x
