tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running sub","color":"gold"}]
# tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"Error: Not Yet Implemented sub","bold":true,"color":"red"}]
scoreboard players add found_dispatcher Computer 1

function computer:misc/load_rs1_15_19
function computer:misc/load_rs2_20_24

function computer:misc/copy_rs2_to_a2
function computer:alu/a2_32bits

function computer:misc/copy_input_a2_to_input_r_add32
function computer:misc/copy_rs1_to_input_l_add32

function computer:alu/add_32bits
function computer:misc/copy_input_l_to_rd_add32
function computer:misc/update_rd_7_11