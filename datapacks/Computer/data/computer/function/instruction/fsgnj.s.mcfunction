#!jvmtimer end _dispatcher
#!jvmtimer start fsgnj.s
# Input:  computer:cpu rs1_val, computer:cpu rs2_val (IEEE 754 int bits)
# Output: computer:alu result
# static int fsgnj_s(int frs1, int frs2) { return copySignBit(frs1, frs2); }

function computer:debug/print_log {"message": {"text": "Running fsgnj.s", "color":"gold"}}

data modify storage computer:alu a set from storage computer:cpu rs1_val
data modify storage computer:alu b set from storage computer:cpu rs2_val
function computer:alu/int/copy_sign_bit

#!jvmtimer end fsgnj.s
