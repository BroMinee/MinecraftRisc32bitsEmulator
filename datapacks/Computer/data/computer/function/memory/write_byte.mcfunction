# public void writeByte(int addr, int value)
# Input:  computer:cpu _mem_addr, computer:alu a (value to write)
# Output: None
# Update: RAM at _mem_addr

# Save value before compute_addr clobbers alu
data modify storage computer:cpu _mem_val set from storage computer:alu a

# Compute word-aligned address, byte offset, shift, read existing word
function computer:memory/__internal/compute_addr

# old_byte = maskLowBits(shrU(_mem_word, _mem_shift), 8)
data modify storage computer:alu a set from storage computer:cpu _mem_word
data modify storage computer:alu shift set from storage computer:cpu _mem_shift
function computer:alu/int/shr_u
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu bits set value 8
function computer:alu/int/mask_low_bits
data modify storage computer:cpu _mem_old set from storage computer:alu result

# new_byte = maskLowBits(value, 8)
data modify storage computer:alu a set from storage computer:cpu _mem_val
data modify storage computer:alu bits set value 8
function computer:alu/int/mask_low_bits
data modify storage computer:cpu _mem_new set from storage computer:alu result

# delta = sub(new_byte, old_byte)
data modify storage computer:alu a set from storage computer:cpu _mem_new
data modify storage computer:alu b set from storage computer:cpu _mem_old
function computer:alu/int/sub

# shifted_delta = shl(delta, _mem_shift)
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu shift set from storage computer:cpu _mem_shift
function computer:alu/int/shl

# _mem_word = add(_mem_word, shifted_delta)
data modify storage computer:alu a set from storage computer:cpu _mem_word
data modify storage computer:alu b set from storage computer:alu result
function computer:alu/int/add
data modify storage computer:cpu _mem_word set from storage computer:alu result

# Write word back to RAM
function computer:memory/__internal/write_word with storage computer:cpu
