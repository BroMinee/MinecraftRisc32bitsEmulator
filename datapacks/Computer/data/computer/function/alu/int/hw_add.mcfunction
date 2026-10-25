# Inputs: computer:alu a, computer:alu b
# Outputs: computer:alu result
# public static int hwAdd(int a, int b) {

# push new frame context
function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a
data modify storage computer:alu stack[-1].b set from storage computer:alu b

# if (a > 0 && b > MAX_INT - a) {
execute store result score _a alu run data get storage computer:alu stack[-1].a
execute if score _a alu matches 1.. run data modify storage computer:alu _temp set compute default integer computer:alu/max_int_minus_a
execute if score _a alu matches 1.. run execute store result score _limit alu run data get storage computer:alu _temp
execute store result score _b alu run data get storage computer:alu stack[-1].b
execute if score _a alu matches 1.. if score _b alu > _limit alu run return run function computer:debug/print_error {"message": {"text": "Signed 32-bit overflow in hw_add", "color":"red"}}

# if (a < 0 && b < MIN_INT - a) {
execute store result score _a alu run data get storage computer:alu stack[-1].a
execute if score _a alu matches ..-1 run data modify storage computer:alu _temp set compute default integer computer:alu/min_int_minus_a
execute if score _a alu matches ..-1 run execute store result score _limit alu run data get storage computer:alu _temp
execute store result score _b alu run data get storage computer:alu stack[-1].b
execute if score _a alu matches ..-1 if score _b alu < _limit alu run return run function computer:debug/print_error {"message": {"text": "Signed 32-bit underflow in hw_add", "color":"red"}}

# return a + b;
data modify storage computer:alu result set compute default integer computer:alu/hw_add

# pop frame
function computer:alu/stack/pop
