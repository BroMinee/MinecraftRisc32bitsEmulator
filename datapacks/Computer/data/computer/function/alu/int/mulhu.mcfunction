#!jvmtimer start alu_int_mulhu
# Inputs: computer:alu a, computer:alu b
# Outputs: computer:alu result
# public static int mulhu(int a, int b) { return mulUnsigned64(a, b)[1]; }

function computer:alu/int/mul_unsigned_64
# cf mul_unsigned_64 return value
data modify storage computer:alu result set from storage computer:alu result_hi
#!jvmtimer end alu_int_mulhu
