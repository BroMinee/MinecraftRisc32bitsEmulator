# public int readHalf(int addr)
# Input:  computer:cpu _mem_addr
# Output: computer:alu result (unsigned 16-bit, 0-65535)

# Compute word-aligned address, byte offset, shift, read word
function computer:memory/__internal/compute_addr

# result = maskLowBits(shrU(_mem_word, _mem_shift), 16)
data modify storage computer:alu a set from storage computer:cpu _mem_word
data modify storage computer:alu shift set from storage computer:cpu _mem_shift
function computer:alu/int/shr_u
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu bits set value 16
function computer:alu/int/mask_low_bits
