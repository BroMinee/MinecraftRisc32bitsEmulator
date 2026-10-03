# Binary long division of mantissas (restoring division)
# Input: fdiv_dividend_0..23 (rs1 mantissa with implicit bit), fdiv_divisor_0..23 (rs2 mantissa with implicit bit)
# Output: fdiv_quot_0..25 (26-bit quotient), remainder in fdiv_rem for sticky
#
# Algorithm:
# 1. Initialize remainder = dividend (24 bits, in 25-bit register)
# 2. For 26 iterations:
#    a. If remainder >= divisor: quotient_bit = 1, remainder -= divisor
#    b. Else: quotient_bit = 0
#    c. Shift remainder left by 1

# Initialize 25-bit remainder = dividend (bit 24 = 0)
scoreboard players operation fdiv_rem_0 Computer = fdiv_dividend_0 Computer
scoreboard players operation fdiv_rem_1 Computer = fdiv_dividend_1 Computer
scoreboard players operation fdiv_rem_2 Computer = fdiv_dividend_2 Computer
scoreboard players operation fdiv_rem_3 Computer = fdiv_dividend_3 Computer
scoreboard players operation fdiv_rem_4 Computer = fdiv_dividend_4 Computer
scoreboard players operation fdiv_rem_5 Computer = fdiv_dividend_5 Computer
scoreboard players operation fdiv_rem_6 Computer = fdiv_dividend_6 Computer
scoreboard players operation fdiv_rem_7 Computer = fdiv_dividend_7 Computer
scoreboard players operation fdiv_rem_8 Computer = fdiv_dividend_8 Computer
scoreboard players operation fdiv_rem_9 Computer = fdiv_dividend_9 Computer
scoreboard players operation fdiv_rem_10 Computer = fdiv_dividend_10 Computer
scoreboard players operation fdiv_rem_11 Computer = fdiv_dividend_11 Computer
scoreboard players operation fdiv_rem_12 Computer = fdiv_dividend_12 Computer
scoreboard players operation fdiv_rem_13 Computer = fdiv_dividend_13 Computer
scoreboard players operation fdiv_rem_14 Computer = fdiv_dividend_14 Computer
scoreboard players operation fdiv_rem_15 Computer = fdiv_dividend_15 Computer
scoreboard players operation fdiv_rem_16 Computer = fdiv_dividend_16 Computer
scoreboard players operation fdiv_rem_17 Computer = fdiv_dividend_17 Computer
scoreboard players operation fdiv_rem_18 Computer = fdiv_dividend_18 Computer
scoreboard players operation fdiv_rem_19 Computer = fdiv_dividend_19 Computer
scoreboard players operation fdiv_rem_20 Computer = fdiv_dividend_20 Computer
scoreboard players operation fdiv_rem_21 Computer = fdiv_dividend_21 Computer
scoreboard players operation fdiv_rem_22 Computer = fdiv_dividend_22 Computer
scoreboard players operation fdiv_rem_23 Computer = fdiv_dividend_23 Computer
scoreboard players set fdiv_rem_24 Computer 0

# Initialize 26-bit quotient to 0
scoreboard players set fdiv_quot_0 Computer 0
scoreboard players set fdiv_quot_1 Computer 0
scoreboard players set fdiv_quot_2 Computer 0
scoreboard players set fdiv_quot_3 Computer 0
scoreboard players set fdiv_quot_4 Computer 0
scoreboard players set fdiv_quot_5 Computer 0
scoreboard players set fdiv_quot_6 Computer 0
scoreboard players set fdiv_quot_7 Computer 0
scoreboard players set fdiv_quot_8 Computer 0
scoreboard players set fdiv_quot_9 Computer 0
scoreboard players set fdiv_quot_10 Computer 0
scoreboard players set fdiv_quot_11 Computer 0
scoreboard players set fdiv_quot_12 Computer 0
scoreboard players set fdiv_quot_13 Computer 0
scoreboard players set fdiv_quot_14 Computer 0
scoreboard players set fdiv_quot_15 Computer 0
scoreboard players set fdiv_quot_16 Computer 0
scoreboard players set fdiv_quot_17 Computer 0
scoreboard players set fdiv_quot_18 Computer 0
scoreboard players set fdiv_quot_19 Computer 0
scoreboard players set fdiv_quot_20 Computer 0
scoreboard players set fdiv_quot_21 Computer 0
scoreboard players set fdiv_quot_22 Computer 0
scoreboard players set fdiv_quot_23 Computer 0
scoreboard players set fdiv_quot_24 Computer 0
scoreboard players set fdiv_quot_25 Computer 0

# Use iteration counter (26 iterations, stored in array for recursion control)
data modify storage computer:memory div set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]

# Track which quotient bit we're writing (starts at 25, decrements to 0)
scoreboard players set fdiv_quot_pos Computer 25

# Start iterating
function computer:alu/fdiv_div_iterate
