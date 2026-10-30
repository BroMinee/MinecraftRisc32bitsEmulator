#!jvmtimer start alu_int_divu
# Inputs: computer:alu a, computer:alu b
# Outputs: computer:alu result
# public static int divu(int a, int b) {

# in this particular case it's safe skip context frame

# if (b == 0) return -1;
execute if data storage computer:alu {b:0} run data modify storage computer:alu result set value -1
execute if data storage computer:alu {b:0} run return 0

# divRemUnsigned(a, b) -> result=q, result_hi=r
function computer:alu/int/div_rem_unsigned
#!jvmtimer end alu_int_divu
