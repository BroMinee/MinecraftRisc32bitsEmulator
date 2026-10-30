#!jvmtimer start alu_int_sign_extend_16
# Inputs: computer:alu a
# Outputs: computer:alu result
# public static int signExtend16(int a) {

# push new frame context
function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a

# int u16 = maskLowBits(a, 16);
data modify storage computer:alu bits set value 16
function computer:alu/int/mask_low_bits
data modify storage computer:alu stack[-1].u16 set from storage computer:alu result

# return u16 >= 32768 ? hwSub(u16, 65536);
execute store result score _u16 alu run data get storage computer:alu stack[-1].u16
execute if score _u16 alu matches 32768.. run data modify storage computer:alu a set from storage computer:alu stack[-1].u16
execute if score _u16 alu matches 32768.. run data modify storage computer:alu b set value 65536
execute if score _u16 alu matches 32768.. run function computer:alu/int/hw_sub
execute store result score _u16 alu run data get storage computer:alu stack[-1].u16
execute if score _u16 alu matches 32768.. run return run function computer:alu/stack/pop

# return u16;
data modify storage computer:alu result set from storage computer:alu stack[-1].u16

# pop frame
function computer:alu/stack/pop
#!jvmtimer end alu_int_sign_extend_16
