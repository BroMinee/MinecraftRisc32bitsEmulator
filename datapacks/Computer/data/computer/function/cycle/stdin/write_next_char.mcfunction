# Write the next character from stdin_text to RAM
# Input: computer:cpu _mem_addr, _stdin_index scoreboard, stdin_args

# Check if we've reached max buffer (251 chars + null)
execute if score _stdin_index alu matches 251 run data modify storage computer:alu a set value 0
execute if score _stdin_index alu matches 251 run function computer:memory/write_byte
execute if score _stdin_index alu matches 251 run tellraw @a {"text":"[stdin] Warning: input truncated to 251 characters","color":"yellow"}

execute if score _stdin_index alu matches 251 run return 0

# Reset stdin_char before extraction (set string does nothing if index is out of bounds)
data modify storage computer:memory stdin_char set value ""

# Extract character at current index using macro
function computer:cycle/stdin/extract_char with storage computer:memory stdin_args

# Check if we got an empty string (end of text) -> write null byte and stop
execute store result score _len alu run data get storage computer:memory stdin_char
execute if score _len alu matches 0 run data modify storage computer:alu a set value 0
execute if score _len alu matches 0 run function computer:memory/write_byte
execute if score _len alu matches 0 run return 0

function computer:cycle/stdin/char_to_byte

# Write byte to RAM at _mem_addr
data modify storage computer:alu a set from storage computer:memory stdin_byte
function computer:memory/write_byte

# _mem_addr += 1
data modify storage computer:alu a set from storage computer:cpu _mem_addr
data modify storage computer:alu b set value 1
function computer:alu/int/add
data modify storage computer:cpu _mem_addr set from storage computer:alu result

# Update stdin_args with new indices
scoreboard players add _stdin_index alu 1
execute store result storage computer:memory stdin_args.start int 1 run scoreboard players get _stdin_index alu
scoreboard players add _stdin_index alu 1
execute store result storage computer:memory stdin_args.end int 1 run scoreboard players get _stdin_index alu
scoreboard players remove _stdin_index alu 1

function computer:cycle/stdin/write_next_char
