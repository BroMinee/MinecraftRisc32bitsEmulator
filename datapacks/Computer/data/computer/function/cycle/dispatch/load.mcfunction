# LOAD dispatch on funct3
execute store result score _funct3 tests run data get storage computer:cpu funct3

# 0 = LB
execute if score _funct3 tests matches 0 run return run function computer:instruction/lb

# 1 = LH
execute if score _funct3 tests matches 1 run return run function computer:instruction/lh

# 2 = LW
execute if score _funct3 tests matches 2 run return run function computer:instruction/lw

# 4 = LBU
execute if score _funct3 tests matches 4 run return run function computer:instruction/lbu

# 5 = LHU
execute if score _funct3 tests matches 5 run return run function computer:instruction/lhu

# Unknown funct3
function computer:debug/print_error {"message": [{"text":"Unknown LOAD funct3: "},{"score":{"name":"_funct3","objective":"tests"}}]}
