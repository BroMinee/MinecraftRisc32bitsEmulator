# Write the next character from stdin_text to memory at rs1 position
# Uses stdin_index scoreboard to track current position in the string
# Must be run as the write armor stand

# Check if we've reached last position in buffer (index 251 = 252nd byte = last slot for null)
# If so, write null terminator and warn about truncation
execute if score stdin_index Computer matches 251 run scoreboard players set write_0 Computer 0
execute if score stdin_index Computer matches 251 run scoreboard players set write_1 Computer 0
execute if score stdin_index Computer matches 251 run scoreboard players set write_2 Computer 0
execute if score stdin_index Computer matches 251 run scoreboard players set write_3 Computer 0
execute if score stdin_index Computer matches 251 run scoreboard players set write_4 Computer 0
execute if score stdin_index Computer matches 251 run scoreboard players set write_5 Computer 0
execute if score stdin_index Computer matches 251 run scoreboard players set write_6 Computer 0
execute if score stdin_index Computer matches 251 run scoreboard players set write_7 Computer 0
execute if score stdin_index Computer matches 251 run execute at @s run function computer:write/write_8bits
execute if score stdin_index Computer matches 251 run function computer:debug/print_log {"message": '{"text":"[stdin] Warning: input truncated to 251 characters","color":"yellow"}'}
execute if score stdin_index Computer matches 251 run return 0

# Reset stdin_char before extraction (set string does nothing if index is out of bounds)
data modify storage computer:memory stdin_char set value ""

# Extract character at current index using macro
function computer:cycle/stdin/extract_char with storage computer:memory stdin_args

# Check if we got an empty string (end of text) -> write null byte and stop
execute store result score stdin_len Computer run data get storage computer:memory stdin_char
execute if score stdin_len Computer matches 0 run scoreboard players set write_0 Computer 0
execute if score stdin_len Computer matches 0 run scoreboard players set write_1 Computer 0
execute if score stdin_len Computer matches 0 run scoreboard players set write_2 Computer 0
execute if score stdin_len Computer matches 0 run scoreboard players set write_3 Computer 0
execute if score stdin_len Computer matches 0 run scoreboard players set write_4 Computer 0
execute if score stdin_len Computer matches 0 run scoreboard players set write_5 Computer 0
execute if score stdin_len Computer matches 0 run scoreboard players set write_6 Computer 0
execute if score stdin_len Computer matches 0 run scoreboard players set write_7 Computer 0
execute if score stdin_len Computer matches 0 run execute at @s run function computer:write/write_8bits
execute if score stdin_len Computer matches 0 run return 0

function computer:cycle/stdin/char_to_byte

# Write the byte at rs1 position
execute at @s run function computer:write/write_8bits

function computer:misc/copy_rs1_to_input_l_add32
function computer:misc/reset_input_r_32bits
scoreboard players set input_r_0 add32 1

function computer:alu/add_32bits
function computer:misc/copy_input_l_to_rs1_add32

function computer:write/tp_rs1

scoreboard players add stdin_index Computer 1

# Update stdin_args with new indices
execute store result storage computer:memory stdin_args.start int 1 run scoreboard players get stdin_index Computer
scoreboard players add stdin_index Computer 1
execute store result storage computer:memory stdin_args.end int 1 run scoreboard players get stdin_index Computer
scoreboard players remove stdin_index Computer 1

function computer:cycle/stdin/write_next_char
