execute store result score bit_mul Computer run data get storage computer:memory mul[-1]

execute if score bit_mul Computer matches 1 run execute if score right_mul Computer matches -1 run scoreboard players operation right_mul Computer = mul_index Computer
execute if score bit_mul Computer matches 0 run execute if score right_mul Computer matches 0.. run scoreboard players operation left_mul Computer = mul_index Computer

execute unless score right_mul Computer matches -1 run execute unless score left_mul Computer matches -1 run function computer:alu/mul_bound

scoreboard players add mul_index Computer 1
data remove storage computer:memory mul[-1]
execute if data storage computer:memory mul[-1] run function computer:alu/mul_iterate_over_array
execute unless data storage computer:memory mul[-1] run execute if score right_mul Computer matches 0.. run scoreboard players operation left_mul Computer = mul_index Computer
execute unless data storage computer:memory mul[-1] run execute if score right_mul Computer matches 0.. run function computer:alu/mul_bound