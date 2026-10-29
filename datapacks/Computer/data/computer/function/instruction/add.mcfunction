#!jvmtimer end _dispatcher
#!jvmtimer start _v1_load_add
tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running add","color":"gold"}]

scoreboard players add found_dispatcher Computer 1

# load
function computer:misc/load_rd_7_11
function computer:misc/load_rs1_15_19
function computer:misc/load_rs2_20_24
#!jvmtimer end _v1_load_add

# add
#!jvmtimer start add
function computer:misc/copy_rs1_to_input_l_add32
function computer:misc/copy_rs2_to_input_r_add32
function computer:alu/add_32bits
function computer:misc/copy_input_l_to_rd_add32
#!jvmtimer end add

# update
#!jvmtimer start _v1_wb_add
function computer:misc/update_rd_7_11
#!jvmtimer end _v1_wb_add