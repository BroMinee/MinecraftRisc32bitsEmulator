# Input:  computer:cpu instr
# Output: None
# Update: computer:cpu f<rd> or x<rd>, computer:cpu pc
# private void execOpFP(final int instr) {
#!jvmtimer end _disp_opcode_switch
#!jvmtimer start _disp_decode_op_fp

# int f7 = funct7(instr);
function computer:cpu/funct7
data modify storage computer:cpu funct7 set from storage computer:alu result

# int rd = rd(instr);
function computer:cpu/rd
data modify storage computer:cpu rd set from storage computer:alu result

# int r1 = rs1(instr);
function computer:cpu/rs1
data modify storage computer:cpu rs1 set from storage computer:alu result

# int r2 = rs2(instr);
function computer:cpu/rs2
data modify storage computer:cpu rs2 set from storage computer:alu result

# int f3 = funct3(instr);
function computer:cpu/funct3
data modify storage computer:cpu funct3 set from storage computer:alu result

#!jvmtimer end _disp_decode_op_fp
#!jvmtimer start _disp_funct7_switch
# switch (f7) { ... }
function computer:cpu/execute/op_fp_dispatch

# pc = SafeAdderInt.add(pc, 4);
function computer:cpu/increase_pc
