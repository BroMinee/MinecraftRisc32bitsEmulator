# should be run "as" armor stand PC

# Stdin check
execute if block 3 255 385 minecraft:oak_planks run execute if block 2 255 385 minecraft:air run execute if block 1 255 385 minecraft:air run execute if block 0 255 385 minecraft:air run function computer:cycle/stdin/show_dialog with storage computer:memory
# Very important line, since the dialog popup takes a few ticks to show, and the CPU will continue to run the next instructions
execute if block 3 255 385 minecraft:oak_planks run execute if block 2 255 385 minecraft:air run execute if block 1 255 385 minecraft:air run execute if block 0 255 385 minecraft:air run return 0

scoreboard players add cycle stats 1
function computer:cycle/random/write_32bits_random_to_memory
function computer:cycle/input/write_keys_to_memory
data modify storage computer:memory type set value "Opcode read"
function computer:cycle/readopcode
function computer:instruction/_dispatcher

execute if score increase_pc Computer matches 0 run tellraw @a[tag=DEBUG] [{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"PC not increased (jump condition)","color": "gold", "bold": false}]
execute if score increase_pc Computer matches 1 run function computer:cycle/increasepc

scoreboard players set increase_pc Computer 1

# Stdout check
execute if block -253 255 385 minecraft:oak_planks run execute if block -254 255 385 minecraft:air run execute if block -255 255 385 minecraft:air run execute if block -256 255 385 minecraft:air run function computer:cycle/stdout/flush
