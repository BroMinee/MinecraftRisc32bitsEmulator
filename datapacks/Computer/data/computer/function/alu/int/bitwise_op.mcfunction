# Inputs: computer:alu a, computer:alu b, computer:alu mode
# Outputs: computer:alu result
# private static int bitwiseOp(int a, int b, int mode) {

# push new frame context
function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a
data modify storage computer:alu stack[-1].b set from storage computer:alu b
data modify storage computer:alu stack[-1].mode set from storage computer:alu mode

# int curA = low31(a);
function computer:alu/int/low31
data modify storage computer:alu stack[-1].curA set from storage computer:alu result

# int curB = low31(b);
data modify storage computer:alu a set from storage computer:alu stack[-1].b
function computer:alu/int/low31
data modify storage computer:alu stack[-1].curB set from storage computer:alu result

# int resLow = 0; int i = 0;
data modify storage computer:alu stack[-1].resLow set value 0
data modify storage computer:alu stack[-1].i set value 0

# for (int i = 0; i < 31; i++)
function computer:alu/int/bitwise_op_loop

# int signA = a < 0 ? 1 : 0;
execute store result score _a alu run data get storage computer:alu stack[-1].a
data modify storage computer:alu stack[-1].signA set value 0
execute if score _a alu matches ..-1 run data modify storage computer:alu stack[-1].signA set value 1

# int signB = b < 0 ? 1 : 0;
execute store result score _b alu run data get storage computer:alu stack[-1].b
data modify storage computer:alu stack[-1].signB set value 0
execute if score _b alu matches ..-1 run data modify storage computer:alu stack[-1].signB set value 1

# int signRes (same logic as bitRes but for sign bits);
# No need to init it, since it's an if/else it will be erase anyway
execute store result score _mode alu run data get storage computer:alu stack[-1].mode
# mode 0 (AND): signRes = hwMul(signA, signB);
execute if score _mode alu matches 0 run data modify storage computer:alu a set from storage computer:alu stack[-1].signA
execute if score _mode alu matches 0 run data modify storage computer:alu b set from storage computer:alu stack[-1].signB
execute if score _mode alu matches 0 run function computer:alu/int/hw_mul
execute store result score _mode alu run data get storage computer:alu stack[-1].mode
execute if score _mode alu matches 0 run data modify storage computer:alu stack[-1].signRes set from storage computer:alu result

# mode 1 (OR): signRes = hwSub(hwAdd(signA, signB), hwMul(signA, signB));
execute if score _mode alu matches 1 run data modify storage computer:alu a set from storage computer:alu stack[-1].signA
execute if score _mode alu matches 1 run data modify storage computer:alu b set from storage computer:alu stack[-1].signB
execute if score _mode alu matches 1 run function computer:alu/int/hw_mul
execute store result score _mode alu run data get storage computer:alu stack[-1].mode
execute if score _mode alu matches 1 run data modify storage computer:alu stack[-1]._prod set from storage computer:alu result
execute if score _mode alu matches 1 run data modify storage computer:alu a set from storage computer:alu stack[-1].signA
execute if score _mode alu matches 1 run data modify storage computer:alu b set from storage computer:alu stack[-1].signB
execute if score _mode alu matches 1 run function computer:alu/int/hw_add
execute store result score _mode alu run data get storage computer:alu stack[-1].mode
execute if score _mode alu matches 1 run data modify storage computer:alu a set from storage computer:alu result
execute if score _mode alu matches 1 run data modify storage computer:alu b set from storage computer:alu stack[-1]._prod
execute if score _mode alu matches 1 run function computer:alu/int/hw_sub
execute store result score _mode alu run data get storage computer:alu stack[-1].mode
execute if score _mode alu matches 1 run data modify storage computer:alu stack[-1].signRes set from storage computer:alu result

# mode 2 (XOR):
# d = hwSub(signA, signB);
## signRes = hwMul(d,d);
execute if score _mode alu matches 2 run data modify storage computer:alu a set from storage computer:alu stack[-1].signA
execute if score _mode alu matches 2 run data modify storage computer:alu b set from storage computer:alu stack[-1].signB
execute if score _mode alu matches 2 run function computer:alu/int/hw_sub
execute store result score _mode alu run data get storage computer:alu stack[-1].mode
execute if score _mode alu matches 2 run data modify storage computer:alu a set from storage computer:alu result
execute if score _mode alu matches 2 run data modify storage computer:alu b set from storage computer:alu result
execute if score _mode alu matches 2 run function computer:alu/int/hw_mul
execute store result score _mode alu run data get storage computer:alu stack[-1].mode
execute if score _mode alu matches 2 run data modify storage computer:alu stack[-1].signRes set from storage computer:alu result

# return signRes == 1 ? flipSignBit(resLow) : resLow;
execute store result score _signRes alu run data get storage computer:alu stack[-1].signRes
execute if score _signRes alu matches 1 run data modify storage computer:alu a set from storage computer:alu stack[-1].resLow
execute if score _signRes alu matches 1 run function computer:alu/int/flip_sign_bit
execute store result score _signRes alu run data get storage computer:alu stack[-1].signRes
execute if score _signRes alu matches 1 run return run function computer:alu/stack/pop

data modify storage computer:alu result set from storage computer:alu stack[-1].resLow

# pop frame
function computer:alu/stack/pop
