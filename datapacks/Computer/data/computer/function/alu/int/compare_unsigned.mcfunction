#!jvmtimer start alu_int_compare_unsigned
# Inputs: computer:alu a, computer:alu b
# Outputs: computer:alu result
# public static int compareUnsigned(int a, int b) {

# push new frame context
function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a
data modify storage computer:alu stack[-1].b set from storage computer:alu b

# int ua = flipSignBit(a);
function computer:alu/int/flip_sign_bit
data modify storage computer:alu stack[-1].ua set from storage computer:alu result

# int ub = flipSignBit(b);
data modify storage computer:alu a set from storage computer:alu stack[-1].b
function computer:alu/int/flip_sign_bit
data modify storage computer:alu stack[-1].ub set from storage computer:alu result

# if (ua < ub) return -1;
# if (ua > ub) return 1;
# return 0;
execute store result score _ua alu run data get storage computer:alu stack[-1].ua
execute store result score _ub alu run data get storage computer:alu stack[-1].ub
data modify storage computer:alu result set value 0
execute if score _ua alu < _ub alu run data modify storage computer:alu result set value -1
execute if score _ua alu > _ub alu run data modify storage computer:alu result set value 1

# pop frame
function computer:alu/stack/pop
#!jvmtimer end alu_int_compare_unsigned
