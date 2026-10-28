# Input:  computer:cpu instr
# Output: None
# Update: computer:cpu x<rd>, computer:cpu pc
# private void execJALR(final int instr) {

# int rd = rd(instr);
function computer:cpu/rd
data modify storage computer:cpu rd set from storage computer:alu result

# int target = Instructions.jalr(x[rs1(instr)], immI(instr));
function computer:cpu/rs1
data modify storage computer:cpu rs1 set from storage computer:alu result
function computer:cycle/load_rs1 with storage computer:cpu
function computer:cpu/imm_i
data modify storage computer:cpu imm set from storage computer:alu result
function computer:instruction/jalr
data modify storage computer:cpu target set from storage computer:alu result

# x[rd] = SafeAdderInt.add(pc, 4);
data modify storage computer:alu a set from storage computer:cpu pc
data modify storage computer:alu b set value 4
function computer:alu/int/add
data modify storage computer:cpu rd_val set from storage computer:alu result
function computer:cycle/write_rd with storage computer:cpu

# pc = target;
data modify storage computer:cpu pc set from storage computer:cpu target

# if (target == 0 && rd == 0) { halted = true; }
execute if data storage computer:cpu {target: 0, rd: 0} run scoreboard players set done stats 1
