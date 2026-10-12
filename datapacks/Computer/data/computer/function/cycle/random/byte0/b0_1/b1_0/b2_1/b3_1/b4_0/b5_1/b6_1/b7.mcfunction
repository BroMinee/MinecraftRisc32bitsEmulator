scoreboard players set #random Computer 0
execute if predicate computer:random run scoreboard players set #random Computer 1
execute if score #random Computer matches 0 run setblock 0 255 384 minecraft:green_stained_glass
execute if score #random Computer matches 1 run setblock 0 255 384 minecraft:deepslate_lapis_ore
