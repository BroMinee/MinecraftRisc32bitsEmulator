# load
function computer:program/fibo_assembly_47/fibo_assembly_47_load
# run
execute as @e[tag=pc, limit=1] run function computer:program/fibo_assembly_47/fibo_assembly_47_run_until_end
# end
execute if score error Computer matches 1 run tellraw @a [{"text":"Error: ","color":"red","bold":true},{"text":"Program has been stopped","color":"red"}]
execute if score done Computer matches 1 run tellraw @a [{"text":""},{"text":"---","obfuscated":true,"color":"green"},{"text":" Program has been completed ","bold":true,"underlined":true,"color":"green"},{"text":"---","obfuscated":true,"color":"green"}]
function computer:debug/register/pre_debug_rd_x6
