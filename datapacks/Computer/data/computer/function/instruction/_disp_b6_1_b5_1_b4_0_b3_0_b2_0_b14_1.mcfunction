# blt, bge, bltu, bgeu
execute if score read_cpy_13 Computer matches 0 run execute if score read_cpy_12 Computer matches 0 run function computer:instruction/blt
execute if score read_cpy_13 Computer matches 0 run execute if score read_cpy_12 Computer matches 1 run function computer:instruction/bge
execute if score read_cpy_13 Computer matches 1 run execute if score read_cpy_12 Computer matches 0 run function computer:instruction/bltu
execute if score read_cpy_13 Computer matches 1 run execute if score read_cpy_12 Computer matches 1 run function computer:instruction/bgeu
