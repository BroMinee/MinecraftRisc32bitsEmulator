# Input:  computer:cpu instr
# Output: None
# Update: computer:cpu x<rd>, computer:cpu pc
# private void execJAL(final int instr) {
#!jvmtimer end _disp_opcode_switch

# int rd = rd(instr);
function computer:cpu/rd
data modify storage computer:cpu rd set from storage computer:alu result

# int target = SafeAdderInt.add(pc, immJ(instr));
function computer:cpu/imm_j
data modify storage computer:alu a set from storage computer:cpu pc
data modify storage computer:alu b set from storage computer:alu result
function computer:alu/int/add
data modify storage computer:cpu target set from storage computer:alu result

# x[rd] = Instructions.jal(pc);
function computer:instruction/jal
data modify storage computer:cpu rd_val set from storage computer:alu result
function computer:cycle/write_rd with storage computer:cpu

# pc = target;
data modify storage computer:cpu pc set from storage computer:cpu target
