#!jvmtimer start alu_float_int_to_float
# Inputs: computer:alu a (int)
# Outputs: computer:alu result (float)
# public static float intToFloat(int a) { return (float) a; }

function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a

data modify storage computer:alu result set compute default float {"type":"minecraft:storage","storage":"computer:alu","path":"stack[-1].a"}

function computer:alu/stack/pop
#!jvmtimer end alu_float_int_to_float
