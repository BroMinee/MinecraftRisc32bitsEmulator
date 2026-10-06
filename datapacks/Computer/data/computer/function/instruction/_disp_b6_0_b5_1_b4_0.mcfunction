# Float load/store: flw (0000111), fsw (0100111) + fmadd/fmsub/fnmsub/fnmadd
execute if score read_cpy_2 Computer matches 0 run execute if score read_cpy_13 Computer matches 0 run execute if score read_cpy_12 Computer matches 0 run function computer:instruction/sb
execute if score read_cpy_2 Computer matches 0 run execute if score read_cpy_13 Computer matches 0 run execute if score read_cpy_12 Computer matches 1 run function computer:instruction/sh
execute if score read_cpy_2 Computer matches 0 run execute if score read_cpy_13 Computer matches 1 run function computer:instruction/sw
execute if score read_cpy_2 Computer matches 1 run execute if score read_cpy_12 Computer matches 0 run execute if score read_cpy_14 Computer matches 0 run execute if score read_cpy_13 Computer matches 1 run function computer:instruction/fsw
