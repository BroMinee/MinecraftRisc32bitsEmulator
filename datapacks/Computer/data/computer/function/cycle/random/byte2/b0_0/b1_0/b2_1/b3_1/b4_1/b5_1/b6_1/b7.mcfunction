scoreboard players set #random Computer 0
execute if predicate computer:random run scoreboard players set #random Computer 1
execute if score #random Computer matches 0 run setblock 2 255 384 minecraft:brown_terracotta
execute if score #random Computer matches 1 run setblock 2 255 384 minecraft:nether_wart_block
