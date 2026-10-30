# Input:  computer:cpu instr
# Output: None
# Update: computer:cpu x<rd>, computer:cpu pc
# private void execJALR(final int instr) {
#!jvmtimer end _disp_opcode_switch

# int rd = rd(instr);
data modify storage computer:cpu rd set compute default integer computer:cpu/rd

# int target = Instructions.jalr(x[rs1(instr)], immI(instr));
data modify storage computer:cpu rs1 set compute default integer computer:cpu/rs1
function computer:cycle/load_rs1 with storage computer:cpu
data modify storage computer:cpu imm set compute default integer computer:cpu/imm_i
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
