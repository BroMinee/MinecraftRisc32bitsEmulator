# Input:  computer:cpu instr
# Output: None
# Update: computer:cpu f<rd>, computer:cpu pc
# private void execFMSUB(final int instr) {
#!jvmtimer end _disp_opcode_switch
#!jvmtimer start _disp_decode_fmsub

# f[rd(instr)] = Instructions.fmsub_s(f[rs1(instr)], f[rs2(instr)], f[rs3(instr)]);
data modify storage computer:cpu rd set compute default integer computer:cpu/rd
data modify storage computer:cpu rs1 set compute default integer computer:cpu/rs1
function computer:cycle/load_frs1 with storage computer:cpu
data modify storage computer:cpu rs2 set compute default integer computer:cpu/rs2
function computer:cycle/load_frs2 with storage computer:cpu
data modify storage computer:cpu rs3 set compute default integer computer:cpu/rs3
function computer:cycle/load_frs3 with storage computer:cpu

#!jvmtimer end _disp_decode_fmsub
function computer:instruction/fmsub
data modify storage computer:cpu rd_val set from storage computer:alu result
function computer:cycle/write_frd with storage computer:cpu

# pc = SafeAdderInt.add(pc, 4);
function computer:cpu/increase_pc
