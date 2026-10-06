# jalr (1100111) + ecall/ebreak (1110011)
execute if score read_cpy_2 Computer matches 0 run execute if score read_cpy_14 Computer matches 0 run execute if score read_cpy_12 Computer matches 0 run function computer:instruction/beq
execute if score read_cpy_2 Computer matches 0 run execute if score read_cpy_14 Computer matches 0 run execute if score read_cpy_12 Computer matches 1 run function computer:instruction/bne
execute if score read_cpy_2 Computer matches 0 run execute if score read_cpy_14 Computer matches 1 run function computer:instruction/_disp_b6_1_b5_1_b4_0_b3_0_b2_0_b14_1
execute if score read_cpy_2 Computer matches 1 run execute if score read_cpy_12 Computer matches 0 run execute if score read_cpy_13 Computer matches 0 run execute if score read_cpy_14 Computer matches 0 run function computer:instruction/jalr
