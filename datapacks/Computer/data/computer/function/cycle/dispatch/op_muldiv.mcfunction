# M-extension dispatch on funct3
execute store result score _funct3 tests run data get storage computer:cpu funct3

# 0 = MUL
execute if score _funct3 tests matches 0 run return run function computer:instruction/mul

# 1 = MULH
execute if score _funct3 tests matches 1 run return run function computer:instruction/mulh

# 2 = MULHSU
execute if score _funct3 tests matches 2 run return run function computer:instruction/mulhsu

# 3 = MULHU
execute if score _funct3 tests matches 3 run return run function computer:instruction/mulhu

# 4 = DIV
execute if score _funct3 tests matches 4 run return run function computer:instruction/div

# 5 = DIVU
execute if score _funct3 tests matches 5 run return run function computer:instruction/divu

# 6 = REM
execute if score _funct3 tests matches 6 run return run function computer:instruction/rem

# 7 = REMU
execute if score _funct3 tests matches 7 run return run function computer:instruction/remu
