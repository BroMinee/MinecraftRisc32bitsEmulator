# Input:  computer:cpu instr
# Output: None
# Update: computer:cpu x<rd>, computer:cpu pc
# private void execAUIPC(final int instr) {
#!jvmtimer end _disp_opcode_switch

# int rd = rd(instr);
data modify storage computer:cpu rd set compute default integer computer:cpu/rd

# x[rd] = Instructions.auipc(pc, immU(instr));
data modify storage computer:alu result set compute default integer computer:cpu/imm_u
function computer:instruction/auipc
data modify storage computer:cpu rd_val set from storage computer:alu result
function computer:cycle/write_rd with storage computer:cpu

# pc = SafeAdderInt.add(pc, 4);
function computer:cpu/increase_pc
