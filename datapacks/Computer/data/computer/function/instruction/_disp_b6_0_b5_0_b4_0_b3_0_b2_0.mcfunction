# Load (0000011): lb, lh, lw, lbu, lhu
execute if score read_cpy_14 Computer matches 0 run execute if score read_cpy_13 Computer matches 0 run execute if score read_cpy_12 Computer matches 0 run function computer:instruction/lb
execute if score read_cpy_14 Computer matches 0 run execute if score read_cpy_13 Computer matches 0 run execute if score read_cpy_12 Computer matches 1 run function computer:instruction/lh
execute if score read_cpy_14 Computer matches 0 run execute if score read_cpy_13 Computer matches 1 run function computer:instruction/lw
execute if score read_cpy_14 Computer matches 1 run execute if score read_cpy_12 Computer matches 0 run function computer:instruction/lbu
execute if score read_cpy_14 Computer matches 1 run execute if score read_cpy_12 Computer matches 1 run function computer:instruction/lhu
