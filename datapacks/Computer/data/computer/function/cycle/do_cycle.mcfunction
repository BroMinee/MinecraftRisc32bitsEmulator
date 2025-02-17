# should be run "as" armor stand PC
scoreboard players add cycle Computer 1
data modify storage computer:memory type set value "Opcode read"
function computer:cycle/readopcode
function computer:instruction/_dispatcher

execute if score increase_pc Computer matches 0 run tellraw @a[tag=DEBUG] [{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"PC not increased (jump condition)","color": "gold", "bold": false}]
execute if score increase_pc Computer matches 1 run function computer:cycle/increasepc

scoreboard players set increase_pc Computer 1
