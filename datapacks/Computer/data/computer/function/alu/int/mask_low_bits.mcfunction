#!jvmtimer start alu_int_mask_low_bits
# Inputs: computer:alu a, computer:alu bits
# Outputs: computer:alu result
# public static int maskLowBits(int a, int bits) {

# push new frame context
function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a
data modify storage computer:alu stack[-1].bits set from storage computer:alu bits

# if (bits == 0) return 0;
execute if data storage computer:alu {bits:0} run data modify storage computer:alu result set value 0
execute if data storage computer:alu {bits:0} run return run function computer:alu/stack/pop

# int low = low31(a);
function computer:alu/int/low31
data modify storage computer:alu stack[-1].low set from storage computer:alu result

# if (bits == 31) return low;
execute store result score _bits alu run data get storage computer:alu stack[-1].bits
execute if score _bits alu matches 31 run data modify storage computer:alu result set from storage computer:alu stack[-1].low
execute if score _bits alu matches 31 run return run function computer:alu/stack/pop

# return modPow2(low, bits);
data modify storage computer:alu a set from storage computer:alu stack[-1].low
data modify storage computer:alu bits set from storage computer:alu stack[-1].bits
function computer:alu/int/mod_pow2

# pop frame
function computer:alu/stack/pop
#!jvmtimer end alu_int_mask_low_bits
