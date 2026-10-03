# 48-bit left shift by 1 of fmul shifted value (fmul_sh_hi + fmul_sh_lo)

# Shift high 24 bits left
scoreboard players operation fmul_sh_hi_23 Computer = fmul_sh_hi_22 Computer
scoreboard players operation fmul_sh_hi_22 Computer = fmul_sh_hi_21 Computer
scoreboard players operation fmul_sh_hi_21 Computer = fmul_sh_hi_20 Computer
scoreboard players operation fmul_sh_hi_20 Computer = fmul_sh_hi_19 Computer
scoreboard players operation fmul_sh_hi_19 Computer = fmul_sh_hi_18 Computer
scoreboard players operation fmul_sh_hi_18 Computer = fmul_sh_hi_17 Computer
scoreboard players operation fmul_sh_hi_17 Computer = fmul_sh_hi_16 Computer
scoreboard players operation fmul_sh_hi_16 Computer = fmul_sh_hi_15 Computer
scoreboard players operation fmul_sh_hi_15 Computer = fmul_sh_hi_14 Computer
scoreboard players operation fmul_sh_hi_14 Computer = fmul_sh_hi_13 Computer
scoreboard players operation fmul_sh_hi_13 Computer = fmul_sh_hi_12 Computer
scoreboard players operation fmul_sh_hi_12 Computer = fmul_sh_hi_11 Computer
scoreboard players operation fmul_sh_hi_11 Computer = fmul_sh_hi_10 Computer
scoreboard players operation fmul_sh_hi_10 Computer = fmul_sh_hi_9 Computer
scoreboard players operation fmul_sh_hi_9 Computer = fmul_sh_hi_8 Computer
scoreboard players operation fmul_sh_hi_8 Computer = fmul_sh_hi_7 Computer
scoreboard players operation fmul_sh_hi_7 Computer = fmul_sh_hi_6 Computer
scoreboard players operation fmul_sh_hi_6 Computer = fmul_sh_hi_5 Computer
scoreboard players operation fmul_sh_hi_5 Computer = fmul_sh_hi_4 Computer
scoreboard players operation fmul_sh_hi_4 Computer = fmul_sh_hi_3 Computer
scoreboard players operation fmul_sh_hi_3 Computer = fmul_sh_hi_2 Computer
scoreboard players operation fmul_sh_hi_2 Computer = fmul_sh_hi_1 Computer
scoreboard players operation fmul_sh_hi_1 Computer = fmul_sh_hi_0 Computer
# Carry from low to high
scoreboard players operation fmul_sh_hi_0 Computer = fmul_sh_lo_23 Computer

# Shift low 24 bits left
scoreboard players operation fmul_sh_lo_23 Computer = fmul_sh_lo_22 Computer
scoreboard players operation fmul_sh_lo_22 Computer = fmul_sh_lo_21 Computer
scoreboard players operation fmul_sh_lo_21 Computer = fmul_sh_lo_20 Computer
scoreboard players operation fmul_sh_lo_20 Computer = fmul_sh_lo_19 Computer
scoreboard players operation fmul_sh_lo_19 Computer = fmul_sh_lo_18 Computer
scoreboard players operation fmul_sh_lo_18 Computer = fmul_sh_lo_17 Computer
scoreboard players operation fmul_sh_lo_17 Computer = fmul_sh_lo_16 Computer
scoreboard players operation fmul_sh_lo_16 Computer = fmul_sh_lo_15 Computer
scoreboard players operation fmul_sh_lo_15 Computer = fmul_sh_lo_14 Computer
scoreboard players operation fmul_sh_lo_14 Computer = fmul_sh_lo_13 Computer
scoreboard players operation fmul_sh_lo_13 Computer = fmul_sh_lo_12 Computer
scoreboard players operation fmul_sh_lo_12 Computer = fmul_sh_lo_11 Computer
scoreboard players operation fmul_sh_lo_11 Computer = fmul_sh_lo_10 Computer
scoreboard players operation fmul_sh_lo_10 Computer = fmul_sh_lo_9 Computer
scoreboard players operation fmul_sh_lo_9 Computer = fmul_sh_lo_8 Computer
scoreboard players operation fmul_sh_lo_8 Computer = fmul_sh_lo_7 Computer
scoreboard players operation fmul_sh_lo_7 Computer = fmul_sh_lo_6 Computer
scoreboard players operation fmul_sh_lo_6 Computer = fmul_sh_lo_5 Computer
scoreboard players operation fmul_sh_lo_5 Computer = fmul_sh_lo_4 Computer
scoreboard players operation fmul_sh_lo_4 Computer = fmul_sh_lo_3 Computer
scoreboard players operation fmul_sh_lo_3 Computer = fmul_sh_lo_2 Computer
scoreboard players operation fmul_sh_lo_2 Computer = fmul_sh_lo_1 Computer
scoreboard players operation fmul_sh_lo_1 Computer = fmul_sh_lo_0 Computer
scoreboard players set fmul_sh_lo_0 Computer 0
