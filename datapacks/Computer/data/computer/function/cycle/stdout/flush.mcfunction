# Flush stdout buffer to chat

data modify storage computer:memory stdout_text set value ""

# Start address = 0x0FFE0504 = 268305668
data modify storage computer:cpu _mem_addr set value 268305668

function computer:cycle/stdout/read_next_char

tellraw @a [{"text":"[stdout] - ","bold":true,"color":"blue"},{"nbt":"stdout_text","storage":"computer:memory","color":"white"}]
