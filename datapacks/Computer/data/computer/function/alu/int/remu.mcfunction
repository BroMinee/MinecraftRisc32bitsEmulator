#!jvmtimer start alu_int_remu
# Inputs: computer:alu a, computer:alu b
# Outputs: computer:alu result
# public static int remu(int a, int b) {

# push new frame context
function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a

# if (b == 0) return a;
execute if data storage computer:alu {b:0} run data modify storage computer:alu result set from storage computer:alu stack[-1].a
execute if data storage computer:alu {b:0} run return run function computer:alu/stack/pop

# divRemUnsigned(a, b) -> result=q, result_hi=r
function computer:alu/int/div_rem_unsigned
# cf mul_unsigned_64 return value
data modify storage computer:alu result set from storage computer:alu result_hi

# pop frame
function computer:alu/stack/pop
#!jvmtimer end alu_int_remu
