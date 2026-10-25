# OP-IMM funct3=5: SRLI vs SRAI, distinguished by funct7 bit 5
execute store result score _funct7 tests run data get storage computer:cpu funct7

# funct7 = 0x00 (0) = SRLI
execute if score _funct7 tests matches 0 run return run function computer:instruction/srli

# funct7 = 0x20 (32) = SRAI
execute if score _funct7 tests matches 32 run return run function computer:instruction/srai

# Unknown
function computer:debug/print_error {"message": [{"text":"Unknown OP-IMM shift-right funct7: "},{"score":{"name":"_funct7","objective":"tests"}}]}
