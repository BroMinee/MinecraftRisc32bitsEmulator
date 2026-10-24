gamerule max_block_modifications 2147483647
gamerule max_command_sequence_length 2147483647

scoreboard objectives remove stats
# Volontary excluded 'tests' because it's used for the testsuite
# scoreboard objectives remove tests

data remove storage computer:memory hexa
data remove storage computer:memory bin
data remove storage computer:memory mul
data modify storage computer:memory stdout_text set value ""
data modify storage computer:memory stdin_template set value '$(stdin_input)'


scoreboard objectives add Computer dummy
scoreboard objectives add stats dummy
scoreboard objectives add tests dummy


scoreboard objectives setdisplay sidebar Computer


scoreboard players set cycle stats 0
scoreboard players set read stats 0
scoreboard players set write stats 0
scoreboard players set error stats 0
scoreboard players set done stats 0

# Reset stdin control (0x0FFE_0600) to 0 = no stdin pending
setblock 3 255 385 minecraft:air
setblock 2 255 385 minecraft:air
setblock 1 255 385 minecraft:air
setblock 0 255 385 minecraft:air

# Reset stdout control (0x0FFE_0500) to 0 = no stdout pending
setblock -253 255 385 minecraft:air
setblock -254 255 385 minecraft:air
setblock -255 255 385 minecraft:air
setblock -256 255 385 minecraft:air

function computer:screen/init_screen
function computer:reset_scoreboard
