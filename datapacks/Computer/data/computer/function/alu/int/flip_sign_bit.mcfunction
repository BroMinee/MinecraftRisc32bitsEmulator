# Inputs: computer:alu a
# Outputs: computer:alu result
# public static int flipSignBit(int a) {

# callee-save push
function computer:alu/stack/flip_sign_bit_push

execute store result score _a alu run data get storage computer:alu a

# if (a >= 0) {
#   return hwSub(hwSub(a, MAX_INT), 1);
execute if score _a alu matches 0.. run data modify storage computer:alu b set value 2147483647
execute if score _a alu matches 0.. run function computer:alu/int/hw_sub
execute if score _a alu matches 0.. run data modify storage computer:alu a set from storage computer:alu result
execute if score _a alu matches 0.. run data modify storage computer:alu b set value 1
execute if score _a alu matches 0.. run function computer:alu/int/hw_sub
execute if score _a alu matches 0.. run function computer:alu/stack/flip_sign_bit_pop
execute if score _a alu matches 0.. run return 0

# return hwAdd(hwAdd(a, MAX_INT), 1);
data modify storage computer:alu b set value 2147483647
function computer:alu/int/hw_add
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu b set value 1
function computer:alu/int/hw_add

# callee-save pop
function computer:alu/stack/flip_sign_bit_pop