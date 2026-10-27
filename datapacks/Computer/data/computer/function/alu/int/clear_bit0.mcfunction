# Inputs: computer:alu a
# Outputs: computer:alu result
# public static int clearBit0(int a) {

# push new frame context
function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a

# int low = low31(a);
function computer:alu/int/low31
# data modify storage computer:alu stack[-1].low set from storage computer:alu result
data modify storage computer:alu a set from storage computer:alu result

# int evenLow = hwMul(hwDiv(low, 2), 2);
# data modify storage computer:alu a set from storage computer:alu stack[-1].low
data modify storage computer:alu b set value 2
function computer:alu/int/hw_div
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu b set value 2
function computer:alu/int/hw_mul
data modify storage computer:alu stack[-1].evenLow set from storage computer:alu result

# return a < 0 ? flipSignBit(evenLow) : evenLow;
execute store result score _a alu run data get storage computer:alu stack[-1].a
data modify storage computer:alu stack[-1]._neg set value 0
execute if score _a alu matches ..-1 run data modify storage computer:alu stack[-1]._neg set value 1
execute store result score _neg alu run data get storage computer:alu stack[-1]._neg
execute if score _neg alu matches 1 run data modify storage computer:alu a set from storage computer:alu stack[-1].evenLow
execute if score _neg alu matches 1 run function computer:alu/int/flip_sign_bit
execute store result score _neg alu run data get storage computer:alu stack[-1]._neg
execute if score _neg alu matches 1 run return run function computer:alu/stack/pop

data modify storage computer:alu result set from storage computer:alu stack[-1].evenLow

# pop frame
function computer:alu/stack/pop
