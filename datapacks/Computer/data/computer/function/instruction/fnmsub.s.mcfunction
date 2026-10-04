tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running fnmsub.s","color":"gold"}]

scoreboard players add found_dispatcher Computer 1

# fnmsub.s rd, rs1, rs2, rs3 = -(rs1 * rs2) + rs3

function computer:misc/load_rs1_15_19_f
function computer:misc/load_rs2_20_24_f
function computer:alu/fmul_compute

function computer:misc/update_rd_7_11_f
function computer:misc/load_rd_7_11_f
function computer:misc/copy_rd_to_rs1

scoreboard players operation fcvt_temp Computer = rs1_31 Computer
execute if score fcvt_temp Computer matches 0 run scoreboard players set rs1_31 Computer 1
execute if score fcvt_temp Computer matches 1 run scoreboard players set rs1_31 Computer 0

function computer:misc/load_rs3_27_31_f

function computer:alu/fadd_compute

function computer:misc/update_rd_7_11_f
