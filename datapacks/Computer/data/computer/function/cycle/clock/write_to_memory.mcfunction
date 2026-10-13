# Convert 'cycle stats' scoreboard to 32-bit blocks at 0x0FFE0300
# Coordinates: (256,255,384) to (259,255,384)
# Called when a read targets address 0x0FFE_0300

# Copy cycle value to a temp scoreboard for bit extraction
scoreboard players operation #clock_tmp Computer = cycle stats

# Extract bits 0-7
scoreboard players operation write_0 Computer = #clock_tmp Computer
scoreboard players operation write_0 Computer %= 2 FixedValue
scoreboard players operation #clock_tmp Computer /= 2 FixedValue

scoreboard players operation write_1 Computer = #clock_tmp Computer
scoreboard players operation write_1 Computer %= 2 FixedValue
scoreboard players operation #clock_tmp Computer /= 2 FixedValue

scoreboard players operation write_2 Computer = #clock_tmp Computer
scoreboard players operation write_2 Computer %= 2 FixedValue
scoreboard players operation #clock_tmp Computer /= 2 FixedValue

scoreboard players operation write_3 Computer = #clock_tmp Computer
scoreboard players operation write_3 Computer %= 2 FixedValue
scoreboard players operation #clock_tmp Computer /= 2 FixedValue

scoreboard players operation write_4 Computer = #clock_tmp Computer
scoreboard players operation write_4 Computer %= 2 FixedValue
scoreboard players operation #clock_tmp Computer /= 2 FixedValue

scoreboard players operation write_5 Computer = #clock_tmp Computer
scoreboard players operation write_5 Computer %= 2 FixedValue
scoreboard players operation #clock_tmp Computer /= 2 FixedValue

scoreboard players operation write_6 Computer = #clock_tmp Computer
scoreboard players operation write_6 Computer %= 2 FixedValue
scoreboard players operation #clock_tmp Computer /= 2 FixedValue

scoreboard players operation write_7 Computer = #clock_tmp Computer
scoreboard players operation write_7 Computer %= 2 FixedValue
scoreboard players operation #clock_tmp Computer /= 2 FixedValue

execute positioned 259 255 384 run function computer:write/write_8bits

# Extract bits 8-15
scoreboard players operation write_0 Computer = #clock_tmp Computer
scoreboard players operation write_0 Computer %= 2 FixedValue
scoreboard players operation #clock_tmp Computer /= 2 FixedValue

scoreboard players operation write_1 Computer = #clock_tmp Computer
scoreboard players operation write_1 Computer %= 2 FixedValue
scoreboard players operation #clock_tmp Computer /= 2 FixedValue

scoreboard players operation write_2 Computer = #clock_tmp Computer
scoreboard players operation write_2 Computer %= 2 FixedValue
scoreboard players operation #clock_tmp Computer /= 2 FixedValue

scoreboard players operation write_3 Computer = #clock_tmp Computer
scoreboard players operation write_3 Computer %= 2 FixedValue
scoreboard players operation #clock_tmp Computer /= 2 FixedValue

scoreboard players operation write_4 Computer = #clock_tmp Computer
scoreboard players operation write_4 Computer %= 2 FixedValue
scoreboard players operation #clock_tmp Computer /= 2 FixedValue

scoreboard players operation write_5 Computer = #clock_tmp Computer
scoreboard players operation write_5 Computer %= 2 FixedValue
scoreboard players operation #clock_tmp Computer /= 2 FixedValue

scoreboard players operation write_6 Computer = #clock_tmp Computer
scoreboard players operation write_6 Computer %= 2 FixedValue
scoreboard players operation #clock_tmp Computer /= 2 FixedValue

scoreboard players operation write_7 Computer = #clock_tmp Computer
scoreboard players operation write_7 Computer %= 2 FixedValue
scoreboard players operation #clock_tmp Computer /= 2 FixedValue

execute positioned 258 255 384 run function computer:write/write_8bits

# Extract bits 16-23
scoreboard players operation write_0 Computer = #clock_tmp Computer
scoreboard players operation write_0 Computer %= 2 FixedValue
scoreboard players operation #clock_tmp Computer /= 2 FixedValue

scoreboard players operation write_1 Computer = #clock_tmp Computer
scoreboard players operation write_1 Computer %= 2 FixedValue
scoreboard players operation #clock_tmp Computer /= 2 FixedValue

scoreboard players operation write_2 Computer = #clock_tmp Computer
scoreboard players operation write_2 Computer %= 2 FixedValue
scoreboard players operation #clock_tmp Computer /= 2 FixedValue

scoreboard players operation write_3 Computer = #clock_tmp Computer
scoreboard players operation write_3 Computer %= 2 FixedValue
scoreboard players operation #clock_tmp Computer /= 2 FixedValue

scoreboard players operation write_4 Computer = #clock_tmp Computer
scoreboard players operation write_4 Computer %= 2 FixedValue
scoreboard players operation #clock_tmp Computer /= 2 FixedValue

scoreboard players operation write_5 Computer = #clock_tmp Computer
scoreboard players operation write_5 Computer %= 2 FixedValue
scoreboard players operation #clock_tmp Computer /= 2 FixedValue

scoreboard players operation write_6 Computer = #clock_tmp Computer
scoreboard players operation write_6 Computer %= 2 FixedValue
scoreboard players operation #clock_tmp Computer /= 2 FixedValue

scoreboard players operation write_7 Computer = #clock_tmp Computer
scoreboard players operation write_7 Computer %= 2 FixedValue
scoreboard players operation #clock_tmp Computer /= 2 FixedValue

execute positioned 257 255 384 run function computer:write/write_8bits

# Extract bits 24-31
scoreboard players operation write_0 Computer = #clock_tmp Computer
scoreboard players operation write_0 Computer %= 2 FixedValue
scoreboard players operation #clock_tmp Computer /= 2 FixedValue

scoreboard players operation write_1 Computer = #clock_tmp Computer
scoreboard players operation write_1 Computer %= 2 FixedValue
scoreboard players operation #clock_tmp Computer /= 2 FixedValue

scoreboard players operation write_2 Computer = #clock_tmp Computer
scoreboard players operation write_2 Computer %= 2 FixedValue
scoreboard players operation #clock_tmp Computer /= 2 FixedValue

scoreboard players operation write_3 Computer = #clock_tmp Computer
scoreboard players operation write_3 Computer %= 2 FixedValue
scoreboard players operation #clock_tmp Computer /= 2 FixedValue

scoreboard players operation write_4 Computer = #clock_tmp Computer
scoreboard players operation write_4 Computer %= 2 FixedValue
scoreboard players operation #clock_tmp Computer /= 2 FixedValue

scoreboard players operation write_5 Computer = #clock_tmp Computer
scoreboard players operation write_5 Computer %= 2 FixedValue
scoreboard players operation #clock_tmp Computer /= 2 FixedValue

scoreboard players operation write_6 Computer = #clock_tmp Computer
scoreboard players operation write_6 Computer %= 2 FixedValue
scoreboard players operation #clock_tmp Computer /= 2 FixedValue

scoreboard players operation write_7 Computer = #clock_tmp Computer
scoreboard players operation write_7 Computer %= 2 FixedValue

execute positioned 256 255 384 run function computer:write/write_8bits
