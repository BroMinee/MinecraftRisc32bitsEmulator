tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running fsgnjn.s","color":"gold"}]

scoreboard players add found_dispatcher Computer 1

function computer:misc/load_rs1_15_19_f
function computer:misc/load_rs2_20_24_f

# rd[30:0] = rs1[30:0], rd[31] = NOT rs2[31]
function computer:misc/copy_rs1_to_rd
execute if score rs2_31 Computer matches 0 run scoreboard players set rd_31 Computer 1
execute if score rs2_31 Computer matches 1 run scoreboard players set rd_31 Computer 0

function computer:misc/update_rd_7_11_f
