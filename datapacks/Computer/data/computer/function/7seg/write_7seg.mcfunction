# Write to 7-segment display
# Input: computer:cpu _mem_word_addr (address), _mem_val (digit value 0-9)
# Display 0: addr 268304384 (0x0FFE0000), X=2
# Display 1: addr 268304388 (0x0FFE0004), X=6
# Display 2: addr 268304392 (0x0FFE0008), X=10
# Display 3: addr 268304396 (0x0FFE000C), X=14
# Display 4: addr 268304400 (0x0FFE0010), X=18
# Display 5: addr 268304404 (0x0FFE0014), X=22
# Display 6: addr 268304408 (0x0FFE0018), X=26
# Display 7: addr 268304412 (0x0FFE001C), X=30

# Position to the correct display base corner
execute if data storage computer:cpu {_mem_word_addr: 268304384} run return run execute positioned 2 34 3 run function computer:7seg/dispatch
execute if data storage computer:cpu {_mem_word_addr: 268304388} run return run execute positioned 6 34 3 run function computer:7seg/dispatch
execute if data storage computer:cpu {_mem_word_addr: 268304392} run return run execute positioned 10 34 3 run function computer:7seg/dispatch
execute if data storage computer:cpu {_mem_word_addr: 268304396} run return run execute positioned 14 34 3 run function computer:7seg/dispatch
execute if data storage computer:cpu {_mem_word_addr: 268304400} run return run execute positioned 18 34 3 run function computer:7seg/dispatch
execute if data storage computer:cpu {_mem_word_addr: 268304404} run return run execute positioned 22 34 3 run function computer:7seg/dispatch
execute if data storage computer:cpu {_mem_word_addr: 268304408} run return run execute positioned 26 34 3 run function computer:7seg/dispatch
execute if data storage computer:cpu {_mem_word_addr: 268304412} run return run execute positioned 30 34 3 run function computer:7seg/dispatch
