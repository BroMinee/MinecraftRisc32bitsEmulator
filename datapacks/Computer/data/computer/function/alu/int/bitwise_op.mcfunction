# Inputs: computer:alu a, computer:alu b, computer:alu mode
# Outputs: computer:alu result
# private static int bitwiseOp(int a, int b, int mode) {

# push new frame context
function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a
data modify storage computer:alu stack[-1].b set from storage computer:alu b
data modify storage computer:alu stack[-1].mode set from storage computer:alu mode

execute if data storage computer:alu {mode: 0} run data modify storage computer:alu result set compute default integer computer:alu/bitwise_and
execute if data storage computer:alu {mode: 1} run data modify storage computer:alu result set compute default integer computer:alu/bitwise_or
execute if data storage computer:alu {mode: 2} run data modify storage computer:alu result set compute default integer computer:alu/bitwise_xor


# pop frame
function computer:alu/stack/pop
