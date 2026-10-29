#!jvmtimer end _dispatcher
#!jvmtimer start mulhu
# Input:  computer:cpu rs1_val, computer:cpu rs2_val
# Output: computer:alu result
# static int mulhu(int rs1, int rs2) { return SafeAdderInt.mulhu(rs1, rs2); }

function computer:debug/print_log {"message": {"text": "Running mulhu", "color":"gold"}}

data modify storage computer:alu a set from storage computer:cpu rs1_val
data modify storage computer:alu b set from storage computer:cpu rs2_val
function computer:alu/int/mulhu

#!jvmtimer end mulhu
