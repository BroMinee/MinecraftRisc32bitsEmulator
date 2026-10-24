execute if score error stats matches 1.. run return 0
execute if score done stats matches 1.. run return 0

# Fetch instruction from RAM at current PC
# Read 32-bit word from storage computer:ram_<pc>
scoreboard players add cycle stats 1
function computer:cycle/fetch with storage computer:cpu

# Decode + Execute
function computer:cycle/decode

# Increment PC by 4 (unless jump/branch modified it)
execute if data storage computer:cpu {increase_pc:1} run function computer:cycle/increment_pc
execute unless data storage computer:cpu increase_pc run function computer:debug/print_log {"message": '{"text":"PC not increased (jump condition)","color":"gold"}'}
