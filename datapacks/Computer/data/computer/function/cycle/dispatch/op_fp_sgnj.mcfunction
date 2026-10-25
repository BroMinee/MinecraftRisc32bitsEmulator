# FSGNJ dispatch on funct3
execute store result score _funct3 tests run data get storage computer:cpu funct3

# 0 = FSGNJ.S
execute if score _funct3 tests matches 0 run return run function computer:instruction/fsgnj.s

# 1 = FSGNJN.S
execute if score _funct3 tests matches 1 run return run function computer:instruction/fsgnjn.s

# 2 = FSGNJX.S
execute if score _funct3 tests matches 2 run return run function computer:instruction/fsgnjx.s

# Unknown funct3
function computer:debug/print_error {"message": [{"text":"Unknown FSGNJ funct3: "},{"score":{"name":"_funct3","objective":"tests"}}]}
