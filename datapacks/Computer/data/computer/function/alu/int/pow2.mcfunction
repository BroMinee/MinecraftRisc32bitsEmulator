#!jvmtimer start alu_int_pow2
# Inputs: computer:alu n
# Outputs: computer:alu result
# public static int pow2(int n) { return (int) Math.pow(2, n); }

# return (int) Math.pow(2, n);
data modify storage computer:alu result set compute default integer computer:alu/pow2
#!jvmtimer end alu_int_pow2
