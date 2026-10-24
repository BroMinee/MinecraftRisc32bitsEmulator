# Write to 7-segment display
# Called as @e[tag=7seg] at @s
# rs1 contains the target address, rs2 contains the value
# Display index from bits 2-4 of address (each display is 4 bytes apart)

# Teleport to the correct display's bottom-left corner
# Display 0: addr 0x0FFE_0000, bits 2-4 = 000, X=0
# Display 1: addr 0x0FFE_0004, bits 2-4 = 001, X=4
# Display 2: addr 0x0FFE_0008, bits 2-4 = 010, X=8
# Display 3: addr 0x0FFE_000C, bits 2-4 = 011, X=12
# Display 4: addr 0x0FFE_0010, bits 2-4 = 100, X=16
# Display 5: addr 0x0FFE_0014, bits 2-4 = 101, X=20
# Display 6: addr 0x0FFE_0018, bits 2-4 = 110, X=24
# Display 7: addr 0x0FFE_001C, bits 2-4 = 111, X=28

function computer:debug/print_log {"message": '{"text":"Writing on 7-segment display!","color":"gold"}'}

execute if score rs1_2 Computer matches 0 run execute if score rs1_3 Computer matches 0 run execute if score rs1_4 Computer matches 0 run tp @s 2 34 3
execute if score rs1_2 Computer matches 1 run execute if score rs1_3 Computer matches 0 run execute if score rs1_4 Computer matches 0 run tp @s 6 34 3
execute if score rs1_2 Computer matches 0 run execute if score rs1_3 Computer matches 1 run execute if score rs1_4 Computer matches 0 run tp @s 10 34 3
execute if score rs1_2 Computer matches 1 run execute if score rs1_3 Computer matches 1 run execute if score rs1_4 Computer matches 0 run tp @s 14 34 3
execute if score rs1_2 Computer matches 0 run execute if score rs1_3 Computer matches 0 run execute if score rs1_4 Computer matches 1 run tp @s 18 34 3
execute if score rs1_2 Computer matches 1 run execute if score rs1_3 Computer matches 0 run execute if score rs1_4 Computer matches 1 run tp @s 22 34 3
execute if score rs1_2 Computer matches 0 run execute if score rs1_3 Computer matches 1 run execute if score rs1_4 Computer matches 1 run tp @s 26 34 3
execute if score rs1_2 Computer matches 1 run execute if score rs1_3 Computer matches 1 run execute if score rs1_4 Computer matches 1 run tp @s 30 34 3

function computer:7seg/dispatch
