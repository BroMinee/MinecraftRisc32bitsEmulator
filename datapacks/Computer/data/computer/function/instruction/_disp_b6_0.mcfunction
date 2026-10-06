# opcode bit6=0: I-type, R-type, S-type, Load, Float-arith
execute if score read_cpy_5 Computer matches 0 run function computer:instruction/_disp_b6_0_b5_0
execute if score read_cpy_5 Computer matches 1 run execute if score read_cpy_4 Computer matches 0 run function computer:instruction/_disp_b6_0_b5_1_b4_0
execute if score read_cpy_5 Computer matches 1 run execute if score read_cpy_4 Computer matches 1 run execute if score read_cpy_2 Computer matches 0 run function computer:instruction/_disp_b6_0_b5_1_b4_1_b2_0
execute if score read_cpy_5 Computer matches 1 run execute if score read_cpy_4 Computer matches 1 run execute if score read_cpy_2 Computer matches 1 run function computer:instruction/lui
