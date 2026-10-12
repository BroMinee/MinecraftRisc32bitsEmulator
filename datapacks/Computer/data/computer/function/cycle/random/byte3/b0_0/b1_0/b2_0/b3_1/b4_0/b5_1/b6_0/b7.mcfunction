scoreboard players set #random Computer 0
execute if predicate computer:random run scoreboard players set #random Computer 1
execute if score #random Computer matches 0 run setblock 3 255 384 minecraft:stripped_oak_log
execute if score #random Computer matches 1 run setblock 3 255 384 minecraft:diamond_block
