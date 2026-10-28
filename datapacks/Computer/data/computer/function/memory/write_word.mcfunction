# public void writeWord(int addr, int value)
# Input:  computer:cpu _mem_addr, computer:alu a (value to write)
# Output: None
# Update: RAM at _mem_addr

# Save value before compute_addr clobbers alu
data modify storage computer:cpu _mem_val set from storage computer:alu a

# Compute word-aligned address
function computer:memory/__internal/compute_addr

# _mem_word = saved value (overwrite the old word read by compute_addr)
data modify storage computer:cpu _mem_word set from storage computer:cpu _mem_val

# Write word back to RAM
function computer:memory/__internal/write_word with storage computer:cpu
