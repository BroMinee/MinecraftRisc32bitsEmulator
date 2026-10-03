# Subtract the value in A2 inputs from rd
# Assumes input_0..31 A2 is already loaded with the value to subtract
# Result stored back in rd

# Step 1: Negate (two's complement)
function computer:alu/a2_32bits

# Step 2: Copy negated value to input_r add32
function computer:misc/copy_input_a2_to_input_r_add32

# Step 3: Load rd into input_l add32 (safe since A2 is done)
function computer:misc/copy_input_rd_to_input_l_add32

# Step 4: Add (rd + (-value)) = rd - value
function computer:alu/add_32bits

# Step 5: Copy result back to rd
function computer:misc/copy_input_l_to_rd_add32
