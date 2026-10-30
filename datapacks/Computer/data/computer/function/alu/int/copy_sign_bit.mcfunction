#!jvmtimer start alu_int_copy_sign_bit
# Inputs: computer:alu a, computer:alu b
# Outputs: computer:alu result
# public static int copySignBit(int a, int b) {

# push new frame context
function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a
data modify storage computer:alu stack[-1].b set from storage computer:alu b

# int mag = low31(a);
function computer:alu/int/low31
data modify storage computer:alu stack[-1].mag set from storage computer:alu result

# return b < 0 ? flipSignBit(mag) : mag;
execute store result score _sign alu run data get storage computer:alu stack[-1].b
data modify storage computer:alu stack[-1]._neg set value 0
execute if score _sign alu matches ..-1 run data modify storage computer:alu stack[-1]._neg set value 1
execute store result score _neg alu run data get storage computer:alu stack[-1]._neg
execute if score _neg alu matches 1 run data modify storage computer:alu a set from storage computer:alu stack[-1].mag
execute if score _neg alu matches 1 run function computer:alu/int/flip_sign_bit
execute store result score _neg alu run data get storage computer:alu stack[-1]._neg
execute if score _neg alu matches 1 run return run function computer:alu/stack/pop

data modify storage computer:alu result set from storage computer:alu stack[-1].mag

# pop frame
function computer:alu/stack/pop
#!jvmtimer end alu_int_copy_sign_bit
