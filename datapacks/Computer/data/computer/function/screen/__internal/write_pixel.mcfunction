# Write pixel to screen via UUID
# Called as macro with storage computer:cpu (needs _mem_word_addr, _mem_word)
$data modify entity 00000000-0000-0000-0000-000$(_mem_word_addr) background set from storage computer:cpu _mem_word
