# Iterate through fmul_b bits (stored in computer:memory mul array)
# Pop last element (LSB first), if 1 add shifted value to accumulator, then shift left

# Pop current bit
execute store result score fmul_cur_bit Computer run data get storage computer:memory mul[-1]
data remove storage computer:memory mul[-1]

# If bit is 1, add shifted value to accumulator
execute if score fmul_cur_bit Computer matches 1 run function computer:alu/fmul_mul_add_to_acc

# Shift the multiplicand left by 1
function computer:alu/fmul_mul_shift_left_1

# Continue if there are more bits
execute if data storage computer:memory mul[-1] run function computer:alu/fmul_mul_iterate
