# RNE rounding for fcvt.s.w when lead >= 24
# Guard bit, round bit, sticky bit depend on lead position (count)
# guard = rs1[lead-24], round = rs1[lead-25] (0 if doesn't exist), sticky = OR of rs1[lead-26..0]

scoreboard players set fcvt_guard Computer 0
scoreboard players set fcvt_round Computer 0
scoreboard players set fcvt_sticky Computer 0

# lead=24: guard=rs1[0], round=0, sticky=0
execute if score count Computer matches 24 run scoreboard players operation fcvt_guard Computer = rs1_0 Computer

# lead=25: guard=rs1[1], round=rs1[0], sticky=0
execute if score count Computer matches 25 run scoreboard players operation fcvt_guard Computer = rs1_1 Computer
execute if score count Computer matches 25 run scoreboard players operation fcvt_round Computer = rs1_0 Computer

# lead=26: guard=rs1[2], round=rs1[1], sticky=rs1[0]
execute if score count Computer matches 26 run scoreboard players operation fcvt_guard Computer = rs1_2 Computer
execute if score count Computer matches 26 run scoreboard players operation fcvt_round Computer = rs1_1 Computer
execute if score count Computer matches 26 run scoreboard players operation fcvt_sticky Computer = rs1_0 Computer

# lead=27: guard=rs1[3], round=rs1[2], sticky=rs1[1]|rs1[0]
execute if score count Computer matches 27 run scoreboard players operation fcvt_guard Computer = rs1_3 Computer
execute if score count Computer matches 27 run scoreboard players operation fcvt_round Computer = rs1_2 Computer
execute if score count Computer matches 27 run execute if score rs1_1 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches 27 run execute if score rs1_0 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1

# lead=28: guard=rs1[4], round=rs1[3], sticky=rs1[2]|..|rs1[0]
execute if score count Computer matches 28 run scoreboard players operation fcvt_guard Computer = rs1_4 Computer
execute if score count Computer matches 28 run scoreboard players operation fcvt_round Computer = rs1_3 Computer
execute if score count Computer matches 28 run execute if score rs1_2 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches 28 run execute if score rs1_1 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches 28 run execute if score rs1_0 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1

# lead=29: guard=rs1[5], round=rs1[4], sticky=rs1[3]|..|rs1[0]
execute if score count Computer matches 29 run scoreboard players operation fcvt_guard Computer = rs1_5 Computer
execute if score count Computer matches 29 run scoreboard players operation fcvt_round Computer = rs1_4 Computer
execute if score count Computer matches 29 run execute if score rs1_3 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches 29 run execute if score rs1_2 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches 29 run execute if score rs1_1 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches 29 run execute if score rs1_0 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1

# lead=30: guard=rs1[6], round=rs1[5], sticky=rs1[4]|..|rs1[0]
execute if score count Computer matches 30 run scoreboard players operation fcvt_guard Computer = rs1_6 Computer
execute if score count Computer matches 30 run scoreboard players operation fcvt_round Computer = rs1_5 Computer
execute if score count Computer matches 30 run execute if score rs1_4 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches 30 run execute if score rs1_3 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches 30 run execute if score rs1_2 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches 30 run execute if score rs1_1 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches 30 run execute if score rs1_0 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1

# lead=31: guard=rs1[7], round=rs1[6], sticky=rs1[5]|..|rs1[0]
execute if score count Computer matches 31 run scoreboard players operation fcvt_guard Computer = rs1_7 Computer
execute if score count Computer matches 31 run scoreboard players operation fcvt_round Computer = rs1_6 Computer
execute if score count Computer matches 31 run execute if score rs1_5 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches 31 run execute if score rs1_4 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches 31 run execute if score rs1_3 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches 31 run execute if score rs1_2 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches 31 run execute if score rs1_1 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1
execute if score count Computer matches 31 run execute if score rs1_0 Computer matches 1 run scoreboard players set fcvt_sticky Computer 1

# RNE: round up if guard=1 AND (round=1 OR sticky=1), OR guard=1 AND round=0 AND sticky=0 AND mantissa_lsb=1 (tie to even)
# mantissa_lsb = rs1[count-23] (the bit that becomes rd_0 after right shift)
scoreboard players set fcvt_do_round Computer 0
execute if score fcvt_guard Computer matches 1 run execute if score fcvt_round Computer matches 1 run scoreboard players set fcvt_do_round Computer 1
execute if score fcvt_guard Computer matches 1 run execute if score fcvt_sticky Computer matches 1 run scoreboard players set fcvt_do_round Computer 1
execute if score fcvt_guard Computer matches 1 run execute if score fcvt_round Computer matches 0 run execute if score fcvt_sticky Computer matches 0 run execute if score count Computer matches 24 run execute if score rs1_1 Computer matches 1 run scoreboard players set fcvt_do_round Computer 1
execute if score fcvt_guard Computer matches 1 run execute if score fcvt_round Computer matches 0 run execute if score fcvt_sticky Computer matches 0 run execute if score count Computer matches 25 run execute if score rs1_2 Computer matches 1 run scoreboard players set fcvt_do_round Computer 1
execute if score fcvt_guard Computer matches 1 run execute if score fcvt_round Computer matches 0 run execute if score fcvt_sticky Computer matches 0 run execute if score count Computer matches 26 run execute if score rs1_3 Computer matches 1 run scoreboard players set fcvt_do_round Computer 1
execute if score fcvt_guard Computer matches 1 run execute if score fcvt_round Computer matches 0 run execute if score fcvt_sticky Computer matches 0 run execute if score count Computer matches 27 run execute if score rs1_4 Computer matches 1 run scoreboard players set fcvt_do_round Computer 1
execute if score fcvt_guard Computer matches 1 run execute if score fcvt_round Computer matches 0 run execute if score fcvt_sticky Computer matches 0 run execute if score count Computer matches 28 run execute if score rs1_5 Computer matches 1 run scoreboard players set fcvt_do_round Computer 1
execute if score fcvt_guard Computer matches 1 run execute if score fcvt_round Computer matches 0 run execute if score fcvt_sticky Computer matches 0 run execute if score count Computer matches 29 run execute if score rs1_6 Computer matches 1 run scoreboard players set fcvt_do_round Computer 1
execute if score fcvt_guard Computer matches 1 run execute if score fcvt_round Computer matches 0 run execute if score fcvt_sticky Computer matches 0 run execute if score count Computer matches 30 run execute if score rs1_7 Computer matches 1 run scoreboard players set fcvt_do_round Computer 1
execute if score fcvt_guard Computer matches 1 run execute if score fcvt_round Computer matches 0 run execute if score fcvt_sticky Computer matches 0 run execute if score count Computer matches 31 run execute if score rs1_8 Computer matches 1 run scoreboard players set fcvt_do_round Computer 1
