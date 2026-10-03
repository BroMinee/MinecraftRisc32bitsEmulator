tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running fsgnj.s","color":"gold"}]

scoreboard players add found_dispatcher Computer 1

function computer:misc/load_rs1_15_19_f
function computer:misc/load_rs2_20_24_f

# rd[30:0] = rs1[30:0], rd[31] = rs2[31]
function computer:misc/copy_rs1_to_rd
scoreboard players operation rd_31 Computer = rs2_31 Computer

function computer:misc/update_rd_7_11_f
