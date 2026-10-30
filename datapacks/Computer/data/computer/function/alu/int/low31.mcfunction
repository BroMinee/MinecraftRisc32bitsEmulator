#!jvmtimer start alu_int_low31
# Inputs: computer:alu a
# Outputs: computer:alu result
# public static int low31(int a) { return a < 0 ? flipSignBit(a) : a; }

# push new frame context
function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a

# if (a < 0) return flipSignBit(a);
data modify storage computer:alu stack[-1]._neg set value 0
execute store result score _a alu run data get storage computer:alu stack[-1].a
execute if score _a alu matches ..-1 run data modify storage computer:alu stack[-1]._neg set value 1
execute store result score _neg alu run data get storage computer:alu stack[-1]._neg
execute if score _neg alu matches 1 run function computer:alu/int/flip_sign_bit
execute store result score _neg alu run data get storage computer:alu stack[-1]._neg
execute if score _neg alu matches 1 run return run function computer:alu/stack/pop

# return a;
data modify storage computer:alu result set from storage computer:alu stack[-1].a

# pop frame
function computer:alu/stack/pop
#!jvmtimer end alu_int_low31
