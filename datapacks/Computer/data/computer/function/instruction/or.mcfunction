tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running or","color":"gold"}]
#tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"Error: Not Yet Implemented or","bold":true,"color":"red"}]
scoreboard players add found_dispatcher Computer 1

function computer:misc/load_rs1_15_19
function computer:misc/load_rs2_20_24

function computer:misc/copy_rs1_to_input_l_or
function computer:misc/copy_rs2_to_input_r_or

function computer:alu/or_32bits

function computer:misc/copy_input_l_to_rd_or
function computer:misc/update_rd_7_11