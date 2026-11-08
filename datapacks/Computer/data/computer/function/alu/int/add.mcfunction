# Inputs: computer:alu a, computer:alu b
# Outputs: computer:alu result
# public static int add(int a, int b) {

# push new frame context
function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a
data modify storage computer:alu stack[-1].b set from storage computer:alu b

# if ((a >= 0 && b >= 0) || (a < 0 && b < 0)) {
#   int bFlipped = flipSignBit(b);
#   int safeSum = hwAdd(a, bFlipped);
#   return flipSignBit(safeSum);
data modify storage computer:alu stack[-1]._same_sign set value 0
execute store result score _a alu run data get storage computer:alu stack[-1].a
execute store result score _b alu run data get storage computer:alu stack[-1].b
execute if score _a alu matches 0.. if score _b alu matches 0.. run data modify storage computer:alu stack[-1]._same_sign set value 1
execute if score _a alu matches ..-1 if score _b alu matches ..-1 run data modify storage computer:alu stack[-1]._same_sign set value 1

execute store result score _ss alu run data get storage computer:alu stack[-1]._same_sign
execute if score _ss alu matches 1 run data modify storage computer:alu a set from storage computer:alu stack[-1].b
execute if score _ss alu matches 1 run function computer:alu/int/flip_sign_bit
execute store result score _ss alu run data get storage computer:alu stack[-1]._same_sign
execute if score _ss alu matches 1 run data modify storage computer:alu b set from storage computer:alu result
execute if score _ss alu matches 1 run data modify storage computer:alu a set from storage computer:alu stack[-1].a
execute if score _ss alu matches 1 run function computer:alu/int/hw_add
execute store result score _ss alu run data get storage computer:alu stack[-1]._same_sign
execute if score _ss alu matches 1 run data modify storage computer:alu a set from storage computer:alu result
execute if score _ss alu matches 1 run function computer:alu/int/flip_sign_bit
execute store result score _ss alu run data get storage computer:alu stack[-1]._same_sign
execute if score _ss alu matches 1 run return run function computer:alu/stack/pop

# return hwAdd(a, b);
data modify storage computer:alu a set from storage computer:alu stack[-1].a
data modify storage computer:alu b set from storage computer:alu stack[-1].b
function computer:alu/int/hw_add

# pop frame
function computer:alu/stack/pop
