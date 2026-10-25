# Inputs: computer:alu a, computer:alu b
# Outputs: computer:alu result
# public static int hwDiv(int a, int b) {

# if (b == 0 || (a == MIN_INT && b == -1)) {
execute if data storage computer:alu {b:0} run return run function computer:debug/print_error {"message": {"text": "Signed 32-bit division error in hw_div", "color":"red"}}
execute if data storage computer:alu {a:-2147483648,b:-1} run return run function computer:debug/print_error {"message": {"text": "Signed 32-bit division error in hw_div", "color":"red"}}

# return a / b;
data modify storage computer:alu result set compute default integer computer:alu/hw_div
