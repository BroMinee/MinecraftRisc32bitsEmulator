# Extract lowest nibble from computer:debug val
# Outputs: hex_char, bit0-bit3 in computer:debug
# Advances val to next nibble (val = floor_div(val, 16))

# nibble_idx = positive_mod(val, 16) -> 0..15
data modify storage computer:debug nibble_idx set compute default integer computer:debug/positive_mod_16

# Convert nibble to hex char
function computer:debug/nibble_to_hex

# Extract 4 bits from nibble_idx using mod/div 2
# nibble is 0-15 so mod/div are safe (positive)
data modify storage computer:debug nibble set from storage computer:debug nibble_idx

# bit0
data modify storage computer:debug bit0 set compute default integer computer:debug/positive_mod_2
data modify storage computer:debug nibble set compute default integer computer:debug/floor_div_2
# bit1
data modify storage computer:debug bit1 set compute default integer computer:debug/positive_mod_2
data modify storage computer:debug nibble set compute default integer computer:debug/floor_div_2
# bit2
data modify storage computer:debug bit2 set compute default integer computer:debug/positive_mod_2
data modify storage computer:debug nibble set compute default integer computer:debug/floor_div_2
# bit3 = remaining value
data modify storage computer:debug bit3 set from storage computer:debug nibble

# Advance val to next nibble
data modify storage computer:debug val set compute default integer computer:debug/floor_div_16