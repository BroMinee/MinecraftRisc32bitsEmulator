# Input:  computer:cpu instr
# Output: None
# Update: computer:cpu f<rd>, computer:cpu pc
# private void execLoadFP(final int instr) {

# int rd = rd(instr);
function computer:cpu/rd
data modify storage computer:cpu rd set from storage computer:alu result

# int addr = SafeAdderInt.add(x[rs1(instr)], immI(instr));
function computer:cpu/rs1
data modify storage computer:cpu rs1 set from storage computer:alu result
function computer:cycle/load_rs1 with storage computer:cpu
function computer:cpu/imm_i
data modify storage computer:alu a set from storage computer:cpu rs1_val
data modify storage computer:alu b set from storage computer:alu result
function computer:alu/int/add
data modify storage computer:cpu _mem_addr set from storage computer:alu result

# f[rd] = Instructions.flw(mem, addr);
function computer:instruction/flw
data modify storage computer:cpu rd_val set from storage computer:alu result
function computer:cycle/write_frd with storage computer:cpu

# pc = SafeAdderInt.add(pc, 4);
function computer:cpu/increase_pc
