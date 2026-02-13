tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running fmul.s","color":"gold"}]
tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"Error: Not Yet Implemented fmul.s","bold":true,"color":"red"}]
scoreboard players set error stats 1
scoreboard players add found_dispatcher Computer 1
