scoreboard players set #random Computer 0
execute if predicate computer:random run scoreboard players set #random Computer 1
execute if score #random Computer matches 0 run setblock 1 255 384 minecraft:yellow_wool
execute if score #random Computer matches 1 run setblock 1 255 384 minecraft:waxed_exposed_copper
