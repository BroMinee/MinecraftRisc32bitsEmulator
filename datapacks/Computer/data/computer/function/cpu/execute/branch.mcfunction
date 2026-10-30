# Input:  computer:cpu instr
# Output: None
# Update: computer:cpu pc
# private void execBranch(final int instr) {
#!jvmtimer end _disp_opcode_switch
#!jvmtimer start _disp_decode_branch

# int rs1v = x[rs1(instr)];
data modify storage computer:cpu rs1 set compute default integer computer:cpu/rs1
function computer:cycle/load_rs1 with storage computer:cpu

# int rs2v = x[rs2(instr)];
data modify storage computer:cpu rs2 set compute default integer computer:cpu/rs2
function computer:cycle/load_rs2 with storage computer:cpu

# switch (funct3(instr)) { ... } -> result = 1 (taken) or 0 (not taken)
data modify storage computer:cpu funct3 set compute default integer computer:cpu/funct3
#!jvmtimer end _disp_decode_branch
#!jvmtimer start _disp_funct3_switch
function computer:cpu/execute/branch_dispatch

# if (taken) { pc = add(pc, immB(instr)); } else { pc = add(pc, 4); }
execute unless data storage computer:alu {result: 0} run return run function computer:cpu/execute/branch_taken
function computer:cpu/increase_pc
