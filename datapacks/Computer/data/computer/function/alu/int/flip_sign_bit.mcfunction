# Inputs: computer:alu a
# Outputs: computer:alu result
# public static int flipSignBit(int a) {

# push frame + copier l'argument
function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a

# store sign flag: _positive = (a >= 0) ? 1 : 0
data modify storage computer:alu stack[-1]._positive set value 0
execute store result score _a alu run data get storage computer:alu stack[-1].a
execute if score _a alu matches 0.. run data modify storage computer:alu stack[-1]._positive set value 1

# if (a >= 0) {
#   return hwSub(hwSub(a, MAX_INT), 1);
execute store result score _pos alu run data get storage computer:alu stack[-1]._positive
execute if score _pos alu matches 1 run data modify storage computer:alu a set from storage computer:alu stack[-1].a
execute if score _pos alu matches 1 run data modify storage computer:alu b set value 2147483647
execute if score _pos alu matches 1 run function computer:alu/int/hw_sub
execute store result score _pos alu run data get storage computer:alu stack[-1]._positive
execute if score _pos alu matches 1 run data modify storage computer:alu a set from storage computer:alu result
execute if score _pos alu matches 1 run data modify storage computer:alu b set value 1
execute if score _pos alu matches 1 run function computer:alu/int/hw_sub
execute store result score _pos alu run data get storage computer:alu stack[-1]._positive
execute if score _pos alu matches 1 run return run function computer:alu/stack/pop

# return hwAdd(hwAdd(a, MAX_INT), 1);
data modify storage computer:alu a set from storage computer:alu stack[-1].a
data modify storage computer:alu b set value 2147483647
function computer:alu/int/hw_add
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu b set value 1
function computer:alu/int/hw_add

# pop frame
function computer:alu/stack/pop
