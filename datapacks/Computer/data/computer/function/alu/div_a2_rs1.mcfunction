# input rs1_[0-31] Computer
# output rs1_[0-31] Computer

function computer:misc/copy_rs1_to_a2
function computer:alu/a2_32bits
function computer:misc/copy_input_a2_to_rs1

scoreboard players add sign Computer 1
