# Convert int32 in computer:debug val to bin[0..31] and hexa[0..7]
# All computation via number providers + NBT storage (no scoreboard)

# Save original value (val gets mutated during nibble extraction)
data modify storage computer:debug original_val set from storage computer:debug val

data modify storage computer:debug bin set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
data modify storage computer:debug hexa set value ["","","","","","","",""]

# Nibble 0 (bits 0-3)
function computer:debug/extract_nibble
data modify storage computer:debug hexa[0] set from storage computer:debug hex_char
data modify storage computer:debug bin[0] set from storage computer:debug bit0
data modify storage computer:debug bin[1] set from storage computer:debug bit1
data modify storage computer:debug bin[2] set from storage computer:debug bit2
data modify storage computer:debug bin[3] set from storage computer:debug bit3

# Nibble 1 (bits 4-7)
function computer:debug/extract_nibble
data modify storage computer:debug hexa[1] set from storage computer:debug hex_char
data modify storage computer:debug bin[4] set from storage computer:debug bit0
data modify storage computer:debug bin[5] set from storage computer:debug bit1
data modify storage computer:debug bin[6] set from storage computer:debug bit2
data modify storage computer:debug bin[7] set from storage computer:debug bit3

# Nibble 2 (bits 8-11)
function computer:debug/extract_nibble
data modify storage computer:debug hexa[2] set from storage computer:debug hex_char
data modify storage computer:debug bin[8] set from storage computer:debug bit0
data modify storage computer:debug bin[9] set from storage computer:debug bit1
data modify storage computer:debug bin[10] set from storage computer:debug bit2
data modify storage computer:debug bin[11] set from storage computer:debug bit3

# Nibble 3 (bits 12-15)
function computer:debug/extract_nibble
data modify storage computer:debug hexa[3] set from storage computer:debug hex_char
data modify storage computer:debug bin[12] set from storage computer:debug bit0
data modify storage computer:debug bin[13] set from storage computer:debug bit1
data modify storage computer:debug bin[14] set from storage computer:debug bit2
data modify storage computer:debug bin[15] set from storage computer:debug bit3

# Nibble 4 (bits 16-19)
function computer:debug/extract_nibble
data modify storage computer:debug hexa[4] set from storage computer:debug hex_char
data modify storage computer:debug bin[16] set from storage computer:debug bit0
data modify storage computer:debug bin[17] set from storage computer:debug bit1
data modify storage computer:debug bin[18] set from storage computer:debug bit2
data modify storage computer:debug bin[19] set from storage computer:debug bit3

# Nibble 5 (bits 20-23)
function computer:debug/extract_nibble
data modify storage computer:debug hexa[5] set from storage computer:debug hex_char
data modify storage computer:debug bin[20] set from storage computer:debug bit0
data modify storage computer:debug bin[21] set from storage computer:debug bit1
data modify storage computer:debug bin[22] set from storage computer:debug bit2
data modify storage computer:debug bin[23] set from storage computer:debug bit3

# Nibble 6 (bits 24-27)
function computer:debug/extract_nibble
data modify storage computer:debug hexa[6] set from storage computer:debug hex_char
data modify storage computer:debug bin[24] set from storage computer:debug bit0
data modify storage computer:debug bin[25] set from storage computer:debug bit1
data modify storage computer:debug bin[26] set from storage computer:debug bit2
data modify storage computer:debug bin[27] set from storage computer:debug bit3

# Nibble 7 (bits 28-31)
function computer:debug/extract_nibble
data modify storage computer:debug hexa[7] set from storage computer:debug hex_char
data modify storage computer:debug bin[28] set from storage computer:debug bit0
data modify storage computer:debug bin[29] set from storage computer:debug bit1
data modify storage computer:debug bin[30] set from storage computer:debug bit2
data modify storage computer:debug bin[31] set from storage computer:debug bit3