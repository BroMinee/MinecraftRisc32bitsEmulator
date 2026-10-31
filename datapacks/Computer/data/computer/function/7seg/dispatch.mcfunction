# Dispatch digit value to the correct digit function
# Input: _mem_val (digit value 0-9)

# 0 = 0000
execute if data storage computer:cpu {_mem_val: 0} run function computer:7seg/digit_0
# 1 = 0001
execute if data storage computer:cpu {_mem_val: 1} run function computer:7seg/digit_1
# 2 = 0010
execute if data storage computer:cpu {_mem_val: 2} run function computer:7seg/digit_2
# 3 = 0011
execute if data storage computer:cpu {_mem_val: 3} run function computer:7seg/digit_3
# 4 = 0100
execute if data storage computer:cpu {_mem_val: 4} run function computer:7seg/digit_4
# 5 = 0101
execute if data storage computer:cpu {_mem_val: 5} run function computer:7seg/digit_5
# 6 = 0110
execute if data storage computer:cpu {_mem_val: 6} run function computer:7seg/digit_6
# 7 = 0111
execute if data storage computer:cpu {_mem_val: 7} run function computer:7seg/digit_7
# 8 = 1000
execute if data storage computer:cpu {_mem_val: 8} run function computer:7seg/digit_8
# 9 = 1001
execute if data storage computer:cpu {_mem_val: 9} run function computer:7seg/digit_9
