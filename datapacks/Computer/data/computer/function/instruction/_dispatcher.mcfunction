# Instruction dispatcher - binary tree on opcode bits [6:2]
scoreboard players set found_dispatcher Computer 0
execute if score read_cpy_6 Computer matches 0 run function computer:instruction/_disp_b6_0
execute if score read_cpy_6 Computer matches 1 run execute if score read_cpy_5 Computer matches 0 run execute if score read_cpy_4 Computer matches 0 run function computer:instruction/_disp_b6_1_b5_0_b4_0
execute if score read_cpy_6 Computer matches 1 run execute if score read_cpy_5 Computer matches 0 run execute if score read_cpy_4 Computer matches 1 run function computer:instruction/_disp_b6_1_b5_0_b4_1
execute if score read_cpy_6 Computer matches 1 run execute if score read_cpy_5 Computer matches 1 run function computer:instruction/_disp_b6_1_b5_1
execute if score found_dispatcher Computer matches 0 run tellraw @a[tag=ERROR] ["",{"text":"Error: [_dispatcher] No instruction found for this opcode","color":"red","bold": true}]
execute if score found_dispatcher Computer matches 2.. run tellraw @a[tag=ERROR] ["",{"text":"Error: [_dispatcher] Two instructions run","color":"red","bold": true}]
execute unless score found_dispatcher Computer matches 1 run scoreboard players set error stats 1
