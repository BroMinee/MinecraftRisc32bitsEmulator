# public void writeWord(int addr, int value)
# Input:  computer:cpu _mem_addr, computer:alu a (value to write)
# Output: None
# Update: RAM at _mem_addr (or screen MMIO)

scoreboard players add write stats 1
# Save value before compute_addr clobbers alu
data modify storage computer:cpu _mem_val set from storage computer:alu a

# Compute word-aligned address
function computer:memory/__internal/compute_addr

# _mem_word = saved value (overwrite the old word read by compute_addr)
data modify storage computer:cpu _mem_word set from storage computer:cpu _mem_val

# Check if address is in screen MMIO range (268369920 - 268386300)
execute store result score _addr alu run data get storage computer:cpu _mem_word_addr
execute if score _addr alu matches 268369920..268386300 run return run function computer:screen/__internal/write_pixel with storage computer:cpu

# Write word back to RAM
function computer:memory/__internal/write_word with storage computer:cpu

# Check MMIO stdout control (0x0FFE0500 = 268305664): flush if written 1
execute if score _addr alu matches 268305664 run function computer:cycle/stdout/flush
