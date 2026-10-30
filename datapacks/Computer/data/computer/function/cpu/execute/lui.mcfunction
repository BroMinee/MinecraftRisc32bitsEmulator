# Input:  computer:cpu instr
# Output: None
# Update: computer:cpu x<rd>, computer:cpu pc
# private void execLUI(int instr) {
#     x[rd(instr)] = Instructions.lui(immU(instr));
#     pc = SafeAdderInt.add(pc, 4);
# }
#!jvmtimer end _disp_opcode_switch

# int rd = rd(instr);
data modify storage computer:cpu rd set compute default integer computer:cpu/rd

# x[rd] = Instructions.lui(immU(instr))
data modify storage computer:alu result set compute default integer computer:cpu/imm_u
function computer:instruction/lui
data modify storage computer:cpu rd_val set from storage computer:alu result
function computer:cycle/write_rd with storage computer:cpu

# pc = SafeAdderInt.add(pc, 4);
function computer:cpu/increase_pc
