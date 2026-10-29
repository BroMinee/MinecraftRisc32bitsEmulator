#!jvmtimer end _dispatcher
#!jvmtimer start _v1_load_fmadd.s
tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running fmadd.s","color":"gold"}]

scoreboard players add found_dispatcher Computer 1

# fmadd.s rd, rs1, rs2, rs3 = (rs1 * rs2) + rs3

function computer:misc/load_rs1_15_19_f
function computer:misc/load_rs2_20_24_f
#!jvmtimer end _v1_load_fmadd.s

#!jvmtimer start fmadd.s
function computer:alu/fmul_compute

function computer:misc/update_rd_7_11_f
function computer:misc/load_rd_7_11_f
function computer:misc/copy_rd_to_rs1

function computer:misc/load_rs3_27_31_f

function computer:alu/fadd_compute
#!jvmtimer end fmadd.s

#!jvmtimer start _v1_wb_fmadd.s
function computer:misc/update_rd_7_11_f
#!jvmtimer end _v1_wb_fmadd.s
