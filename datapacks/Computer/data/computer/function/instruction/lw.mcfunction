tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running lw","color":"gold"}]

scoreboard players add found_dispatcher Computer 1
scoreboard players add read stats 1


# lw [rd], [imm]([rs1])
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
data modify storage computer:memory type set value "read32 bits LW"
execute as @e[limit=1,type=armor_stand,tag=write] run function computer:read/read32bits

function computer:misc/copy_read_to_rd

function computer:misc/update_rd_7_11