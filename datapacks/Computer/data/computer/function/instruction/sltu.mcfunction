tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running sltu","color":"gold"}]

scoreboard players add found_dispatcher Computer 1

# load
function computer:misc/load_rd_7_11
function computer:misc/load_rs1_15_19
function computer:misc/load_rs2_20_24

# unsigned compare: sets compare = 1 if rs1 < rs2, else 0
function computer:alu/compare_lower_strict_unsigned_rs1_rs2

# rd = compare result (0 or 1)
function computer:misc/reset_rd
execute if score compare Computer matches 1 run scoreboard players set rd_0 Computer 1

function computer:misc/update_rd_7_11
