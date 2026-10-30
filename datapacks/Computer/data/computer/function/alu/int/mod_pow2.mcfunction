#!jvmtimer start alu_int_mod_pow2
# Inputs: computer:alu a, computer:alu bits
# Outputs: computer:alu result
# public static int modPow2(int a, int bits) {

# push new frame context
function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a
data modify storage computer:alu stack[-1].bits set from storage computer:alu bits

# if (bits == 0) return 0;
execute if data storage computer:alu {bits:0} run data modify storage computer:alu result set value 0
execute if data storage computer:alu {bits:0} run return run function computer:alu/stack/pop

# if (bits == 31) return a;
execute if data storage computer:alu {bits:31} run data modify storage computer:alu result set from storage computer:alu stack[-1].a
execute if data storage computer:alu {bits:31} run return run function computer:alu/stack/pop

# int p = (int) Math.pow(2, bits);
data modify storage computer:alu n set from storage computer:alu stack[-1].bits
function computer:alu/int/pow2
data modify storage computer:alu stack[-1].p set from storage computer:alu result

# int q = hwDiv(a, p);
data modify storage computer:alu a set from storage computer:alu stack[-1].a
data modify storage computer:alu b set from storage computer:alu stack[-1].p
function computer:alu/int/hw_div
data modify storage computer:alu stack[-1].q set from storage computer:alu result

# return hwSub(a, hwMul(q, p));
data modify storage computer:alu a set from storage computer:alu stack[-1].q
data modify storage computer:alu b set from storage computer:alu stack[-1].p
function computer:alu/int/hw_mul
data modify storage computer:alu b set from storage computer:alu result
data modify storage computer:alu a set from storage computer:alu stack[-1].a
function computer:alu/int/hw_sub

# pop frame
function computer:alu/stack/pop
#!jvmtimer end alu_int_mod_pow2
