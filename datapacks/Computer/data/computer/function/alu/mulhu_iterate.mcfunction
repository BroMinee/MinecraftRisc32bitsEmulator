# Iterate through rs2 bits from LSB to MSB for mulhu
# Uses the array stored in computer:memory mul (LSB at end, popped with [-1])
# mulhu_bit_pos tracks current bit position (0-31)
#
# Shifted rs1 is in rd_0..31 (lower) and mulhu_sh_0..31 (upper)
# Accumulator is in input_l_0..31 add32 (lower) and mulhu_acc_0..31 (upper)

# Get current bit from array (LSB first since array stores MSB first, we pop from end)
execute store result score mulhu_cur_bit Computer run data get storage computer:memory mul[-1]
data remove storage computer:memory mul[-1]

# If current bit is 1, add shifted rs1 to accumulator
execute if score mulhu_cur_bit Computer matches 1 run function computer:alu/mulhu_add_to_acc

# Shift rs1 left by 1 (64-bit shift: rd is low, mulhu_sh is high)
function computer:alu/mulhu_shift_left_1

# Continue if there are more bits
scoreboard players add mulhu_bit_pos Computer 1
execute if data storage computer:memory mul[-1] run function computer:alu/mulhu_iterate
