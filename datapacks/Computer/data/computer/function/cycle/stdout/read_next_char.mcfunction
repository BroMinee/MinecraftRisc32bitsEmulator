function computer:write/tp_rs1

execute at @s run function computer:read/read8bits

# If null terminator stop
execute if score read_0 read8 matches 0 run execute if score read_1 read8 matches 0 run execute if score read_2 read8 matches 0 run execute if score read_3 read8 matches 0 run execute if score read_4 read8 matches 0 run execute if score read_5 read8 matches 0 run execute if score read_6 read8 matches 0 run execute if score read_7 read8 matches 0 run return 0

function computer:cycle/stdout/byte_to_char

# Concat the last appended char into stdout_text string
data modify storage computer:memory concat_args set value {text: "", char: ""}
data modify storage computer:memory concat_args.text set from storage computer:memory stdout_text
data modify storage computer:memory concat_args.char set from storage computer:memory stdout[-1]
function computer:cycle/stdout/concat_char with storage computer:memory concat_args

function computer:misc/copy_rs1_to_input_l_add32
function computer:misc/reset_input_r_32bits
scoreboard players set input_r_0 add32 1

function computer:alu/add_32bits
function computer:misc/copy_input_l_to_rs1_add32

# Stop if rs1 reached 0x0FFE_0600 (bit 9 flips to 1 when leaving 0x05xx range)
execute if score rs1_9 Computer matches 1 run return 0

# else cycle
function computer:cycle/stdout/read_next_char
