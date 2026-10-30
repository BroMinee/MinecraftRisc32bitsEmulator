#!jvmtimer start alu_int_sign_extend_8
# Inputs: computer:alu a
# Outputs: computer:alu result
# public static int signExtend8(int a) {

# push new frame context
function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a

# int u8 = maskLowBits(a, 8);
data modify storage computer:alu bits set value 8
function computer:alu/int/mask_low_bits
data modify storage computer:alu stack[-1].u8 set from storage computer:alu result

# return u8 >= 128 ? hwSub(u8, 256) : u8;
execute store result score _u8 alu run data get storage computer:alu stack[-1].u8
execute if score _u8 alu matches 128.. run data modify storage computer:alu a set from storage computer:alu stack[-1].u8
execute if score _u8 alu matches 128.. run data modify storage computer:alu b set value 256
execute if score _u8 alu matches 128.. run function computer:alu/int/hw_sub
execute store result score _u8 alu run data get storage computer:alu stack[-1].u8
execute if score _u8 alu matches 128.. run return run function computer:alu/stack/pop

# u8 < 128: return u8;
data modify storage computer:alu result set from storage computer:alu stack[-1].u8

# pop frame
function computer:alu/stack/pop
#!jvmtimer end alu_int_sign_extend_8
