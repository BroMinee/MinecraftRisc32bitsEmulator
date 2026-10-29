#!jvmtimer end _dispatcher
#!jvmtimer start fsqrt.s
tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running fsqrt.s","color":"gold"}]
tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"Error: Not Yet Implemented fsqrt.s","bold":true,"color":"red"}]
scoreboard players set error stats 1
scoreboard players add found_dispatcher Computer 1

#!jvmtimer end fsqrt.s
