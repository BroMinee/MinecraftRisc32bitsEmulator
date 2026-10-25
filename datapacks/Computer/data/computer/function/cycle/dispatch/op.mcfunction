# OP dispatch on funct7 first (M-extension vs base), then funct3
execute store result score _funct7 tests run data get storage computer:cpu funct7
execute store result score _funct3 tests run data get storage computer:cpu funct3

# funct7 = 0x01 (1) = M-extension (MUL, MULH, MULHSU, MULHU, DIV, DIVU, REM, REMU)
execute if score _funct7 tests matches 1 run return run function computer:cycle/dispatch/op_muldiv

# Base integer instructions
# funct3=0: ADD (funct7=0x00) / SUB (funct7=0x20)
execute if score _funct3 tests matches 0 if score _funct7 tests matches 0 run return run function computer:instruction/add
execute if score _funct3 tests matches 0 if score _funct7 tests matches 32 run return run function computer:instruction/sub

# funct3=1: SLL
execute if score _funct3 tests matches 1 run return run function computer:instruction/sll

# funct3=2: SLT
execute if score _funct3 tests matches 2 run return run function computer:instruction/slt

# funct3=3: SLTU
execute if score _funct3 tests matches 3 run return run function computer:instruction/sltu

# funct3=4: XOR
execute if score _funct3 tests matches 4 run return run function computer:instruction/xor

# funct3=5: SRL (funct7=0x00) / SRA (funct7=0x20)
execute if score _funct3 tests matches 5 if score _funct7 tests matches 0 run return run function computer:instruction/srl
execute if score _funct3 tests matches 5 if score _funct7 tests matches 32 run return run function computer:instruction/sra

# funct3=6: OR
execute if score _funct3 tests matches 6 run return run function computer:instruction/or

# funct3=7: AND
execute if score _funct3 tests matches 7 run return run function computer:instruction/and

# Unknown
function computer:debug/print_error {"message": [{"text":"Unknown OP funct3="},{"score":{"name":"_funct3","objective":"tests"}},{"text":" funct7="},{"score":{"name":"_funct7","objective":"tests"}}]}
