# Dispatch digit value from rs2 (bits 0-3) to the correct digit function
# Selector: as @e[tag=7seg], already tp'd to display bottom-right corner

# 0 = 0000
execute if score rs2_3 Computer matches 0 run execute if score rs2_2 Computer matches 0 run execute if score rs2_1 Computer matches 0 run execute if score rs2_0 Computer matches 0 run function computer:7seg/digit_0
# 1 = 0001
execute if score rs2_3 Computer matches 0 run execute if score rs2_2 Computer matches 0 run execute if score rs2_1 Computer matches 0 run execute if score rs2_0 Computer matches 1 run function computer:7seg/digit_1
# 2 = 0010
execute if score rs2_3 Computer matches 0 run execute if score rs2_2 Computer matches 0 run execute if score rs2_1 Computer matches 1 run execute if score rs2_0 Computer matches 0 run function computer:7seg/digit_2
# 3 = 0011
execute if score rs2_3 Computer matches 0 run execute if score rs2_2 Computer matches 0 run execute if score rs2_1 Computer matches 1 run execute if score rs2_0 Computer matches 1 run function computer:7seg/digit_3
# 4 = 0100
execute if score rs2_3 Computer matches 0 run execute if score rs2_2 Computer matches 1 run execute if score rs2_1 Computer matches 0 run execute if score rs2_0 Computer matches 0 run function computer:7seg/digit_4
# 5 = 0101
execute if score rs2_3 Computer matches 0 run execute if score rs2_2 Computer matches 1 run execute if score rs2_1 Computer matches 0 run execute if score rs2_0 Computer matches 1 run function computer:7seg/digit_5
# 6 = 0110
execute if score rs2_3 Computer matches 0 run execute if score rs2_2 Computer matches 1 run execute if score rs2_1 Computer matches 1 run execute if score rs2_0 Computer matches 0 run function computer:7seg/digit_6
# 7 = 0111
execute if score rs2_3 Computer matches 0 run execute if score rs2_2 Computer matches 1 run execute if score rs2_1 Computer matches 1 run execute if score rs2_0 Computer matches 1 run function computer:7seg/digit_7
# 8 = 1000
execute if score rs2_3 Computer matches 1 run execute if score rs2_2 Computer matches 0 run execute if score rs2_1 Computer matches 0 run execute if score rs2_0 Computer matches 0 run function computer:7seg/digit_8
# 9 = 1001
execute if score rs2_3 Computer matches 1 run execute if score rs2_2 Computer matches 0 run execute if score rs2_1 Computer matches 0 run execute if score rs2_0 Computer matches 1 run function computer:7seg/digit_9
