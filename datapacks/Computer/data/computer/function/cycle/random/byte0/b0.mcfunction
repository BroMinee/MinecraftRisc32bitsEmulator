scoreboard players set #random Computer 0
execute if predicate computer:random run scoreboard players set #random Computer 1
execute if score #random Computer matches 0 run function computer:cycle/random/byte0/b0_0/b1
execute if score #random Computer matches 1 run function computer:cycle/random/byte0/b0_1/b1
