# Increment rd by 1 (for rounding up)
# Uses the 32-bit adder: copy rd to input_l, set input_r to 1, add, copy back

function computer:misc/copy_input_rd_to_input_l_add32

# Set input_r to 1
function computer:misc/reset_input_r_32bits
scoreboard players set input_r_0 add32 1

function computer:alu/add_32bits

function computer:misc/copy_input_l_to_rd_add32
