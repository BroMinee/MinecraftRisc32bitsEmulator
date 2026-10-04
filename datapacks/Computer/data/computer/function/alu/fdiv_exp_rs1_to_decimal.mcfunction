# Convert rs1 exponent bits (23-30) to decimal value in fdiv_exp_a
# Subnormal: set to 1 (biased exponent for subnormals)
scoreboard players set fdiv_exp_a Computer 0
execute if score rs1_23 Computer matches 1 run scoreboard players add fdiv_exp_a Computer 1
execute if score rs1_24 Computer matches 1 run scoreboard players add fdiv_exp_a Computer 2
execute if score rs1_25 Computer matches 1 run scoreboard players add fdiv_exp_a Computer 4
execute if score rs1_26 Computer matches 1 run scoreboard players add fdiv_exp_a Computer 8
execute if score rs1_27 Computer matches 1 run scoreboard players add fdiv_exp_a Computer 16
execute if score rs1_28 Computer matches 1 run scoreboard players add fdiv_exp_a Computer 32
execute if score rs1_29 Computer matches 1 run scoreboard players add fdiv_exp_a Computer 64
execute if score rs1_30 Computer matches 1 run scoreboard players add fdiv_exp_a Computer 128
execute if score fdiv_rs1_exp_zero Computer matches 1 run scoreboard players set fdiv_exp_a Computer 1
