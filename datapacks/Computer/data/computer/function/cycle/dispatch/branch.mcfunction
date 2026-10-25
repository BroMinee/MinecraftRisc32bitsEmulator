# BRANCH dispatch on funct3
execute store result score _funct3 tests run data get storage computer:cpu funct3

# 0 = BEQ
execute if score _funct3 tests matches 0 run return run function computer:instruction/beq

# 1 = BNE
execute if score _funct3 tests matches 1 run return run function computer:instruction/bne

# 4 = BLT
execute if score _funct3 tests matches 4 run return run function computer:instruction/blt

# 5 = BGE
execute if score _funct3 tests matches 5 run return run function computer:instruction/bge

# 6 = BLTU
execute if score _funct3 tests matches 6 run return run function computer:instruction/bltu

# 7 = BGEU
execute if score _funct3 tests matches 7 run return run function computer:instruction/bgeu

# Unknown funct3
function computer:debug/print_error {"message": [{"text":"Unknown BRANCH funct3: "},{"score":{"name":"_funct3","objective":"tests"}}]}
