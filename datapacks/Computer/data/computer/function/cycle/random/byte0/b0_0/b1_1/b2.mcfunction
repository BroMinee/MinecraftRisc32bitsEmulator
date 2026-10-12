scoreboard players set #random Computer 0
execute if predicate computer:random run scoreboard players set #random Computer 1
execute if score #random Computer matches 0 run function computer:cycle/random/byte0/b0_0/b1_1/b2_0/b3
execute if score #random Computer matches 1 run function computer:cycle/random/byte0/b0_0/b1_1/b2_1/b3
