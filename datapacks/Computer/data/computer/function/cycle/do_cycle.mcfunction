# should be run "as" armor stand PC
scoreboard players add cycle stats 1
function computer:cycle/random/write_32bits_random_to_memory
data modify storage computer:memory type set value "Opcode read"
function computer:cycle/readopcode
function computer:instruction/_dispatcher

execute if score increase_pc Computer matches 0 run tellraw @a[tag=DEBUG] [{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"PC not increased (jump condition)","color": "gold", "bold": false}]
execute if score increase_pc Computer matches 1 run function computer:cycle/increasepc

scoreboard players set increase_pc Computer 1

execute if block -253 255 385 minecraft:oak_planks run execute if block -254 255 385 minecraft:air run execute if block -255 255 385 minecraft:air run execute if block -256 255 385 minecraft:air run function computer:cycle/stdout/flush
