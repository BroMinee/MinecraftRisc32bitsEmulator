# input rs1_[0-22] Computer and rs1_[22-30] Computer and rs2_[22-30] Computer
# output rs1_[0-22] Computer
# modified rs1_[23-30] Computer

# MUST be called when rs1 exponent and rs2 exponent are not the same
# MUST SET count Computer to 0 before calling this function

scoreboard players operation fadd_last_bit Computer = rs1_0 Computer
execute if score rs1_0 Computer matches 1 run scoreboard players add fadd_nb_1_discarded Computer 1

function computer:alu/shift_rs1_right_mantissa_1

scoreboard players add count Computer 1

function computer:alu/add_1_rs1_exponent

# if compare = 0 then rs1 and rs2 exponent are different
function computer:alu/compare_equal_rs1_rs2_exponent

execute if score compare Computer matches 0 run execute unless score count Computer matches 25.. run function computer:alu/shift_right_rs1_mantissa_until_exponent_are_equal
