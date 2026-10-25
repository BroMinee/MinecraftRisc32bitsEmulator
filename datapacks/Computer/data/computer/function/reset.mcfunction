gamerule max_block_modifications 2147483647
gamerule max_command_sequence_length 2147483647

scoreboard objectives remove stats
scoreboard objectives remove alu
# Volontary excluded 'tests' because it's used for the testsuite
# scoreboard objectives remove tests

data modify storage computer:memory stdout_text set value ""
data modify storage computer:memory stdin_template set value '$(stdin_input)'


scoreboard objectives add stats dummy
scoreboard objectives add alu dummy
scoreboard objectives add tests dummy


scoreboard objectives setdisplay sidebar stats


scoreboard players set cycle stats 0
scoreboard players set read stats 0
scoreboard players set write stats 0
scoreboard players set error stats 0
scoreboard players set done stats 0

# Reset stdin control (0x0FFE_0600 = 268370432) to 0 = no stdin pending
data modify storage computer:ram_268370432 value set value 0

# Reset stdout control (0x0FFE_0500 = 268370176) to 0 = no stdout pending
data modify storage computer:ram_268370176 value set value 0

data modify storage computer:alu stack set value []

data modify storage computer:cpu pc set value 0
data modify storage computer:cpu increase_pc set value 1

data modify storage computer:cpu x0 set value 0
data modify storage computer:cpu x1 set value 0
data modify storage computer:cpu x2 set value 0
data modify storage computer:cpu x3 set value 0
data modify storage computer:cpu x4 set value 0
data modify storage computer:cpu x5 set value 0
data modify storage computer:cpu x6 set value 0
data modify storage computer:cpu x7 set value 0
data modify storage computer:cpu x8 set value 0
data modify storage computer:cpu x9 set value 0
data modify storage computer:cpu x10 set value 0
data modify storage computer:cpu x11 set value 0
data modify storage computer:cpu x12 set value 0
data modify storage computer:cpu x13 set value 0
data modify storage computer:cpu x14 set value 0
data modify storage computer:cpu x15 set value 0
data modify storage computer:cpu x16 set value 0
data modify storage computer:cpu x17 set value 0
data modify storage computer:cpu x18 set value 0
data modify storage computer:cpu x19 set value 0
data modify storage computer:cpu x20 set value 0
data modify storage computer:cpu x21 set value 0
data modify storage computer:cpu x22 set value 0
data modify storage computer:cpu x23 set value 0
data modify storage computer:cpu x24 set value 0
data modify storage computer:cpu x25 set value 0
data modify storage computer:cpu x26 set value 0
data modify storage computer:cpu x27 set value 0
data modify storage computer:cpu x28 set value 0
data modify storage computer:cpu x29 set value 0
data modify storage computer:cpu x30 set value 0
data modify storage computer:cpu x31 set value 0

data modify storage computer:cpu f0 set value 0
data modify storage computer:cpu f1 set value 0
data modify storage computer:cpu f2 set value 0
data modify storage computer:cpu f3 set value 0
data modify storage computer:cpu f4 set value 0
data modify storage computer:cpu f5 set value 0
data modify storage computer:cpu f6 set value 0
data modify storage computer:cpu f7 set value 0
data modify storage computer:cpu f8 set value 0
data modify storage computer:cpu f9 set value 0
data modify storage computer:cpu f10 set value 0
data modify storage computer:cpu f11 set value 0
data modify storage computer:cpu f12 set value 0
data modify storage computer:cpu f13 set value 0
data modify storage computer:cpu f14 set value 0
data modify storage computer:cpu f15 set value 0
data modify storage computer:cpu f16 set value 0
data modify storage computer:cpu f17 set value 0
data modify storage computer:cpu f18 set value 0
data modify storage computer:cpu f19 set value 0
data modify storage computer:cpu f20 set value 0
data modify storage computer:cpu f21 set value 0
data modify storage computer:cpu f22 set value 0
data modify storage computer:cpu f23 set value 0
data modify storage computer:cpu f24 set value 0
data modify storage computer:cpu f25 set value 0
data modify storage computer:cpu f26 set value 0
data modify storage computer:cpu f27 set value 0
data modify storage computer:cpu f28 set value 0
data modify storage computer:cpu f29 set value 0
data modify storage computer:cpu f30 set value 0
data modify storage computer:cpu f31 set value 0

function computer:screen/init_screen
