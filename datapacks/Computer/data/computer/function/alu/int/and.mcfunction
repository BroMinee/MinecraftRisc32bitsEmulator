# Inputs: computer:alu a, computer:alu b
# Outputs: computer:alu result
# public static int and(int a, int b) { return bitwiseOp(a, b, 0); }

# push new frame context
# function computer:alu/stack/push
# data modify storage computer:alu stack[-1].a set from storage computer:alu a
# data modify storage computer:alu stack[-1].b set from storage computer:alu b

data modify storage computer:alu mode set value 0
function computer:alu/int/bitwise_op

# pop frame
# function computer:alu/stack/pop
