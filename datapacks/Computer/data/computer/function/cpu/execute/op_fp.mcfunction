# Input:  computer:cpu instr
# Output: None
# Update: computer:cpu f<rd> or x<rd>, computer:cpu pc
# private void execOpFP(final int instr) {
#!jvmtimer end _disp_opcode_switch
#!jvmtimer start _disp_decode_op_fp

# int f7 = funct7(instr);
data modify storage computer:cpu funct7 set compute default integer computer:cpu/funct7

# int rd = rd(instr);
data modify storage computer:cpu rd set compute default integer computer:cpu/rd

# int r1 = rs1(instr);
data modify storage computer:cpu rs1 set compute default integer computer:cpu/rs1

# int r2 = rs2(instr);
data modify storage computer:cpu rs2 set compute default integer computer:cpu/rs2

# int f3 = funct3(instr);
data modify storage computer:cpu funct3 set compute default integer computer:cpu/funct3

#!jvmtimer end _disp_decode_op_fp
#!jvmtimer start _disp_funct7_switch
# switch (f7) { ... }
function computer:cpu/execute/op_fp_dispatch

# pc = SafeAdderInt.add(pc, 4);
function computer:cpu/increase_pc
