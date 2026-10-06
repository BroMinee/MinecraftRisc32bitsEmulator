# bit6=0 bit5=0: Load (0000011), I-type (0010011), Fence (0001111)
execute if score read_cpy_4 Computer matches 0 run function computer:instruction/_disp_b6_0_b5_0_b4_0
execute if score read_cpy_4 Computer matches 1 run execute if score read_cpy_2 Computer matches 0 run execute if score read_cpy_14 Computer matches 0 run function computer:instruction/_disp_b6_0_b5_0_b4_1_b2_0_b14_0
execute if score read_cpy_4 Computer matches 1 run execute if score read_cpy_2 Computer matches 0 run execute if score read_cpy_14 Computer matches 1 run function computer:instruction/_disp_b6_0_b5_0_b4_1_b2_0_b14_1
execute if score read_cpy_4 Computer matches 1 run execute if score read_cpy_2 Computer matches 1 run function computer:instruction/auipc
