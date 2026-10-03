tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running mul","color":"gold"}]

scoreboard players add found_dispatcher Computer 1

# # load
# function computer:misc/load_rd_7_11
function computer:misc/load_rs1_15_19
function computer:misc/load_rs2_20_24

# # mul


function computer:alu/store_rs2_bits_to_mul_array

scoreboard players set mul_index Computer 0
function computer:misc/reset_input_l_32bits
scoreboard players set left_mul Computer -1
scoreboard players set right_mul Computer -1
execute if data storage computer:memory mul[-1] run function computer:alu/mul_iterate_over_array

function computer:misc/copy_input_l_to_rd_add32

# # update
function computer:misc/update_rd_7_11