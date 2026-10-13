tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running flw","color":"gold"}]

scoreboard players add found_dispatcher Computer 1

# flw [rd], [imm]([rs1])
# rd = memory[rs1+imm] as (32 bits) SHOULD be aligned to 4 bytes

# load rs1
function computer:misc/load_rs1_15_19

function computer:misc/copy_rs1_to_input_l_add32

function computer:misc/copy_imm_12_to_input_r_add32

# sign extend
function computer:misc/sign_extend_input_r_add32_12_to_32

# compute rs1 + imm
function computer:alu/add_32bits
# result is currently stored in input_l_0

function computer:misc/copy_input_l_to_rs1_add32

execute as @e[limit=1,type=armor_stand,tag=write] run function computer:write/tp_rs1
# Intercept clock read at 0x0FFE_0300 - 0x0FFE_0303
execute if score rs1_31 Computer matches 0 run execute if score rs1_30 Computer matches 0 run execute if score rs1_29 Computer matches 0 run execute if score rs1_28 Computer matches 0 run execute if score rs1_27 Computer matches 1 run execute if score rs1_26 Computer matches 1 run execute if score rs1_25 Computer matches 1 run execute if score rs1_24 Computer matches 1 run execute if score rs1_23 Computer matches 1 run execute if score rs1_22 Computer matches 1 run execute if score rs1_21 Computer matches 1 run execute if score rs1_20 Computer matches 1 run execute if score rs1_19 Computer matches 1 run execute if score rs1_18 Computer matches 1 run execute if score rs1_17 Computer matches 1 run execute if score rs1_16 Computer matches 0 run execute if score rs1_15 Computer matches 0 run execute if score rs1_14 Computer matches 0 run execute if score rs1_13 Computer matches 0 run execute if score rs1_12 Computer matches 0 run execute if score rs1_11 Computer matches 0 run execute if score rs1_10 Computer matches 0 run execute if score rs1_9 Computer matches 1 run execute if score rs1_8 Computer matches 1 run execute if score rs1_7 Computer matches 0 run execute if score rs1_6 Computer matches 0 run execute if score rs1_5 Computer matches 0 run execute if score rs1_4 Computer matches 0 run execute if score rs1_3 Computer matches 0 run execute if score rs1_2 Computer matches 0 run function computer:cycle/clock/write_to_memory
data modify storage computer:memory type set value "read32 bits FLW"
execute as @e[limit=1,type=armor_stand,tag=write] run function computer:read/read32bits

function computer:misc/copy_read_to_rd

function computer:misc/update_rd_7_11_f