# Inputs: computer:alu a, computer:alu b
# Outputs: computer:alu result
# public static int rem(int a, int b) {

# push new frame context
function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a
data modify storage computer:alu stack[-1].b set from storage computer:alu b

# if (b == 0) return a;
execute if data storage computer:alu {b:0} run data modify storage computer:alu result set from storage computer:alu stack[-1].a
execute if data storage computer:alu {b:0} run return run function computer:alu/stack/pop

# if (a == MIN_INT && b == -1) return 0;
execute if data storage computer:alu {a:-2147483648,b:-1} run data modify storage computer:alu result set value 0
execute if data storage computer:alu {a:-2147483648,b:-1} run return run function computer:alu/stack/pop

# int q = hwDiv(a, b);
function computer:alu/int/hw_div
# data modify storage computer:alu stack[-1].q set from storage computer:alu result

# return hwSub(a, hwMul(q, b));
# data modify storage computer:alu a set from storage computer:alu stack[-1].q
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu b set from storage computer:alu stack[-1].b
function computer:alu/int/hw_mul
data modify storage computer:alu b set from storage computer:alu result
data modify storage computer:alu a set from storage computer:alu stack[-1].a
function computer:alu/int/hw_sub

# pop frame
function computer:alu/stack/pop
