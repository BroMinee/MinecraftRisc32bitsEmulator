$tellraw @a [{"text":"[ERROR] - ","bold":true,"color":"red"},$(message)]
function computer:debug/print_state
scoreboard players set error stats 1