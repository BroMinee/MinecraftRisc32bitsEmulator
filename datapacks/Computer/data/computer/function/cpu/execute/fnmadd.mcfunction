# Input:  computer:cpu instr
# Output: None
# Update: computer:cpu f<rd>, computer:cpu pc
# private void execFNMADD(final int instr) {
#!jvmtimer end _disp_opcode_switch
#!jvmtimer start _disp_decode_fnmadd

# f[rd(instr)] = Instructions.fnmadd_s(f[rs1(instr)], f[rs2(instr)], f[rs3(instr)]);
function computer:cpu/rd
data modify storage computer:cpu rd set from storage computer:alu result
function computer:cpu/rs1
data modify storage computer:cpu rs1 set from storage computer:alu result
function computer:cycle/load_frs1 with storage computer:cpu
function computer:cpu/rs2
data modify storage computer:cpu rs2 set from storage computer:alu result
function computer:cycle/load_frs2 with storage computer:cpu
function computer:cpu/rs3
data modify storage computer:cpu rs3 set from storage computer:alu result
function computer:cycle/load_frs3 with storage computer:cpu

#!jvmtimer end _disp_decode_fnmadd
function computer:instruction/fnmadd
data modify storage computer:cpu rd_val set from storage computer:alu result
function computer:cycle/write_frd with storage computer:cpu

# pc = SafeAdderInt.add(pc, 4);
function computer:cpu/increase_pc
