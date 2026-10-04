tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running fcvt.w.s","color":"gold"}]
# tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"Error: Not Yet Implemented fcvt.w.s","bold":true,"color":"red"}]
# scoreboard players set error stats 1
scoreboard players add found_dispatcher Computer 1

# fcvt.w.s rd, rs1: convert float (in float reg) to signed int32 (in integer reg)
function computer:misc/load_rs1_15_19_f

function computer:alu/fcvt_w_s_convert

function computer:misc/update_rd_7_11
