# input read_[20-31] Computer AND rs1_0-11
# output rd_[0-11] Computer

tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running addi","color":"gold"}]

scoreboard players add found_dispatcher Computer 1

# addi [rd], [rs], [imm]
# rd =rs1 + imm

function computer:misc/load_rs1_15_19
function computer:misc/load_rd_7_11

function computer:misc/copy_rs1_to_rd

function computer:misc/copy_input_rd_to_input_l_add32

function computer:misc/copy_imm_12_to_input_r_add32

# addi, x0, x0, -42 is represented as addi x0, x0, a2(42)
# and x0 - 42 = x0 + a2(42)

# sign extend
function computer:misc/sign_extend_input_r_add32_12_to_32
function computer:alu/add_32bits


function computer:misc/copy_input_l_to_rd_add32

function computer:misc/update_rd_7_11