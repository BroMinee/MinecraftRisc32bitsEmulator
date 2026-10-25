# OP-IMM dispatch on funct3
execute store result score _funct3 tests run data get storage computer:cpu funct3

# 0 = ADDI
execute if score _funct3 tests matches 0 run return run function computer:instruction/addi

# 2 = SLTI
execute if score _funct3 tests matches 2 run return run function computer:instruction/slti

# 3 = SLTIU
execute if score _funct3 tests matches 3 run return run function computer:instruction/sltiu

# 4 = XORI
execute if score _funct3 tests matches 4 run return run function computer:instruction/xori

# 6 = ORI
execute if score _funct3 tests matches 6 run return run function computer:instruction/ori

# 7 = ANDI
execute if score _funct3 tests matches 7 run return run function computer:instruction/andi

# 1 = SLLI
execute if score _funct3 tests matches 1 run return run function computer:instruction/slli

# 5 = SRLI / SRAI (distinguished by funct7 bit 5)
execute if score _funct3 tests matches 5 run return run function computer:cycle/dispatch/op_imm_shift_right

# Unknown funct3
function computer:debug/print_error {"message": [{"text":"Unknown OP-IMM funct3: "},{"score":{"name":"_funct3","objective":"tests"}}]}
