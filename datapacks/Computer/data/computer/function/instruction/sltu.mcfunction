tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running sltu","color":"gold"}]

scoreboard players add found_dispatcher Computer 1

# load
function computer:misc/load_rd_7_11
function computer:misc/load_rs1_15_19
function computer:misc/load_rs2_20_24

# unsigned compare: sets compare = 1 if rs1 < rs2, else 0
function computer:alu/compare_lower_strict_unsigned_rs1_rs2

# rd = compare result (0 or 1)
scoreboard players set rd_0 Computer 0
scoreboard players set rd_1 Computer 0
scoreboard players set rd_2 Computer 0
scoreboard players set rd_3 Computer 0
scoreboard players set rd_4 Computer 0
scoreboard players set rd_5 Computer 0
scoreboard players set rd_6 Computer 0
scoreboard players set rd_7 Computer 0
scoreboard players set rd_8 Computer 0
scoreboard players set rd_9 Computer 0
scoreboard players set rd_10 Computer 0
scoreboard players set rd_11 Computer 0
scoreboard players set rd_12 Computer 0
scoreboard players set rd_13 Computer 0
scoreboard players set rd_14 Computer 0
scoreboard players set rd_15 Computer 0
scoreboard players set rd_16 Computer 0
scoreboard players set rd_17 Computer 0
scoreboard players set rd_18 Computer 0
scoreboard players set rd_19 Computer 0
scoreboard players set rd_20 Computer 0
scoreboard players set rd_21 Computer 0
scoreboard players set rd_22 Computer 0
scoreboard players set rd_23 Computer 0
scoreboard players set rd_24 Computer 0
scoreboard players set rd_25 Computer 0
scoreboard players set rd_26 Computer 0
scoreboard players set rd_27 Computer 0
scoreboard players set rd_28 Computer 0
scoreboard players set rd_29 Computer 0
scoreboard players set rd_30 Computer 0
scoreboard players set rd_31 Computer 0
execute if score compare Computer matches 1 run scoreboard players set rd_0 Computer 1

function computer:misc/update_rd_7_11
