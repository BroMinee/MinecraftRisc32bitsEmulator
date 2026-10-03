tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running sltiu","color":"gold"}]

scoreboard players add found_dispatcher Computer 1

# load
function computer:misc/load_rd_7_11
function computer:misc/load_rs1_15_19

# Copy sign-extended immediate (read_20..read_31) into rs2
scoreboard players operation rs2_0 Computer = read_20 Computer
scoreboard players operation rs2_1 Computer = read_21 Computer
scoreboard players operation rs2_2 Computer = read_22 Computer
scoreboard players operation rs2_3 Computer = read_23 Computer
scoreboard players operation rs2_4 Computer = read_24 Computer
scoreboard players operation rs2_5 Computer = read_25 Computer
scoreboard players operation rs2_6 Computer = read_26 Computer
scoreboard players operation rs2_7 Computer = read_27 Computer
scoreboard players operation rs2_8 Computer = read_28 Computer
scoreboard players operation rs2_9 Computer = read_29 Computer
scoreboard players operation rs2_10 Computer = read_30 Computer
scoreboard players operation rs2_11 Computer = read_31 Computer
# sign extend bit 11 to bits 12-31
scoreboard players operation rs2_12 Computer = read_31 Computer
scoreboard players operation rs2_13 Computer = read_31 Computer
scoreboard players operation rs2_14 Computer = read_31 Computer
scoreboard players operation rs2_15 Computer = read_31 Computer
scoreboard players operation rs2_16 Computer = read_31 Computer
scoreboard players operation rs2_17 Computer = read_31 Computer
scoreboard players operation rs2_18 Computer = read_31 Computer
scoreboard players operation rs2_19 Computer = read_31 Computer
scoreboard players operation rs2_20 Computer = read_31 Computer
scoreboard players operation rs2_21 Computer = read_31 Computer
scoreboard players operation rs2_22 Computer = read_31 Computer
scoreboard players operation rs2_23 Computer = read_31 Computer
scoreboard players operation rs2_24 Computer = read_31 Computer
scoreboard players operation rs2_25 Computer = read_31 Computer
scoreboard players operation rs2_26 Computer = read_31 Computer
scoreboard players operation rs2_27 Computer = read_31 Computer
scoreboard players operation rs2_28 Computer = read_31 Computer
scoreboard players operation rs2_29 Computer = read_31 Computer
scoreboard players operation rs2_30 Computer = read_31 Computer
scoreboard players operation rs2_31 Computer = read_31 Computer

# unsigned compare: sets compare = 1 if rs1 < rs2, else 0
function computer:alu/compare_lower_strict_unsigned_rs1_rs2

# rd = compare result (0 or 1)
function computer:misc/reset_rd
execute if score compare Computer matches 1 run scoreboard players set rd_0 Computer 1

function computer:misc/update_rd_7_11
