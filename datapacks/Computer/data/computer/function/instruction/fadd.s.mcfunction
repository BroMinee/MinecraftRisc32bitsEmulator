#!jvmtimer end _dispatcher
#!jvmtimer start _v1_load_fadd.s
tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running fadd.s","color":"gold"}]

scoreboard players add found_dispatcher Computer 1

function computer:misc/load_rs1_15_19_f
function computer:misc/load_rs2_20_24_f
#!jvmtimer end _v1_load_fadd.s

#!jvmtimer start fadd.s
function computer:alu/fadd_compute
#!jvmtimer end fadd.s

#!jvmtimer start _v1_wb_fadd.s
function computer:misc/update_rd_7_11_f
#!jvmtimer end _v1_wb_fadd.s
