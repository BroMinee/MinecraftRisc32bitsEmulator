execute as @s[tag=DEBUG] run scoreboard players set hasDebugTag tests 1
tag @s remove DEBUG
# addi
execute as @e[tag=pc,limit=1] run function computer:tests/test/addi_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/addi_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/addi_test
# addi_all_reg
execute as @e[tag=pc,limit=1] run function computer:tests/test/addi_all_reg_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/addi_all_reg_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/addi_all_reg_test
# addi_neg
execute as @e[tag=pc,limit=1] run function computer:tests/test/addi_neg_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/addi_neg_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/addi_neg_test
execute if score hasDebugTag tests matches 1 run tag @s add DEBUG
