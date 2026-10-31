# public int readWord(int addr)
# Input:  computer:cpu _mem_addr
# Output: computer:alu result

scoreboard players add read stats 1

# MMIO: random (0x0FFE0200 = 268304896)
execute if data storage computer:cpu {_mem_addr: 268304896} run return run function computer:cycle/random/generate

# MMIO: cycle counter (0x0FFE0300 = 268305152)
execute if data storage computer:cpu {_mem_addr: 268305152} run return run execute store result storage computer:alu result int 1 run scoreboard players get cycle stats

# Compute word-aligned address and read word from RAM
function computer:memory/__internal/compute_addr

# result = _mem_word
data modify storage computer:alu result set from storage computer:cpu _mem_word
