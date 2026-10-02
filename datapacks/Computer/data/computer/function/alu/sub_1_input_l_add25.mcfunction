# input input_l_[0-24] add25
# output input_l_[0-24] add25
# Subtracts 1 from the 25-bit value in input_l
# Decrement: for each bit from LSB, if bit=1 set to 0 and stop; if bit=0 set to 1 and continue

scoreboard players set fsub_borrow Computer 1

scoreboard players operation fsub_bit Computer = input_l_0 add25
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set input_l_0 add25 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set fsub_borrow Computer 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 0 run scoreboard players set input_l_0 add25 1

scoreboard players operation fsub_bit Computer = input_l_1 add25
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set input_l_1 add25 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set fsub_borrow Computer 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 0 run scoreboard players set input_l_1 add25 1

scoreboard players operation fsub_bit Computer = input_l_2 add25
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set input_l_2 add25 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set fsub_borrow Computer 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 0 run scoreboard players set input_l_2 add25 1

scoreboard players operation fsub_bit Computer = input_l_3 add25
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set input_l_3 add25 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set fsub_borrow Computer 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 0 run scoreboard players set input_l_3 add25 1

scoreboard players operation fsub_bit Computer = input_l_4 add25
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set input_l_4 add25 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set fsub_borrow Computer 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 0 run scoreboard players set input_l_4 add25 1

scoreboard players operation fsub_bit Computer = input_l_5 add25
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set input_l_5 add25 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set fsub_borrow Computer 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 0 run scoreboard players set input_l_5 add25 1

scoreboard players operation fsub_bit Computer = input_l_6 add25
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set input_l_6 add25 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set fsub_borrow Computer 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 0 run scoreboard players set input_l_6 add25 1

scoreboard players operation fsub_bit Computer = input_l_7 add25
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set input_l_7 add25 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set fsub_borrow Computer 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 0 run scoreboard players set input_l_7 add25 1

scoreboard players operation fsub_bit Computer = input_l_8 add25
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set input_l_8 add25 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set fsub_borrow Computer 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 0 run scoreboard players set input_l_8 add25 1

scoreboard players operation fsub_bit Computer = input_l_9 add25
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set input_l_9 add25 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set fsub_borrow Computer 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 0 run scoreboard players set input_l_9 add25 1

scoreboard players operation fsub_bit Computer = input_l_10 add25
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set input_l_10 add25 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set fsub_borrow Computer 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 0 run scoreboard players set input_l_10 add25 1

scoreboard players operation fsub_bit Computer = input_l_11 add25
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set input_l_11 add25 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set fsub_borrow Computer 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 0 run scoreboard players set input_l_11 add25 1

scoreboard players operation fsub_bit Computer = input_l_12 add25
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set input_l_12 add25 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set fsub_borrow Computer 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 0 run scoreboard players set input_l_12 add25 1

scoreboard players operation fsub_bit Computer = input_l_13 add25
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set input_l_13 add25 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set fsub_borrow Computer 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 0 run scoreboard players set input_l_13 add25 1

scoreboard players operation fsub_bit Computer = input_l_14 add25
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set input_l_14 add25 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set fsub_borrow Computer 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 0 run scoreboard players set input_l_14 add25 1

scoreboard players operation fsub_bit Computer = input_l_15 add25
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set input_l_15 add25 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set fsub_borrow Computer 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 0 run scoreboard players set input_l_15 add25 1

scoreboard players operation fsub_bit Computer = input_l_16 add25
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set input_l_16 add25 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set fsub_borrow Computer 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 0 run scoreboard players set input_l_16 add25 1

scoreboard players operation fsub_bit Computer = input_l_17 add25
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set input_l_17 add25 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set fsub_borrow Computer 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 0 run scoreboard players set input_l_17 add25 1

scoreboard players operation fsub_bit Computer = input_l_18 add25
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set input_l_18 add25 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set fsub_borrow Computer 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 0 run scoreboard players set input_l_18 add25 1

scoreboard players operation fsub_bit Computer = input_l_19 add25
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set input_l_19 add25 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set fsub_borrow Computer 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 0 run scoreboard players set input_l_19 add25 1

scoreboard players operation fsub_bit Computer = input_l_20 add25
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set input_l_20 add25 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set fsub_borrow Computer 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 0 run scoreboard players set input_l_20 add25 1

scoreboard players operation fsub_bit Computer = input_l_21 add25
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set input_l_21 add25 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set fsub_borrow Computer 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 0 run scoreboard players set input_l_21 add25 1

scoreboard players operation fsub_bit Computer = input_l_22 add25
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set input_l_22 add25 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set fsub_borrow Computer 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 0 run scoreboard players set input_l_22 add25 1

scoreboard players operation fsub_bit Computer = input_l_23 add25
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set input_l_23 add25 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set fsub_borrow Computer 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 0 run scoreboard players set input_l_23 add25 1

scoreboard players operation fsub_bit Computer = input_l_24 add25
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set input_l_24 add25 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 1 run scoreboard players set fsub_borrow Computer 0
execute if score fsub_borrow Computer matches 1 run execute if score fsub_bit Computer matches 0 run scoreboard players set input_l_24 add25 1
