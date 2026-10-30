# Input:  computer:cpu instr
# Output: None
# Update: RAM, computer:cpu pc
# private void execStore(final int instr) {
#!jvmtimer end _disp_opcode_switch
#!jvmtimer start _disp_decode_store

# int addr = SafeAdderInt.add(x[rs1(instr)], immS(instr));
data modify storage computer:cpu rs1 set compute default integer computer:cpu/rs1
function computer:cycle/load_rs1 with storage computer:cpu
data modify storage computer:cpu imm set compute default integer computer:cpu/imm_s
data modify storage computer:alu a set from storage computer:cpu rs1_val
data modify storage computer:alu b set from storage computer:cpu imm
function computer:alu/int/add
data modify storage computer:cpu _mem_addr set from storage computer:alu result

# int val = x[rs2(instr)];
data modify storage computer:cpu rs2 set compute default integer computer:cpu/rs2
function computer:cycle/load_rs2 with storage computer:cpu

# switch (funct3(instr)) { ... }
data modify storage computer:cpu funct3 set compute default integer computer:cpu/funct3
#!jvmtimer end _disp_decode_store
#!jvmtimer start _disp_funct3_switch
function computer:cpu/execute/store_dispatch

# pc = SafeAdderInt.add(pc, 4);
function computer:cpu/increase_pc
