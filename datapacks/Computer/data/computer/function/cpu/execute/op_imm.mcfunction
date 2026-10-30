# Input:  computer:cpu instr
# Output: None
# Update: computer:cpu x<rd>, computer:cpu pc
# private void execOpImm(final int instr) {
#!jvmtimer end _disp_opcode_switch
#!jvmtimer start _disp_decode_op_imm

# int rd = rd(instr);
data modify storage computer:cpu rd set compute default integer computer:cpu/rd

# int rs1v = x[rs1(instr)];
data modify storage computer:cpu rs1 set compute default integer computer:cpu/rs1
function computer:cycle/load_rs1 with storage computer:cpu

# int imm = immI(instr);
data modify storage computer:cpu imm set compute default integer computer:cpu/imm_i

# int shamt = SafeAdderInt.maskLowBits(imm, 5);
data modify storage computer:cpu shamt set compute default integer computer:cpu/shamt

# switch (funct3(instr)) { ... } -> result in computer:alu result
data modify storage computer:cpu funct3 set compute default integer computer:cpu/funct3
#!jvmtimer end _disp_decode_op_imm
#!jvmtimer start _disp_funct3_switch
function computer:cpu/execute/op_imm_dispatch

# x[rd] = result
data modify storage computer:cpu rd_val set from storage computer:alu result
function computer:cycle/write_rd with storage computer:cpu

# pc = SafeAdderInt.add(pc, 4);
function computer:cpu/increase_pc
