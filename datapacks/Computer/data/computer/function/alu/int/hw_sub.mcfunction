# Inputs: computer:alu a, computer:alu b
# Outputs: computer:alu result
# public static int hwSub(int a, int b) {

execute store result score _a alu run data get storage computer:alu a
execute store result score _b alu run data get storage computer:alu b

# if (b < 0 && a > MAX_INT + b) {
execute if score _b alu matches ..-1 run data modify storage computer:alu _temp set compute default integer computer:alu/max_int_plus_b
execute if score _b alu matches ..-1 run execute store result score _limit alu run data get storage computer:alu _temp
execute if score _b alu matches ..-1 if score _a alu > _limit alu run return run function computer:debug/print_error {"message": {"text": "Signed 32-bit overflow in hw_sub", "color":"red"}}

# if (b > 0 && a < MIN_INT + b) {
execute if score _b alu matches 1.. run data modify storage computer:alu _temp set compute default integer computer:alu/min_int_plus_b
execute if score _b alu matches 1.. run execute store result score _limit alu run data get storage computer:alu _temp
execute if score _b alu matches 1.. if score _a alu < _limit alu run return run function computer:debug/print_error {"message": {"text": "Signed 32-bit underflow in hw_sub", "color":"red"}}

# return a - b
data modify storage computer:alu result set compute default integer computer:alu/hw_sub
