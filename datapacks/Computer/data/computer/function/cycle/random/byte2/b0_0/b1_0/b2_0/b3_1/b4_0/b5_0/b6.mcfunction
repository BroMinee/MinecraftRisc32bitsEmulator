scoreboard players set #random Computer 0
execute if predicate computer:random run scoreboard players set #random Computer 1
execute if score #random Computer matches 0 run function computer:cycle/random/byte2/b0_0/b1_0/b2_0/b3_1/b4_0/b5_0/b6_0/b7
execute if score #random Computer matches 1 run function computer:cycle/random/byte2/b0_0/b1_0/b2_0/b3_1/b4_0/b5_0/b6_1/b7
