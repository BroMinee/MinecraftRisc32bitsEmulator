# Inputs: computer:alu a, computer:alu b
# Outputs: computer:alu result
# public static int hwMul(int a, int b) {

# push new frame context
function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a
data modify storage computer:alu stack[-1].b set from storage computer:alu b

# if (a == 0 || b == 0) return 0;
execute if data storage computer:alu {a:0} run data modify storage computer:alu result set value 0
execute if data storage computer:alu {a:0} run return run function computer:alu/stack/pop
execute if data storage computer:alu {b:0} run data modify storage computer:alu result set value 0
execute if data storage computer:alu {b:0} run return run function computer:alu/stack/pop

# if (a == MIN_INT && b == -1) {
execute if data storage computer:alu {a:-2147483648,b:-1} run return run function computer:debug/print_error {"message": {"text": "Signed 32-bit overflow in hw_mul", "color":"red"}}

# int res = a * b;
data modify storage computer:alu result set compute default integer computer:alu/hw_mul

# if (res / b != a) {
data modify storage computer:alu _temp set compute default integer computer:alu/hw_mul_check
execute store result score _check alu run data get storage computer:alu _temp
execute store result score _a alu run data get storage computer:alu stack[-1].a
execute unless score _check alu = _a alu run return run function computer:debug/print_error {"message": {"text": "Signed 32-bit overflow in hw_mul", "color":"red"}}

# return res;
function computer:alu/stack/pop
