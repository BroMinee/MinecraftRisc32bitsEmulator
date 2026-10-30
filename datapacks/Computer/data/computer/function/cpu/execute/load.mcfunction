# Input:  computer:cpu instr
# Output: None
# Update: computer:cpu x<rd>, computer:cpu pc
# private void execLoad(final int instr) {
#!jvmtimer end _disp_opcode_switch
#!jvmtimer start _disp_decode_load

# int rd = rd(instr);
data modify storage computer:cpu rd set compute default integer computer:cpu/rd

# int addr = SafeAdderInt.add(x[rs1(instr)], immI(instr));
data modify storage computer:cpu rs1 set compute default integer computer:cpu/rs1
function computer:cycle/load_rs1 with storage computer:cpu
data modify storage computer:cpu imm set compute default integer computer:cpu/imm_i
data modify storage computer:alu a set from storage computer:cpu rs1_val
data modify storage computer:alu b set from storage computer:cpu imm
function computer:alu/int/add
data modify storage computer:cpu _mem_addr set from storage computer:alu result

# switch (funct3(instr)) { ... } -> result in computer:alu result
data modify storage computer:cpu funct3 set compute default integer computer:cpu/funct3
#!jvmtimer end _disp_decode_load
#!jvmtimer start _disp_funct3_switch
function computer:cpu/execute/load_dispatch

# x[rd] = result
data modify storage computer:cpu rd_val set from storage computer:alu result
function computer:cycle/write_rd with storage computer:cpu

# pc = SafeAdderInt.add(pc, 4);
function computer:cpu/increase_pc
