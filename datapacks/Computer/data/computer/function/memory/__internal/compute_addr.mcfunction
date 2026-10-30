#!jvmtimer start _mem_compute_addr
# Compute memory address components from _mem_addr
# Input:  computer:cpu _mem_addr
# Output: computer:cpu _mem_word_addr, _mem_byte_off, _mem_shift, _mem_word

# _mem_byte_off = _mem_addr & 0x3  (byte offset within word: 0-3)
data modify storage computer:cpu _mem_byte_off set compute default integer computer:memory/byte_off

# _mem_word_addr = _mem_addr - _mem_byte_off  (word-aligned address)
data modify storage computer:cpu _mem_word_addr set compute default integer computer:memory/word_addr

# _mem_shift = _mem_byte_off * 8  (bit shift = byte_off * 8)
data modify storage computer:cpu _mem_shift set compute default integer computer:memory/shift

# Read the word from RAM
#!jvmtimer end _mem_compute_addr
function computer:memory/__internal/read_word with storage computer:cpu
