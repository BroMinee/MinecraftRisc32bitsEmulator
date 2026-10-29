#!jvmtimer end _dispatcher
#!jvmtimer start _v1_load_fmul.s
tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running fmul.s","color":"gold"}]
scoreboard players add found_dispatcher Computer 1

function computer:misc/load_rs1_15_19_f
function computer:misc/load_rs2_20_24_f
#!jvmtimer end _v1_load_fmul.s

#!jvmtimer start fmul.s
function computer:alu/fmul_compute
#!jvmtimer end fmul.s

#!jvmtimer start _v1_wb_fmul.s
function computer:misc/update_rd_7_11_f
#!jvmtimer end _v1_wb_fmul.s
