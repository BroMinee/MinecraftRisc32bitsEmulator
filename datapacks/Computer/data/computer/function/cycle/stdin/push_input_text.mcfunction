$data modify storage computer:memory stdin_text set value '$(text)'

# Initialize index counter
scoreboard players set _stdin_index alu 0
data modify storage computer:memory stdin_args set value {start: 0, end: 1}

# Start address = 0x0FFE0604 = 268305924
data modify storage computer:cpu _mem_addr set value 268305924

function computer:cycle/stdin/write_next_char

# Display what was received
tellraw @a [{"text":"[stdin] - ","bold":true,"color":"green"},{"nbt":"stdin_text","storage":"computer:memory","color":"white"}]

# Reset stdin control (0x0FFE0600 = 268305920) to 0
data modify storage computer:cpu _mem_addr set value 268305920
data modify storage computer:alu a set value 0
function computer:memory/write_word
