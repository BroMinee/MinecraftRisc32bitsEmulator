#!jvmtimer start _mem_compute_addr
# Compute memory address components from _mem_addr
# Input:  computer:cpu _mem_addr
# Output: computer:cpu _mem_word_addr, _mem_byte_off, _mem_shift, _mem_word

# _mem_byte_off = maskLowBits(_mem_addr, 2)  (byte offset within word: 0-3)
data modify storage computer:alu a set from storage computer:cpu _mem_addr
data modify storage computer:alu bits set value 2
function computer:alu/int/mask_low_bits
data modify storage computer:cpu _mem_byte_off set from storage computer:alu result

# _mem_word_addr = sub(_mem_addr, _mem_byte_off)  (word-aligned address)
data modify storage computer:alu a set from storage computer:cpu _mem_addr
data modify storage computer:alu b set from storage computer:cpu _mem_byte_off
function computer:alu/int/sub
data modify storage computer:cpu _mem_word_addr set from storage computer:alu result

# _mem_shift = shl(_mem_byte_off, 3)  (bit shift = byte_off * 8)
data modify storage computer:alu a set from storage computer:cpu _mem_byte_off
data modify storage computer:alu shift set value 3
function computer:alu/int/shl
data modify storage computer:cpu _mem_shift set from storage computer:alu result

# Read the word from RAM
#!jvmtimer end _mem_compute_addr
function computer:memory/__internal/read_word with storage computer:cpu
