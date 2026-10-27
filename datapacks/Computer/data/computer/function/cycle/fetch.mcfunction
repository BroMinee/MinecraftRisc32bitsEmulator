# Fetch 32-bit instruction word from RAM at address PC
$data modify storage computer:alu result set from storage computer:ram_$(pc) value
