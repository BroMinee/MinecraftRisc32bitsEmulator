#!jvmtimer start alu_int_div
# Inputs: computer:alu a, computer:alu b
# Outputs: computer:alu result
# public static int div(int a, int b) {

# push new frame context
# function computer:alu/stack/push
# data modify storage computer:alu stack[-1].a set from storage computer:alu a
# data modify storage computer:alu stack[-1].b set from storage computer:alu b

# if (b == 0) return -1;
execute if data storage computer:alu {b:0} run data modify storage computer:alu result set value -1
execute if data storage computer:alu {b:0} run return run function computer:alu/stack/pop

# if (a == MIN_INT && b == -1) return MIN_INT;
execute if data storage computer:alu {a:-2147483648,b:-1} run data modify storage computer:alu result set value -2147483648
execute if data storage computer:alu {a:-2147483648,b:-1} run return run function computer:alu/stack/pop

# return hwDiv(a, b);
function computer:alu/int/hw_div

# pop frame
# function computer:alu/stack/pop
#!jvmtimer end alu_int_div
