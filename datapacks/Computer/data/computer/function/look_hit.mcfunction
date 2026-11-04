# Called as the text_display entity that was hit by the raycast
# Write px/py from entity custom data to MMIO cursor registers
# 0x0FFE_0108 = 268304648 (CURSOR_X), 0x0FFE_010C = 268304652 (CURSOR_Y)
data modify storage computer:ram_268304648 value set from entity @s data.px
data modify storage computer:ram_268304652 value set from entity @s data.py
