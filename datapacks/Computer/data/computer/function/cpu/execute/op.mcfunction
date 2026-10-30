# Input:  computer:cpu instr
# Output: None
# Update: computer:cpu x<rd>, computer:cpu pc
# private void execOp(final int instr) {
#!jvmtimer end _disp_opcode_switch
#!jvmtimer start _disp_decode_op

# int rd = rd(instr);
data modify storage computer:cpu rd set compute default integer computer:cpu/rd

# int rs1v = x[rs1(instr)];
data modify storage computer:cpu rs1 set compute default integer computer:cpu/rs1
function computer:cycle/load_rs1 with storage computer:cpu

# int rs2v = x[rs2(instr)];
data modify storage computer:cpu rs2 set compute default integer computer:cpu/rs2
function computer:cycle/load_rs2 with storage computer:cpu

# int f7 = funct7(instr);
data modify storage computer:cpu funct7 set compute default integer computer:cpu/funct7

# int f3 = funct3(instr);
data modify storage computer:cpu funct3 set compute default integer computer:cpu/funct3

#!jvmtimer end _disp_decode_op
#!jvmtimer start _disp_funct3_switch
# if (f7 == 0x01) { execMulDiv(rd, rs1v, rs2v, f3); }
# else { switch (f3) { ... } }
function computer:cpu/execute/op_dispatch

# x[rd] = result
data modify storage computer:cpu rd_val set from storage computer:alu result
function computer:cycle/write_rd with storage computer:cpu

# pc = SafeAdderInt.add(pc, 4);
function computer:cpu/increase_pc
