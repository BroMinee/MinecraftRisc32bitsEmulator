#!jvmtimer start alu_int_mulhsu
# Inputs: computer:alu a, computer:alu b
# Outputs: computer:alu result
# public static int mulhsu(int a, int b) {

# push new frame context
function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a
data modify storage computer:alu stack[-1].b set from storage computer:alu b

# int[] lohi = mulUnsigned64(a, b);
function computer:alu/int/mul_unsigned_64
# cf mul_unsigned_64 return value
data modify storage computer:alu stack[-1].hi set from storage computer:alu result_hi

# if (a < 0) hi = sub(hi, b);
execute store result score _a alu run data get storage computer:alu stack[-1].a
execute if score _a alu matches ..-1 run data modify storage computer:alu a set from storage computer:alu stack[-1].hi
execute if score _a alu matches ..-1 run data modify storage computer:alu b set from storage computer:alu stack[-1].b
execute if score _a alu matches ..-1 run function computer:alu/int/sub
execute store result score _a alu run data get storage computer:alu stack[-1].a
execute if score _a alu matches ..-1 run data modify storage computer:alu stack[-1].hi set from storage computer:alu result

data modify storage computer:alu result set from storage computer:alu stack[-1].hi

# pop frame
function computer:alu/stack/pop
#!jvmtimer end alu_int_mulhsu
