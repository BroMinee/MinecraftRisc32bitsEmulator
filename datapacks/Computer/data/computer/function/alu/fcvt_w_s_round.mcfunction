# RNE rounding for fcvt.w.s / fcvt.wu.s
# Called after fcvt_w_s_shift when shift < 23
# Guard bit = rs1_(22-shift), first discarded mantissa bit

scoreboard players set fcvt_guard Computer 0
scoreboard players set fcvt_round_bit Computer 0
scoreboard players set fcvt_sticky Computer 0

# Extract guard bit: rs1_(22 - shift)
execute if score count Computer matches 0 run scoreboard players operation fcvt_guard Computer = rs1_22 Computer
execute if score count Computer matches 1 run scoreboard players operation fcvt_guard Computer = rs1_21 Computer
execute if score count Computer matches 2 run scoreboard players operation fcvt_guard Computer = rs1_20 Computer
execute if score count Computer matches 3 run scoreboard players operation fcvt_guard Computer = rs1_19 Computer
execute if score count Computer matches 4 run scoreboard players operation fcvt_guard Computer = rs1_18 Computer
execute if score count Computer matches 5 run scoreboard players operation fcvt_guard Computer = rs1_17 Computer
execute if score count Computer matches 6 run scoreboard players operation fcvt_guard Computer = rs1_16 Computer
execute if score count Computer matches 7 run scoreboard players operation fcvt_guard Computer = rs1_15 Computer
execute if score count Computer matches 8 run scoreboard players operation fcvt_guard Computer = rs1_14 Computer
execute if score count Computer matches 9 run scoreboard players operation fcvt_guard Computer = rs1_13 Computer
execute if score count Computer matches 10 run scoreboard players operation fcvt_guard Computer = rs1_12 Computer
execute if score count Computer matches 11 run scoreboard players operation fcvt_guard Computer = rs1_11 Computer
execute if score count Computer matches 12 run scoreboard players operation fcvt_guard Computer = rs1_10 Computer
execute if score count Computer matches 13 run scoreboard players operation fcvt_guard Computer = rs1_9 Computer
execute if score count Computer matches 14 run scoreboard players operation fcvt_guard Computer = rs1_8 Computer
execute if score count Computer matches 15 run scoreboard players operation fcvt_guard Computer = rs1_7 Computer
execute if score count Computer matches 16 run scoreboard players operation fcvt_guard Computer = rs1_6 Computer
execute if score count Computer matches 17 run scoreboard players operation fcvt_guard Computer = rs1_5 Computer
execute if score count Computer matches 18 run scoreboard players operation fcvt_guard Computer = rs1_4 Computer
execute if score count Computer matches 19 run scoreboard players operation fcvt_guard Computer = rs1_3 Computer
execute if score count Computer matches 20 run scoreboard players operation fcvt_guard Computer = rs1_2 Computer
execute if score count Computer matches 21 run scoreboard players operation fcvt_guard Computer = rs1_1 Computer
execute if score count Computer matches 22 run scoreboard players operation fcvt_guard Computer = rs1_0 Computer

# Extract round bit: rs1_(21 - shift), only if 21-shift >= 0 (shift <= 21)
execute if score count Computer matches 0 run scoreboard players operation fcvt_round_bit Computer = rs1_21 Computer
execute if score count Computer matches 1 run scoreboard players operation fcvt_round_bit Computer = rs1_20 Computer
execute if score count Computer matches 2 run scoreboard players operation fcvt_round_bit Computer = rs1_19 Computer
execute if score count Computer matches 3 run scoreboard players operation fcvt_round_bit Computer = rs1_18 Computer
execute if score count Computer matches 4 run scoreboard players operation fcvt_round_bit Computer = rs1_17 Computer
execute if score count Computer matches 5 run scoreboard players operation fcvt_round_bit Computer = rs1_16 Computer
execute if score count Computer matches 6 run scoreboard players operation fcvt_round_bit Computer = rs1_15 Computer
execute if score count Computer matches 7 run scoreboard players operation fcvt_round_bit Computer = rs1_14 Computer
execute if score count Computer matches 8 run scoreboard players operation fcvt_round_bit Computer = rs1_13 Computer
execute if score count Computer matches 9 run scoreboard players operation fcvt_round_bit Computer = rs1_12 Computer
execute if score count Computer matches 10 run scoreboard players operation fcvt_round_bit Computer = rs1_11 Computer
execute if score count Computer matches 11 run scoreboard players operation fcvt_round_bit Computer = rs1_10 Computer
execute if score count Computer matches 12 run scoreboard players operation fcvt_round_bit Computer = rs1_9 Computer
execute if score count Computer matches 13 run scoreboard players operation fcvt_round_bit Computer = rs1_8 Computer
execute if score count Computer matches 14 run scoreboard players operation fcvt_round_bit Computer = rs1_7 Computer
execute if score count Computer matches 15 run scoreboard players operation fcvt_round_bit Computer = rs1_6 Computer
execute if score count Computer matches 16 run scoreboard players operation fcvt_round_bit Computer = rs1_5 Computer
execute if score count Computer matches 17 run scoreboard players operation fcvt_round_bit Computer = rs1_4 Computer
execute if score count Computer matches 18 run scoreboard players operation fcvt_round_bit Computer = rs1_3 Computer
execute if score count Computer matches 19 run scoreboard players operation fcvt_round_bit Computer = rs1_2 Computer
execute if score count Computer matches 20 run scoreboard players operation fcvt_round_bit Computer = rs1_1 Computer
execute if score count Computer matches 21 run scoreboard players operation fcvt_round_bit Computer = rs1_0 Computer

# Sticky = OR of all bits below the round bit position
# Bits rs1_(20-shift) down to rs1_0
# For simplicity, compute sticky by checking each possible bit
execute if score count Computer matches ..20 run execute if score rs1_0 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches ..19 run execute if score rs1_1 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches ..18 run execute if score rs1_2 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches ..17 run execute if score rs1_3 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches ..16 run execute if score rs1_4 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches ..15 run execute if score rs1_5 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches ..14 run execute if score rs1_6 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches ..13 run execute if score rs1_7 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches ..12 run execute if score rs1_8 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches ..11 run execute if score rs1_9 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches ..10 run execute if score rs1_10 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches ..9 run execute if score rs1_11 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches ..8 run execute if score rs1_12 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches ..7 run execute if score rs1_13 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches ..6 run execute if score rs1_14 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches ..5 run execute if score rs1_15 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches ..4 run execute if score rs1_16 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches ..3 run execute if score rs1_17 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches ..2 run execute if score rs1_18 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches ..1 run execute if score rs1_19 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches 0 run execute if score rs1_20 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1

# LSB of the truncated integer result
scoreboard players operation fcvt_lsb Computer = rd_0 Computer

# RNE rounding decision
# round_up if G=1 AND (R=1 OR S=1), or G=1 AND R=0 AND S=0 AND lsb=1 (tie to even)
scoreboard players set fcvt_round_up Computer 0
execute if score fcvt_guard Computer matches 1 run execute if score fcvt_round_bit Computer matches 1 run scoreboard players set fcvt_round_up Computer 1
execute if score fcvt_guard Computer matches 1 run execute if score fcvt_sticky Computer matches 1 run scoreboard players set fcvt_round_up Computer 1
execute if score fcvt_guard Computer matches 1 run execute if score fcvt_round_bit Computer matches 0 run execute if score fcvt_sticky Computer matches 0 run execute if score fcvt_lsb Computer matches 1 run scoreboard players set fcvt_round_up Computer 1

# If round_up, increment rd by 1
execute if score fcvt_round_up Computer matches 1 run function computer:alu/fcvt_w_s_round_up_rd
