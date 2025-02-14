execute as @s[tag=DEBUG] run scoreboard players set hasDebugTag tests 1
tag @s remove DEBUG
# add
execute as @e[tag=pc,limit=1] run function computer:tests/test/add_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/add_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/add_test
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
# beq_equal_negatif
execute as @e[tag=pc,limit=1] run function computer:tests/test/beq_equal_negatif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/beq_equal_negatif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/beq_equal_negatif_test
# beq_equal_positif
execute as @e[tag=pc,limit=1] run function computer:tests/test/beq_equal_positif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/beq_equal_positif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/beq_equal_positif_test
# beq_forward_backward
execute as @e[tag=pc,limit=1] run function computer:tests/test/beq_forward_backward_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/beq_forward_backward_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/beq_forward_backward_test
# beq_greater_negatif_negatif
execute as @e[tag=pc,limit=1] run function computer:tests/test/beq_greater_negatif_negatif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/beq_greater_negatif_negatif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/beq_greater_negatif_negatif_test
# beq_greater_negatif_positif
execute as @e[tag=pc,limit=1] run function computer:tests/test/beq_greater_negatif_positif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/beq_greater_negatif_positif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/beq_greater_negatif_positif_test
# beq_greater_positif_negatif
execute as @e[tag=pc,limit=1] run function computer:tests/test/beq_greater_positif_negatif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/beq_greater_positif_negatif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/beq_greater_positif_negatif_test
# beq_greater_positif_positif
execute as @e[tag=pc,limit=1] run function computer:tests/test/beq_greater_positif_positif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/beq_greater_positif_positif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/beq_greater_positif_positif_test
# beq_lower_negatif_negatif
execute as @e[tag=pc,limit=1] run function computer:tests/test/beq_lower_negatif_negatif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/beq_lower_negatif_negatif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/beq_lower_negatif_negatif_test
# beq_lower_negatif_positif
execute as @e[tag=pc,limit=1] run function computer:tests/test/beq_lower_negatif_positif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/beq_lower_negatif_positif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/beq_lower_negatif_positif_test
# beq_lower_positif_negatif
execute as @e[tag=pc,limit=1] run function computer:tests/test/beq_lower_positif_negatif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/beq_lower_positif_negatif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/beq_lower_positif_negatif_test
# beq_lower_positif_positif
execute as @e[tag=pc,limit=1] run function computer:tests/test/beq_lower_positif_positif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/beq_lower_positif_positif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/beq_lower_positif_positif_test
# bgeu_equal_negatif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bgeu_equal_negatif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bgeu_equal_negatif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bgeu_equal_negatif_test
# bgeu_equal_positif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bgeu_equal_positif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bgeu_equal_positif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bgeu_equal_positif_test
# bgeu_forward_backward
execute as @e[tag=pc,limit=1] run function computer:tests/test/bgeu_forward_backward_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bgeu_forward_backward_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bgeu_forward_backward_test
# bgeu_greater_negatif_negatif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bgeu_greater_negatif_negatif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bgeu_greater_negatif_negatif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bgeu_greater_negatif_negatif_test
# bgeu_greater_negatif_positif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bgeu_greater_negatif_positif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bgeu_greater_negatif_positif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bgeu_greater_negatif_positif_test
# bgeu_greater_positif_negatif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bgeu_greater_positif_negatif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bgeu_greater_positif_negatif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bgeu_greater_positif_negatif_test
# bgeu_greater_positif_positif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bgeu_greater_positif_positif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bgeu_greater_positif_positif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bgeu_greater_positif_positif_test
# bgeu_lower_negatif_negatif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bgeu_lower_negatif_negatif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bgeu_lower_negatif_negatif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bgeu_lower_negatif_negatif_test
# bgeu_lower_negatif_positif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bgeu_lower_negatif_positif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bgeu_lower_negatif_positif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bgeu_lower_negatif_positif_test
# bgeu_lower_positif_negatif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bgeu_lower_positif_negatif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bgeu_lower_positif_negatif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bgeu_lower_positif_negatif_test
# bgeu_lower_positif_positif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bgeu_lower_positif_positif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bgeu_lower_positif_positif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bgeu_lower_positif_positif_test
# bge_equal_negatif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bge_equal_negatif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bge_equal_negatif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bge_equal_negatif_test
# bge_equal_positif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bge_equal_positif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bge_equal_positif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bge_equal_positif_test
# bge_forward_backward
execute as @e[tag=pc,limit=1] run function computer:tests/test/bge_forward_backward_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bge_forward_backward_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bge_forward_backward_test
# bge_greater_negatif_negatif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bge_greater_negatif_negatif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bge_greater_negatif_negatif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bge_greater_negatif_negatif_test
# bge_greater_negatif_positif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bge_greater_negatif_positif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bge_greater_negatif_positif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bge_greater_negatif_positif_test
# bge_greater_positif_negatif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bge_greater_positif_negatif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bge_greater_positif_negatif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bge_greater_positif_negatif_test
# bge_greater_positif_positif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bge_greater_positif_positif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bge_greater_positif_positif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bge_greater_positif_positif_test
# bge_lower_negatif_negatif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bge_lower_negatif_negatif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bge_lower_negatif_negatif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bge_lower_negatif_negatif_test
# bge_lower_negatif_positif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bge_lower_negatif_positif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bge_lower_negatif_positif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bge_lower_negatif_positif_test
# bge_lower_positif_negatif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bge_lower_positif_negatif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bge_lower_positif_negatif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bge_lower_positif_negatif_test
# bge_lower_positif_positif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bge_lower_positif_positif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bge_lower_positif_positif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bge_lower_positif_positif_test
# bltu_equal_negatif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_equal_negatif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_equal_negatif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_equal_negatif_test
# bltu_equal_positif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_equal_positif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_equal_positif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_equal_positif_test
# bltu_forward_backward
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_forward_backward_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_forward_backward_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_forward_backward_test
# bltu_greater_negatif_negatif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_greater_negatif_negatif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_greater_negatif_negatif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_greater_negatif_negatif_test
# bltu_greater_negatif_positif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_greater_negatif_positif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_greater_negatif_positif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_greater_negatif_positif_test
# bltu_greater_positif_negatif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_greater_positif_negatif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_greater_positif_negatif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_greater_positif_negatif_test
# bltu_greater_positif_positif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_greater_positif_positif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_greater_positif_positif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_greater_positif_positif_test
# bltu_lower_negatif_negatif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_lower_negatif_negatif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_lower_negatif_negatif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_lower_negatif_negatif_test
# bltu_lower_negatif_positif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_lower_negatif_positif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_lower_negatif_positif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_lower_negatif_positif_test
# bltu_lower_positif_negatif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_lower_positif_negatif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_lower_positif_negatif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_lower_positif_negatif_test
# bltu_lower_positif_positif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_lower_positif_positif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_lower_positif_positif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bltu_lower_positif_positif_test
# blt_equal_negatif
execute as @e[tag=pc,limit=1] run function computer:tests/test/blt_equal_negatif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/blt_equal_negatif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/blt_equal_negatif_test
# blt_equal_positif
execute as @e[tag=pc,limit=1] run function computer:tests/test/blt_equal_positif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/blt_equal_positif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/blt_equal_positif_test
# blt_forward_backward
execute as @e[tag=pc,limit=1] run function computer:tests/test/blt_forward_backward_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/blt_forward_backward_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/blt_forward_backward_test
# blt_greater_negatif_negatif
execute as @e[tag=pc,limit=1] run function computer:tests/test/blt_greater_negatif_negatif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/blt_greater_negatif_negatif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/blt_greater_negatif_negatif_test
# blt_greater_negatif_positif
execute as @e[tag=pc,limit=1] run function computer:tests/test/blt_greater_negatif_positif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/blt_greater_negatif_positif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/blt_greater_negatif_positif_test
# blt_greater_positif_negatif
execute as @e[tag=pc,limit=1] run function computer:tests/test/blt_greater_positif_negatif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/blt_greater_positif_negatif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/blt_greater_positif_negatif_test
# blt_greater_positif_positif
execute as @e[tag=pc,limit=1] run function computer:tests/test/blt_greater_positif_positif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/blt_greater_positif_positif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/blt_greater_positif_positif_test
# blt_lower_negatif_negatif
execute as @e[tag=pc,limit=1] run function computer:tests/test/blt_lower_negatif_negatif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/blt_lower_negatif_negatif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/blt_lower_negatif_negatif_test
# blt_lower_negatif_positif
execute as @e[tag=pc,limit=1] run function computer:tests/test/blt_lower_negatif_positif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/blt_lower_negatif_positif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/blt_lower_negatif_positif_test
# blt_lower_positif_negatif
execute as @e[tag=pc,limit=1] run function computer:tests/test/blt_lower_positif_negatif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/blt_lower_positif_negatif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/blt_lower_positif_negatif_test
# blt_lower_positif_positif
execute as @e[tag=pc,limit=1] run function computer:tests/test/blt_lower_positif_positif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/blt_lower_positif_positif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/blt_lower_positif_positif_test
# bne_equal_negatif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bne_equal_negatif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bne_equal_negatif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bne_equal_negatif_test
# bne_equal_positif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bne_equal_positif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bne_equal_positif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bne_equal_positif_test
# bne_forward_backward
execute as @e[tag=pc,limit=1] run function computer:tests/test/bne_forward_backward_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bne_forward_backward_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bne_forward_backward_test
# bne_greater_negatif_negatif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bne_greater_negatif_negatif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bne_greater_negatif_negatif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bne_greater_negatif_negatif_test
# bne_greater_negatif_positif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bne_greater_negatif_positif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bne_greater_negatif_positif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bne_greater_negatif_positif_test
# bne_greater_positif_negatif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bne_greater_positif_negatif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bne_greater_positif_negatif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bne_greater_positif_negatif_test
# bne_greater_positif_positif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bne_greater_positif_positif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bne_greater_positif_positif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bne_greater_positif_positif_test
# bne_lower_negatif_negatif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bne_lower_negatif_negatif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bne_lower_negatif_negatif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bne_lower_negatif_negatif_test
# bne_lower_negatif_positif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bne_lower_negatif_positif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bne_lower_negatif_positif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bne_lower_negatif_positif_test
# bne_lower_positif_negatif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bne_lower_positif_negatif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bne_lower_positif_negatif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bne_lower_positif_negatif_test
# bne_lower_positif_positif
execute as @e[tag=pc,limit=1] run function computer:tests/test/bne_lower_positif_positif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/bne_lower_positif_positif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/bne_lower_positif_positif_test
# jal
execute as @e[tag=pc,limit=1] run function computer:tests/test/jal_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/jal_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/jal_test
# jalr
execute as @e[tag=pc,limit=1] run function computer:tests/test/jalr_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/jalr_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/jalr_test
# lbu
execute as @e[tag=pc,limit=1] run function computer:tests/test/lbu_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/lbu_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/lbu_test
# lbu_offset
execute as @e[tag=pc,limit=1] run function computer:tests/test/lbu_offset_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/lbu_offset_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/lbu_offset_test
# lb_negatif
execute as @e[tag=pc,limit=1] run function computer:tests/test/lb_negatif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/lb_negatif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/lb_negatif_test
# lb_offset
execute as @e[tag=pc,limit=1] run function computer:tests/test/lb_offset_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/lb_offset_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/lb_offset_test
# lb_positif
execute as @e[tag=pc,limit=1] run function computer:tests/test/lb_positif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/lb_positif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/lb_positif_test
# lhu
execute as @e[tag=pc,limit=1] run function computer:tests/test/lhu_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/lhu_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/lhu_test
# lhu_offset
execute as @e[tag=pc,limit=1] run function computer:tests/test/lhu_offset_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/lhu_offset_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/lhu_offset_test
# lh_negative
execute as @e[tag=pc,limit=1] run function computer:tests/test/lh_negative_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/lh_negative_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/lh_negative_test
# lh_offset
execute as @e[tag=pc,limit=1] run function computer:tests/test/lh_offset_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/lh_offset_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/lh_offset_test
# lh_positive
execute as @e[tag=pc,limit=1] run function computer:tests/test/lh_positive_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/lh_positive_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/lh_positive_test
# lui
execute as @e[tag=pc,limit=1] run function computer:tests/test/lui_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/lui_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/lui_test
# lw
execute as @e[tag=pc,limit=1] run function computer:tests/test/lw_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/lw_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/lw_test
# lw_offset
execute as @e[tag=pc,limit=1] run function computer:tests/test/lw_offset_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/lw_offset_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/lw_offset_test
# mv
execute as @e[tag=pc,limit=1] run function computer:tests/test/mv_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/mv_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/mv_test
# nop
execute as @e[tag=pc,limit=1] run function computer:tests/test/nop_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/nop_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/nop_test
# sh
execute as @e[tag=pc,limit=1] run function computer:tests/test/sh_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/sh_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/sh_test
# sh2
execute as @e[tag=pc,limit=1] run function computer:tests/test/sh2_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/sh2_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/sh2_test
# sll
execute as @e[tag=pc,limit=1] run function computer:tests/test/sll_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/sll_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/sll_test
# slli
execute as @e[tag=pc,limit=1] run function computer:tests/test/slli_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/slli_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/slli_test
# slli_0
execute as @e[tag=pc,limit=1] run function computer:tests/test/slli_0_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/slli_0_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/slli_0_test
# sll_0
execute as @e[tag=pc,limit=1] run function computer:tests/test/sll_0_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/sll_0_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/sll_0_test
# sra
execute as @e[tag=pc,limit=1] run function computer:tests/test/sra_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/sra_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/sra_test
# srai_0
execute as @e[tag=pc,limit=1] run function computer:tests/test/srai_0_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/srai_0_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/srai_0_test
# srai_negatif
execute as @e[tag=pc,limit=1] run function computer:tests/test/srai_negatif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/srai_negatif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/srai_negatif_test
# srai_positif
execute as @e[tag=pc,limit=1] run function computer:tests/test/srai_positif_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/srai_positif_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/srai_positif_test
# sra_0
execute as @e[tag=pc,limit=1] run function computer:tests/test/sra_0_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/sra_0_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/sra_0_test
# srli
execute as @e[tag=pc,limit=1] run function computer:tests/test/srli_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/srli_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/srli_test
# srli_0
execute as @e[tag=pc,limit=1] run function computer:tests/test/srli_0_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/srli_0_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/srli_0_test
# srl_0
execute as @e[tag=pc,limit=1] run function computer:tests/test/srl_0_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/srl_0_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/srl_0_test
# sw
execute as @e[tag=pc,limit=1] run function computer:tests/test/sw_load
execute as @e[tag=pc,limit=1] run function computer:tests/test/sw_run
execute as @e[tag=pc,limit=1] run function computer:tests/test/sw_test
execute if score hasDebugTag tests matches 1 run tag @s add DEBUG
