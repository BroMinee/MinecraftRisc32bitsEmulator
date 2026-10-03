# 24x24 bit binary multiplication of mantissas
# Input: rs1 mantissa bits 0-22 + implicit bit (fmul_a), rs2 mantissa bits 0-22 + implicit bit (fmul_b)
# Output: 48-bit product in fmul_prod_0..47
#
# fmul_a (multiplicand) = rs1 mantissa with implicit 1 at bit 23 (for normals)
# fmul_b (multiplier) = rs2 mantissa with implicit 1 at bit 23 (for normals)
# Uses shift-and-add: for each bit of fmul_b, if 1, add shifted fmul_a to accumulator

# Store fmul_b bits into array (MSB first, pop from end = LSB first)
data modify storage computer:memory mul set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
execute store result storage computer:memory mul[0] int 1 run scoreboard players get fmul_b_23 Computer
execute store result storage computer:memory mul[1] int 1 run scoreboard players get fmul_b_22 Computer
execute store result storage computer:memory mul[2] int 1 run scoreboard players get fmul_b_21 Computer
execute store result storage computer:memory mul[3] int 1 run scoreboard players get fmul_b_20 Computer
execute store result storage computer:memory mul[4] int 1 run scoreboard players get fmul_b_19 Computer
execute store result storage computer:memory mul[5] int 1 run scoreboard players get fmul_b_18 Computer
execute store result storage computer:memory mul[6] int 1 run scoreboard players get fmul_b_17 Computer
execute store result storage computer:memory mul[7] int 1 run scoreboard players get fmul_b_16 Computer
execute store result storage computer:memory mul[8] int 1 run scoreboard players get fmul_b_15 Computer
execute store result storage computer:memory mul[9] int 1 run scoreboard players get fmul_b_14 Computer
execute store result storage computer:memory mul[10] int 1 run scoreboard players get fmul_b_13 Computer
execute store result storage computer:memory mul[11] int 1 run scoreboard players get fmul_b_12 Computer
execute store result storage computer:memory mul[12] int 1 run scoreboard players get fmul_b_11 Computer
execute store result storage computer:memory mul[13] int 1 run scoreboard players get fmul_b_10 Computer
execute store result storage computer:memory mul[14] int 1 run scoreboard players get fmul_b_9 Computer
execute store result storage computer:memory mul[15] int 1 run scoreboard players get fmul_b_8 Computer
execute store result storage computer:memory mul[16] int 1 run scoreboard players get fmul_b_7 Computer
execute store result storage computer:memory mul[17] int 1 run scoreboard players get fmul_b_6 Computer
execute store result storage computer:memory mul[18] int 1 run scoreboard players get fmul_b_5 Computer
execute store result storage computer:memory mul[19] int 1 run scoreboard players get fmul_b_4 Computer
execute store result storage computer:memory mul[20] int 1 run scoreboard players get fmul_b_3 Computer
execute store result storage computer:memory mul[21] int 1 run scoreboard players get fmul_b_2 Computer
execute store result storage computer:memory mul[22] int 1 run scoreboard players get fmul_b_1 Computer
execute store result storage computer:memory mul[23] int 1 run scoreboard players get fmul_b_0 Computer

# Initialize shifted multiplicand (fmul_a) into fmul_sh_lo (low 24 bits), fmul_sh_hi = 0
scoreboard players operation fmul_sh_lo_0 Computer = fmul_a_0 Computer
scoreboard players operation fmul_sh_lo_1 Computer = fmul_a_1 Computer
scoreboard players operation fmul_sh_lo_2 Computer = fmul_a_2 Computer
scoreboard players operation fmul_sh_lo_3 Computer = fmul_a_3 Computer
scoreboard players operation fmul_sh_lo_4 Computer = fmul_a_4 Computer
scoreboard players operation fmul_sh_lo_5 Computer = fmul_a_5 Computer
scoreboard players operation fmul_sh_lo_6 Computer = fmul_a_6 Computer
scoreboard players operation fmul_sh_lo_7 Computer = fmul_a_7 Computer
scoreboard players operation fmul_sh_lo_8 Computer = fmul_a_8 Computer
scoreboard players operation fmul_sh_lo_9 Computer = fmul_a_9 Computer
scoreboard players operation fmul_sh_lo_10 Computer = fmul_a_10 Computer
scoreboard players operation fmul_sh_lo_11 Computer = fmul_a_11 Computer
scoreboard players operation fmul_sh_lo_12 Computer = fmul_a_12 Computer
scoreboard players operation fmul_sh_lo_13 Computer = fmul_a_13 Computer
scoreboard players operation fmul_sh_lo_14 Computer = fmul_a_14 Computer
scoreboard players operation fmul_sh_lo_15 Computer = fmul_a_15 Computer
scoreboard players operation fmul_sh_lo_16 Computer = fmul_a_16 Computer
scoreboard players operation fmul_sh_lo_17 Computer = fmul_a_17 Computer
scoreboard players operation fmul_sh_lo_18 Computer = fmul_a_18 Computer
scoreboard players operation fmul_sh_lo_19 Computer = fmul_a_19 Computer
scoreboard players operation fmul_sh_lo_20 Computer = fmul_a_20 Computer
scoreboard players operation fmul_sh_lo_21 Computer = fmul_a_21 Computer
scoreboard players operation fmul_sh_lo_22 Computer = fmul_a_22 Computer
scoreboard players operation fmul_sh_lo_23 Computer = fmul_a_23 Computer
scoreboard players set fmul_sh_hi_0 Computer 0
scoreboard players set fmul_sh_hi_1 Computer 0
scoreboard players set fmul_sh_hi_2 Computer 0
scoreboard players set fmul_sh_hi_3 Computer 0
scoreboard players set fmul_sh_hi_4 Computer 0
scoreboard players set fmul_sh_hi_5 Computer 0
scoreboard players set fmul_sh_hi_6 Computer 0
scoreboard players set fmul_sh_hi_7 Computer 0
scoreboard players set fmul_sh_hi_8 Computer 0
scoreboard players set fmul_sh_hi_9 Computer 0
scoreboard players set fmul_sh_hi_10 Computer 0
scoreboard players set fmul_sh_hi_11 Computer 0
scoreboard players set fmul_sh_hi_12 Computer 0
scoreboard players set fmul_sh_hi_13 Computer 0
scoreboard players set fmul_sh_hi_14 Computer 0
scoreboard players set fmul_sh_hi_15 Computer 0
scoreboard players set fmul_sh_hi_16 Computer 0
scoreboard players set fmul_sh_hi_17 Computer 0
scoreboard players set fmul_sh_hi_18 Computer 0
scoreboard players set fmul_sh_hi_19 Computer 0
scoreboard players set fmul_sh_hi_20 Computer 0
scoreboard players set fmul_sh_hi_21 Computer 0
scoreboard players set fmul_sh_hi_22 Computer 0
scoreboard players set fmul_sh_hi_23 Computer 0

# Initialize 48-bit accumulator (fmul_prod_0..47) to 0
scoreboard players set fmul_prod_0 Computer 0
scoreboard players set fmul_prod_1 Computer 0
scoreboard players set fmul_prod_2 Computer 0
scoreboard players set fmul_prod_3 Computer 0
scoreboard players set fmul_prod_4 Computer 0
scoreboard players set fmul_prod_5 Computer 0
scoreboard players set fmul_prod_6 Computer 0
scoreboard players set fmul_prod_7 Computer 0
scoreboard players set fmul_prod_8 Computer 0
scoreboard players set fmul_prod_9 Computer 0
scoreboard players set fmul_prod_10 Computer 0
scoreboard players set fmul_prod_11 Computer 0
scoreboard players set fmul_prod_12 Computer 0
scoreboard players set fmul_prod_13 Computer 0
scoreboard players set fmul_prod_14 Computer 0
scoreboard players set fmul_prod_15 Computer 0
scoreboard players set fmul_prod_16 Computer 0
scoreboard players set fmul_prod_17 Computer 0
scoreboard players set fmul_prod_18 Computer 0
scoreboard players set fmul_prod_19 Computer 0
scoreboard players set fmul_prod_20 Computer 0
scoreboard players set fmul_prod_21 Computer 0
scoreboard players set fmul_prod_22 Computer 0
scoreboard players set fmul_prod_23 Computer 0
scoreboard players set fmul_prod_24 Computer 0
scoreboard players set fmul_prod_25 Computer 0
scoreboard players set fmul_prod_26 Computer 0
scoreboard players set fmul_prod_27 Computer 0
scoreboard players set fmul_prod_28 Computer 0
scoreboard players set fmul_prod_29 Computer 0
scoreboard players set fmul_prod_30 Computer 0
scoreboard players set fmul_prod_31 Computer 0
scoreboard players set fmul_prod_32 Computer 0
scoreboard players set fmul_prod_33 Computer 0
scoreboard players set fmul_prod_34 Computer 0
scoreboard players set fmul_prod_35 Computer 0
scoreboard players set fmul_prod_36 Computer 0
scoreboard players set fmul_prod_37 Computer 0
scoreboard players set fmul_prod_38 Computer 0
scoreboard players set fmul_prod_39 Computer 0
scoreboard players set fmul_prod_40 Computer 0
scoreboard players set fmul_prod_41 Computer 0
scoreboard players set fmul_prod_42 Computer 0
scoreboard players set fmul_prod_43 Computer 0
scoreboard players set fmul_prod_44 Computer 0
scoreboard players set fmul_prod_45 Computer 0
scoreboard players set fmul_prod_46 Computer 0
scoreboard players set fmul_prod_47 Computer 0

# Iterate through all 24 bits
execute if data storage computer:memory mul[-1] run function computer:alu/fmul_mul_iterate
