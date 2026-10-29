#!jvmtimer end _dispatcher
#!jvmtimer start flw
# Input:  computer:cpu _mem_addr
# Output: computer:alu result (float)
# f[rd] = Float.intBitsToFloat(mem.readWord(addr))

function computer:debug/print_log {"message": {"text": "Running flw", "color":"gold"}}

# read int bits from memory -> computer:alu result
function computer:memory/read_word

# convert int bits -> float
data modify storage computer:alu a set from storage computer:alu result
function computer:alu/float/int_bits_to_float

#!jvmtimer end flw
