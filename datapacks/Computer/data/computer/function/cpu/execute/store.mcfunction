# Input:  computer:cpu instr
# Output: None
# Update: RAM, computer:cpu pc
# private void execStore(final int instr) {

# int addr = SafeAdderInt.add(x[rs1(instr)], immS(instr));
function computer:cpu/rs1
data modify storage computer:cpu rs1 set from storage computer:alu result
function computer:cycle/load_rs1 with storage computer:cpu
function computer:cpu/imm_s
data modify storage computer:alu a set from storage computer:cpu rs1_val
data modify storage computer:alu b set from storage computer:alu result
function computer:alu/int/add
data modify storage computer:cpu _mem_addr set from storage computer:alu result

# int val = x[rs2(instr)];
function computer:cpu/rs2
data modify storage computer:cpu rs2 set from storage computer:alu result
function computer:cycle/load_rs2 with storage computer:cpu

# switch (funct3(instr)) { ... }
function computer:cpu/funct3
data modify storage computer:cpu funct3 set from storage computer:alu result
function computer:cpu/execute/store_dispatch

# pc = SafeAdderInt.add(pc, 4);
function computer:cpu/increase_pc
