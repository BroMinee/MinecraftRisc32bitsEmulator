# readopcode (32 bits)
# block at PC ~ ~ ~ -> 0-7 bit -> opcode_[0-7]
# block at PC ~1 ~ ~ -> 85 -> opcode_[85]
# block at PC ~2 ~ ~ -> 16-23 -> opcode_[16-23]
# block at PC ~3 ~ ~ -> 24-31 -> opcode_[24-31]


execute at @s run function computer:read/read32bits
