scoreboard players set #random Computer 0
execute if predicate computer:random run scoreboard players set #random Computer 1
execute if score #random Computer matches 0 run function computer:cycle/random/byte0/b0_1/b1_0/b2_1/b3_0/b4_1/b5_1/b6_0/b7
execute if score #random Computer matches 1 run function computer:cycle/random/byte0/b0_1/b1_0/b2_1/b3_0/b4_1/b5_1/b6_1/b7
