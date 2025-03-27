# note input_r_ should be the complement a2 of rs2 (diviseur)
# input_r is not modified during the recursion
# at the end: input_l contain the remaining
# at the end: computer:memory div_res contain the result of the division (0 index = 31 bits)

function computer:alu/shift_input_l_left_1



# tellraw @p ["",{"text":"["},{"text":"]"},{"nbt":"div[31]","storage":"computer:memory"},{"nbt":"div[30]","storage":"computer:memory"},{"nbt":"div[29]","storage":"computer:memory"},{"nbt":"div[28]","storage":"computer:memory"},{"nbt":"div[27]","storage":"computer:memory"},{"nbt":"div[26]","storage":"computer:memory"},{"nbt":"div[25]","storage":"computer:memory"},{"nbt":"div[24]","storage":"computer:memory"},{"nbt":"div[23]","storage":"computer:memory"},{"nbt":"div[22]","storage":"computer:memory"},{"nbt":"div[21]","storage":"computer:memory"},{"nbt":"div[20]","storage":"computer:memory"},{"nbt":"div[19]","storage":"computer:memory"},{"nbt":"div[18]","storage":"computer:memory"},{"nbt":"div[17]","storage":"computer:memory"},{"nbt":"div[16]","storage":"computer:memory"},{"nbt":"div[15]","storage":"computer:memory"},{"nbt":"div[14]","storage":"computer:memory"},{"nbt":"div[13]","storage":"computer:memory"},{"nbt":"div[12]","storage":"computer:memory"},{"nbt":"div[11]","storage":"computer:memory"},{"nbt":"div[10]","storage":"computer:memory"},{"nbt":"div[9]","storage":"computer:memory"},{"nbt":"div[8]","storage":"computer:memory"},{"nbt":"div[7]","storage":"computer:memory"},{"nbt":"div[6]","storage":"computer:memory"},{"nbt":"div[5]","storage":"computer:memory"},{"nbt":"div[4]","storage":"computer:memory"},{"nbt":"div[3]","storage":"computer:memory"},{"nbt":"div[2]","storage":"computer:memory"},{"nbt":"div[1]","storage":"computer:memory"},{"nbt":"div[0]","storage":"computer:memory"}]
execute store result score input_l_0 add32 run data get storage computer:memory div[-1]
data remove storage computer:memory div[-1]


function computer:alu/compare_lower_strict_unsigned_input_l_add32_rs2

# # compare = 1 if input_l < rs2 else 0
# we are looking for input_l >= rs2 so when 0
execute if score compare Computer matches 0 run data modify storage computer:memory div_res append value 1
execute if score compare Computer matches 0 run function computer:alu/add_32bits
execute if score compare Computer matches 1 run data modify storage computer:memory div_res append value 0

execute if data storage computer:memory div[-1] run function computer:alu/divu_iterate_over_array