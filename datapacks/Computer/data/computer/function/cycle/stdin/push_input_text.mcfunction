$data modify storage computer:memory stdin_text set value '$(text)'

# Initialize index counter
scoreboard players set stdin_index Computer 0
data modify storage computer:memory stdin_args set value {start: 0, end: 1}

# Set rs1 to buffer start address (0x0FFE0604)
scoreboard players set rs1_0 Computer 0
scoreboard players set rs1_1 Computer 0
scoreboard players set rs1_2 Computer 1
scoreboard players set rs1_3 Computer 0
scoreboard players set rs1_4 Computer 0
scoreboard players set rs1_5 Computer 0
scoreboard players set rs1_6 Computer 0
scoreboard players set rs1_7 Computer 0
scoreboard players set rs1_8 Computer 0
scoreboard players set rs1_9 Computer 1
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

# Teleport write entity to buffer start and write characters
execute as @e[limit=1,type=armor_stand,tag=write] run function computer:write/tp_rs1
execute as @e[limit=1,type=armor_stand,tag=write] run function computer:cycle/stdin/write_next_char

# Display what was received
function computer:debug/print_log {"message": '{"text":"[stdin] ","bold":true,"color":"green"},{"nbt":"stdin_text","storage":"computer:memory","color":"white"}'}

# Reset stdin control to 0
setblock 3 255 385 minecraft:air
setblock 2 255 385 minecraft:air
setblock 1 255 385 minecraft:air
setblock 0 255 385 minecraft:air
