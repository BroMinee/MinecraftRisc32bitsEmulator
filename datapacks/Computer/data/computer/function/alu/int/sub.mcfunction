# Inputs: computer:alu a, computer:alu b
# Outputs: computer:alu result
# public static int sub(int a, int b) { return add(a, negate(b)); }

# push new frame context
function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a
data modify storage computer:alu stack[-1].b set from storage computer:alu b

# negate(b)
data modify storage computer:alu a set from storage computer:alu stack[-1].b
function computer:alu/int/negate

# add(a, negate(b))
data modify storage computer:alu b set from storage computer:alu result
data modify storage computer:alu a set from storage computer:alu stack[-1].a
function computer:alu/int/add

# pop frame
function computer:alu/stack/pop
