#!jvmtimer start do_cycle
# public void step() {
# if (halted || error) return;
execute if score error stats matches 1.. run return 0
execute if score done stats matches 1.. run return 0

# Stdin check: if control register (0x0FFE0600 = ram_268305920) is 1, show dialog and block CPU
execute store result score _stdin_ctrl alu run data get storage computer:ram_268305920 value
execute if score _stdin_ctrl alu matches 1 run function computer:cycle/stdin/show_dialog with storage computer:memory
execute if score _stdin_ctrl alu matches 1 run return 0

function computer:cycle/input/write_keys_to_memory

# cycleCount = SafeAdderInt.add(cycleCount, 1);
scoreboard players add cycle stats 1

# int instr = mem.readWord(pc);
#!jvmtimer start _fetch
function computer:cycle/fetch with storage computer:cpu
data modify storage computer:cpu instr set from storage computer:alu result
#!jvmtimer end _fetch

# int opcode = SafeAdderInt.maskLowBits(instr, 7);
#!jvmtimer start _opcode_decode
data modify storage computer:cpu opcode set compute default integer computer:cpu/opcode
#!jvmtimer end _opcode_decode

# Decode + Execute
function computer:cycle/execute_opcode
#!jvmtimer end do_cycle