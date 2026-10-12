scoreboard players set #random Computer 0
execute if predicate computer:random run scoreboard players set #random Computer 1
execute if score #random Computer matches 0 run setblock 3 255 384 minecraft:gray_wool
execute if score #random Computer matches 1 run setblock 3 255 384 minecraft:waxed_weathered_cut_copper
