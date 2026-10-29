#!jvmtimer end _dispatcher
#!jvmtimer start fsw
# Input:  computer:cpu _mem_addr, computer:cpu rs2_val (float)
# Output: None
# Update: RAM at _mem_addr
# mem.writeWord(addr, Float.floatToRawIntBits(f[rs2]))

function computer:debug/print_log {"message": {"text": "Running fsw", "color":"gold"}}

# convert float -> int bits
data modify storage computer:alu a set from storage computer:cpu rs2_val
function computer:alu/float/float_to_raw_int_bits

# write int bits to memory
data modify storage computer:alu a set from storage computer:alu result
function computer:memory/write_word

#!jvmtimer end fsw
