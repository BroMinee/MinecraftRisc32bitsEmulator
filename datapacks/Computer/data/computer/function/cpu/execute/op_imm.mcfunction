# Input:  computer:cpu instr
# Output: None
# Update: computer:cpu x<rd>, computer:cpu pc
# private void execOpImm(final int instr) {
#!jvmtimer end _disp_opcode_switch
#!jvmtimer start _disp_decode_op_imm

# int rd = rd(instr);
function computer:cpu/rd
data modify storage computer:cpu rd set from storage computer:alu result

# int rs1v = x[rs1(instr)];
function computer:cpu/rs1
data modify storage computer:cpu rs1 set from storage computer:alu result
function computer:cycle/load_rs1 with storage computer:cpu

# int imm = immI(instr);
function computer:cpu/imm_i
data modify storage computer:cpu imm set from storage computer:alu result

# int shamt = SafeAdderInt.maskLowBits(imm, 5);
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu bits set value 5
function computer:alu/int/mask_low_bits
data modify storage computer:cpu shamt set from storage computer:alu result

# switch (funct3(instr)) { ... } -> result in computer:alu result
function computer:cpu/funct3
data modify storage computer:cpu funct3 set from storage computer:alu result
#!jvmtimer end _disp_decode_op_imm
#!jvmtimer start _disp_funct3_switch
function computer:cpu/execute/op_imm_dispatch

# x[rd] = result
data modify storage computer:cpu rd_val set from storage computer:alu result
function computer:cycle/write_rd with storage computer:cpu

# pc = SafeAdderInt.add(pc, 4);
function computer:cpu/increase_pc
