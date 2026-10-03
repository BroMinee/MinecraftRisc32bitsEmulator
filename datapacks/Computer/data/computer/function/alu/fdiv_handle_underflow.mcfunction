# Handle exponent underflow for fdiv.s
# When fdiv_exp_result <= 0, the result is subnormal or zero
# Shift mantissa right by (1 - fdiv_exp_result) positions

# Calculate shift amount = 1 - fdiv_exp_result
scoreboard players set fdiv_shift_amount Computer 1
scoreboard players operation fdiv_shift_amount Computer -= fdiv_exp_result Computer

# Set exponent to 0
scoreboard players set fdiv_exp_result Computer 0

# First shift: bring in the implicit 1 bit
scoreboard players set fdiv_underflow_implicit Computer 1

function computer:alu/fdiv_underflow_shift_right
