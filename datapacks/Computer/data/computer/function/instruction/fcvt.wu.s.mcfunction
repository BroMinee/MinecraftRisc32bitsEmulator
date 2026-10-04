tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running fcvt.wu.s","color":"gold"}]

scoreboard players add found_dispatcher Computer 1

# fcvt.wu.s rd, rs1: convert float (in float reg) to unsigned int32 (in integer reg)
function computer:misc/load_rs1_15_19_f

function computer:alu/fcvt_wu_s_convert

function computer:misc/update_rd_7_11
