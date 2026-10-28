# Write _mem_word to RAM at _mem_word_addr
# Called as macro with storage computer:cpu (needs _mem_word_addr, _mem_word)
$data modify storage computer:ram_$(_mem_word_addr) value set from storage computer:cpu _mem_word
