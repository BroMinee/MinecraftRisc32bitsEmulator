# Read one byte from RAM, convert to char, concat, loop
# Input: computer:cpu _mem_addr (current address in stdout buffer)

# Read byte at _mem_addr
function computer:memory/read_byte

# If null terminator stop
execute if data storage computer:alu {result: 0} run return 0

function computer:cycle/stdout/byte_to_char with storage computer:alu

# Concat the last appended char into stdout_text string
data modify storage computer:memory concat_args set value {text: "", char: ""}
data modify storage computer:memory concat_args.text set from storage computer:memory stdout_text
data modify storage computer:memory concat_args.char set from storage computer:memory stdout_char
function computer:cycle/stdout/concat_char with storage computer:memory concat_args

# _mem_addr += 1
data modify storage computer:alu a set from storage computer:cpu _mem_addr
data modify storage computer:alu b set value 1
function computer:alu/int/add
data modify storage computer:cpu _mem_addr set from storage computer:alu result

# Stop if we reached end of buffer (0x0FFE_0600 = 268305920)
execute if data storage computer:cpu {_mem_addr: 268305920} run return 0

# else cycle
function computer:cycle/stdout/read_next_char
