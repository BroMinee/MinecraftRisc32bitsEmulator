# Input:  computer:cpu instr
# Output: None
# Update: computer:cpu x<rd>, computer:cpu pc
# private void execJAL(final int instr) {
#!jvmtimer end _disp_opcode_switch

# int rd = rd(instr);
data modify storage computer:cpu rd set compute default integer computer:cpu/rd

# int target = SafeAdderInt.add(pc, immJ(instr));
data modify storage computer:cpu imm set compute default integer computer:cpu/imm_j
# I would have love to do the if inside the JSON but sadly I don't see how I can do it without re-computing twice the same thing
# sign extend: if instr < 0 (bit 31 = b20 set), subtract 2^20 = 1048576
execute store result score _instr alu run data get storage computer:cpu instr
execute if score _instr alu matches ..-1 run execute store result score _imm alu run data get storage computer:cpu imm
execute if score _instr alu matches ..-1 run scoreboard players remove _imm alu 1048576
execute if score _instr alu matches ..-1 run execute store result storage computer:cpu imm int 1 run scoreboard players get _imm alu
data modify storage computer:alu a set from storage computer:cpu pc
data modify storage computer:alu b set from storage computer:cpu imm
function computer:alu/int/add
data modify storage computer:cpu target set from storage computer:alu result

# x[rd] = Instructions.jal(pc);
function computer:instruction/jal
data modify storage computer:cpu rd_val set from storage computer:alu result
function computer:cycle/write_rd with storage computer:cpu

# pc = target;
data modify storage computer:cpu pc set from storage computer:cpu target
