#!jvmtimer start do_cycle
# public void step() {
# if (halted || error) return;
execute if score error stats matches 1.. run return 0
execute if score done stats matches 1.. run return 0

# cycleCount = SafeAdderInt.add(cycleCount, 1);
scoreboard players add cycle stats 1

# int instr = mem.readWord(pc);
#!jvmtimer start _fetch
function computer:cycle/fetch with storage computer:cpu
data modify storage computer:cpu instr set from storage computer:alu result
#!jvmtimer end _fetch

# int opcode = SafeAdderInt.maskLowBits(instr, 7);
#!jvmtimer start _opcode_decode
function computer:cpu/opcode
data modify storage computer:cpu opcode set from storage computer:alu result
#!jvmtimer end _opcode_decode

# Decode + Execute
function computer:cycle/execute_opcode
#!jvmtimer end do_cycle