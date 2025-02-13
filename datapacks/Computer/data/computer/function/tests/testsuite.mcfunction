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
# bltu_equal
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_equal_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_equal_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_equal_test
# bltu_forward_backward
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_forward_backward_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_forward_backward_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_forward_backward_test
# lbu
execute as @e[tag=pc,limit=1] run function computer:tests/test/lbu_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/lbu_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/lbu_test
# lhu
execute as @e[tag=pc,limit=1] run function computer:tests/test/lhu_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/lhu_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/lhu_test
# sh
execute as @e[tag=pc,limit=1] run function computer:tests/test/sh_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/sh_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/sh_test
# sh2
execute as @e[tag=pc,limit=1] run function computer:tests/test/sh2_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/sh2_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/sh2_test
# sw
execute as @e[tag=pc,limit=1] run function computer:tests/test/sw_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/sw_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/sw_test
execute if score hasDebugTag tests matches 1 run tag @s add DEBUG
