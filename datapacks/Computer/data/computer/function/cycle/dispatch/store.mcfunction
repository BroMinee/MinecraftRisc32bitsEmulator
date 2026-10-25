# STORE dispatch on funct3
execute store result score _funct3 tests run data get storage computer:cpu funct3

# 0 = SB
execute if score _funct3 tests matches 0 run return run function computer:instruction/sb

# 1 = SH
execute if score _funct3 tests matches 1 run return run function computer:instruction/sh

# 2 = SW
execute if score _funct3 tests matches 2 run return run function computer:instruction/sw

# Unknown funct3
function computer:debug/print_error {"message": [{"text":"Unknown STORE funct3: "},{"score":{"name":"_funct3","objective":"tests"}}]}
