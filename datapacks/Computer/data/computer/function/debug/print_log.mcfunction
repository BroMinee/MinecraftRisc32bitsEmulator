execute if score debug stats matches 0 run return 0
execute if score running tests matches 1 run return 0

$tellraw @a [{"text":"[LOG] - ","bold":true,"color":"blue"},$(message)]
