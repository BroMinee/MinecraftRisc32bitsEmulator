# Flush stdout buffer to chat

data modify storage computer:memory stdout set value []
data modify storage computer:memory stdout_text set value ""

# Set rs1 to buffer start address (0x0FFE0504)
scoreboard players set rs1_0 Computer 0
scoreboard players set rs1_1 Computer 0
scoreboard players set rs1_2 Computer 1
scoreboard players set rs1_3 Computer 0
scoreboard players set rs1_4 Computer 0
scoreboard players set rs1_5 Computer 0
scoreboard players set rs1_6 Computer 0
scoreboard players set rs1_7 Computer 0
scoreboard players set rs1_8 Computer 1
scoreboard players set rs1_9 Computer 0
scoreboard players set rs1_10 Computer 1
scoreboard players set rs1_11 Computer 0
scoreboard players set rs1_12 Computer 0
scoreboard players set rs1_13 Computer 0
scoreboard players set rs1_14 Computer 0
scoreboard players set rs1_15 Computer 0
scoreboard players set rs1_16 Computer 0
scoreboard players set rs1_17 Computer 1
scoreboard players set rs1_18 Computer 1
scoreboard players set rs1_19 Computer 1
scoreboard players set rs1_20 Computer 1
scoreboard players set rs1_21 Computer 1
scoreboard players set rs1_22 Computer 1
scoreboard players set rs1_23 Computer 1
scoreboard players set rs1_24 Computer 1
scoreboard players set rs1_25 Computer 1
scoreboard players set rs1_26 Computer 1
scoreboard players set rs1_27 Computer 1
scoreboard players set rs1_28 Computer 0
scoreboard players set rs1_29 Computer 0
scoreboard players set rs1_30 Computer 0
scoreboard players set rs1_31 Computer 0

execute as @e[limit=1,type=armor_stand,tag=write] run function computer:cycle/stdout/read_next_char

tellraw @a [{"text":"[stdout] ","bold":true,"color":"blue"},{"nbt":"stdout","storage":"computer:memory","interpret":true, "color":"white"}]

# technially only -253 255 385 need to be reset by design, but who cases about 3 setblock optimization when everything else is a huge bottleneck
setblock -253 255 385 minecraft:air
setblock -254 255 385 minecraft:air
setblock -255 255 385 minecraft:air
setblock -256 255 385 minecraft:air