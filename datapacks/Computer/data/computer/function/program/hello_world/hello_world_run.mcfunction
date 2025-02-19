# load
function computer:program/hello_world/hello_world_load

# run
execute as @e[tag=pc, limit=1] run function computer:program/hello_world/hello_world_run_until_end

# end
execute if score error Computer matches 1 run tellraw @a [{"text":"Error: ","color":"red","bold":true},{"text":"Program has been stopped","color":"red"}]
execute if score done Computer matches 1 run tellraw @a [{"text":""},{"text":"---","obfuscated":true,"color":"green"},{"text":" Program has been completed ","bold":true,"underlined":true,"color":"green"},{"text":"---","obfuscated":true,"color":"green"}]
