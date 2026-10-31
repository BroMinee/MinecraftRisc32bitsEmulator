# public int readWord(int addr)
# Input:  computer:cpu _mem_addr
# Output: computer:alu result

scoreboard players add read stats 1
# Compute word-aligned address and read word from RAM
function computer:memory/__internal/compute_addr

# result = _mem_word
data modify storage computer:alu result set from storage computer:cpu _mem_word
