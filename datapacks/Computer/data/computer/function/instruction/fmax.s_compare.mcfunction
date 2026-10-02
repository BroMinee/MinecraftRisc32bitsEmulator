# fmax.s comparison logic
# input: rs1_0-31, rs2_0-31 (loaded float values)
# output: fmin_use_rs2 Computer (0 = use rs1, 1 = use rs2)

# Case 1: different signs
# rs1 negative, rs2 positive -> rs2 is max
execute if score rs1_31 Computer matches 1 run execute if score rs2_31 Computer matches 0 run scoreboard players set fmin_use_rs2 Computer 1
# rs1 positive, rs2 negative -> rs1 is max (already default)

# Case 2: both positive - compare magnitude (higher = larger)
execute if score rs1_31 Computer matches 0 run execute if score rs2_31 Computer matches 0 run function computer:alu/compare_equal_rs1_rs2_exponent
execute if score rs1_31 Computer matches 0 run execute if score rs2_31 Computer matches 0 run scoreboard players operation fmin_equal_exp Computer = compare Computer

# rs1 exponent < rs2 exponent -> rs2 is max
execute if score rs1_31 Computer matches 0 run execute if score rs2_31 Computer matches 0 run execute if score fmin_equal_exp Computer matches 0 run function computer:alu/compare_lower_strict_unsigned_rs1_exponent_rs2_exponent
execute if score rs1_31 Computer matches 0 run execute if score rs2_31 Computer matches 0 run execute if score fmin_equal_exp Computer matches 0 run execute if score compare Computer matches 1 run scoreboard players set fmin_use_rs2 Computer 1

# equal exponents -> compare mantissa
execute if score rs1_31 Computer matches 0 run execute if score rs2_31 Computer matches 0 run execute if score fmin_equal_exp Computer matches 1 run function computer:alu/compare_lower_strict_unsigned_rs1_mantissa_rs2_mantissa
# rs1 mantissa < rs2 mantissa -> rs2 is max
execute if score rs1_31 Computer matches 0 run execute if score rs2_31 Computer matches 0 run execute if score fmin_equal_exp Computer matches 1 run execute if score compare Computer matches 1 run scoreboard players set fmin_use_rs2 Computer 1

# Case 3: both negative - compare magnitude (lower magnitude = larger value)
execute if score rs1_31 Computer matches 1 run execute if score rs2_31 Computer matches 1 run function computer:alu/compare_equal_rs1_rs2_exponent
execute if score rs1_31 Computer matches 1 run execute if score rs2_31 Computer matches 1 run scoreboard players operation fmin_equal_exp Computer = compare Computer

execute if score rs1_31 Computer matches 1 run execute if score rs2_31 Computer matches 1 run execute if score fmin_equal_exp Computer matches 0 run function computer:alu/compare_lower_strict_unsigned_rs1_exponent_rs2_exponent
# rs1 exp < rs2 exp -> rs1 smaller magnitude -> rs1 is less negative -> rs1 is max (already default)
# rs1 exp > rs2 exp -> rs2 smaller magnitude -> rs2 is less negative -> rs2 is max
execute if score rs1_31 Computer matches 1 run execute if score rs2_31 Computer matches 1 run execute if score fmin_equal_exp Computer matches 0 run execute if score compare Computer matches 0 run scoreboard players set fmin_use_rs2 Computer 1

# equal exponents -> compare mantissa
execute if score rs1_31 Computer matches 1 run execute if score rs2_31 Computer matches 1 run execute if score fmin_equal_exp Computer matches 1 run function computer:alu/compare_lower_strict_unsigned_rs1_mantissa_rs2_mantissa
# rs1 mantissa < rs2 mantissa -> rs1 smaller magnitude -> rs1 is less negative -> rs1 is max (already default)
# rs1 mantissa >= rs2 mantissa -> rs2 is max
execute if score rs1_31 Computer matches 1 run execute if score rs2_31 Computer matches 1 run execute if score fmin_equal_exp Computer matches 1 run execute if score compare Computer matches 0 run scoreboard players set fmin_use_rs2 Computer 1
