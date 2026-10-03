# Handle exponent underflow for fmul.s
# When fmul_exp_result <= 0, the result is subnormal or zero
# We need to shift the mantissa right by (1 - fmul_exp_result) positions
# and set the exponent to 0

# Calculate shift amount = 1 - fmul_exp_result
scoreboard players set fmul_shift_amount Computer 1
scoreboard players operation fmul_shift_amount Computer -= fmul_exp_result Computer

# Set exponent to 0
scoreboard players set fmul_exp_result Computer 0

# Perform the right shifts
# We need to shift rd mantissa right, bringing in the implicit 1 at the top
# For subnormal results, the mantissa includes what would be the implicit bit
# So we need to shift in a 1 at the MSB for the first shift (the hidden bit)

# First shift: bring in the implicit 1 bit
scoreboard players set fmul_underflow_implicit Computer 1

function computer:alu/fmul_underflow_shift_right
