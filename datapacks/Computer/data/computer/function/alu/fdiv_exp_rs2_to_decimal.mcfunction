# Convert rs2 exponent bits (23-30) to decimal value in fdiv_exp_b
# Subnormal: set to 1 (biased exponent for subnormals)
scoreboard players set fdiv_exp_b Computer 0
execute if score rs2_23 Computer matches 1 run scoreboard players add fdiv_exp_b Computer 1
execute if score rs2_24 Computer matches 1 run scoreboard players add fdiv_exp_b Computer 2
execute if score rs2_25 Computer matches 1 run scoreboard players add fdiv_exp_b Computer 4
execute if score rs2_26 Computer matches 1 run scoreboard players add fdiv_exp_b Computer 8
execute if score rs2_27 Computer matches 1 run scoreboard players add fdiv_exp_b Computer 16
execute if score rs2_28 Computer matches 1 run scoreboard players add fdiv_exp_b Computer 32
execute if score rs2_29 Computer matches 1 run scoreboard players add fdiv_exp_b Computer 64
execute if score rs2_30 Computer matches 1 run scoreboard players add fdiv_exp_b Computer 128
execute if score fdiv_rs2_exp_zero Computer matches 1 run scoreboard players set fdiv_exp_b Computer 1
