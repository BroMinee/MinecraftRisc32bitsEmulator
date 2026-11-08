# Inputs: computer:alu a
# Outputs: computer:alu result
# public static int negate(int a) { return add(not(a), 1); }

# push new frame context
function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a

# not(a)
function computer:alu/int/not

# add(not(a), 1)
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu b set value 1
function computer:alu/int/add

# pop frame
function computer:alu/stack/pop
