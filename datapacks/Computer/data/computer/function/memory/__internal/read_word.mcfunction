# Read a 32-bit word from RAM at _mem_word_addr into _mem_word
# Called as macro with storage computer:cpu (needs _mem_word_addr)
data modify storage computer:cpu _mem_word set value 0
$data modify storage computer:cpu _mem_word set from storage computer:ram_$(_mem_word_addr) value
