# Inputs: computer:alu a
# Outputs: computer:alu result
# public static int not(int a) { return hwSub(-1, a); }

# callee-save push
function computer:alu/stack/not_push

# return hwSub(-1, a);
data modify storage computer:alu b set from storage computer:alu a
data modify storage computer:alu a set value -1
function computer:alu/int/hw_sub

# callee-save pop
function computer:alu/stack/not_pop
