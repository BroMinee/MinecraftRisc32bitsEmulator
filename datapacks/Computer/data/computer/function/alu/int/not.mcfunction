#!jvmtimer start alu_int_not
# Inputs: computer:alu a
# Outputs: computer:alu result
# public static int not(int a) { return hwSub(-1, a); }

# push frame + copier l'argument
function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a

# return hwSub(-1, a);
data modify storage computer:alu b set from storage computer:alu stack[-1].a
data modify storage computer:alu a set value -1
function computer:alu/int/hw_sub

# pop frame
function computer:alu/stack/pop
#!jvmtimer end alu_int_not
