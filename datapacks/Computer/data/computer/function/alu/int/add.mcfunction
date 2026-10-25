# Inputs: computer:alu a, computer:alu b
# Outputs: computer:alu result
# public static int add(int a, int b) {

# callee-save push
function computer:alu/stack/add_push

execute store result score _a alu run data get storage computer:alu a
execute store result score _b alu run data get storage computer:alu b

# if ((a >= 0 && b >= 0) || (a < 0 && b < 0)) {
#   int bFlipped = flipSignBit(b);
#   int safeSum = hwAdd(a, bFlipped);
#   return flipSignBit(safeSum);
data modify storage computer:alu _temp set value 0
execute if score _a alu matches 0.. if score _b alu matches 0.. run data modify storage computer:alu _temp set value 1
execute if score _a alu matches ..-1 if score _b alu matches ..-1 run data modify storage computer:alu _temp set value 1

execute if data storage computer:alu {_temp: 1} run data modify storage computer:alu a set from storage computer:alu b
execute if data storage computer:alu {_temp: 1} run function computer:alu/int/flip_sign_bit
execute if data storage computer:alu {_temp: 1} run data modify storage computer:alu b set from storage computer:alu result
execute if data storage computer:alu {_temp: 1} run data modify storage computer:alu a set compute default integer {"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"_a"},"score":"alu"}
execute if data storage computer:alu {_temp: 1} run function computer:alu/int/hw_add
execute if data storage computer:alu {_temp: 1} run data modify storage computer:alu a set from storage computer:alu result
execute if data storage computer:alu {_temp: 1} run function computer:alu/int/flip_sign_bit
execute if data storage computer:alu {_temp: 1} run return run function computer:alu/stack/add_pop

# return hwAdd(a, b);
function computer:alu/int/hw_add

# callee-save pop
function computer:alu/stack/add_pop
