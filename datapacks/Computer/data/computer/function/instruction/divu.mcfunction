tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running divu","color":"gold"}]

scoreboard players add found_dispatcher Computer 1

function computer:misc/load_rs1_15_19
function computer:misc/load_rs2_20_24

# divu
function computer:alu/divu

function computer:misc/copy_div_res_to_rd


# # update
function computer:misc/update_rd_7_11