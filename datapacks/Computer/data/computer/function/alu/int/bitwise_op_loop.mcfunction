# Loop body for bitwiseOp — operates on parent's frame (stack[-1])
# Reads/writes: stack[-1].i, .curA, .curB, .resLow, .mode

# if (i >= 31) return;
execute store result score _i alu run data get storage computer:alu stack[-1].i
execute if score _i alu matches 31.. run return 0

# int qA = hwDiv(curA, 2);
data modify storage computer:alu a set from storage computer:alu stack[-1].curA
data modify storage computer:alu b set value 2
function computer:alu/int/hw_div
data modify storage computer:alu stack[-1].qA set from storage computer:alu result

# int bitA = hwSub(curA, hwMul(qA, 2));
data modify storage computer:alu a set from storage computer:alu stack[-1].qA
data modify storage computer:alu b set value 2
function computer:alu/int/hw_mul
data modify storage computer:alu b set from storage computer:alu result
data modify storage computer:alu a set from storage computer:alu stack[-1].curA
function computer:alu/int/hw_sub
data modify storage computer:alu stack[-1].bitA set from storage computer:alu result

# curA = qA;
data modify storage computer:alu stack[-1].curA set from storage computer:alu stack[-1].qA

# int qB = hwDiv(curB, 2);
data modify storage computer:alu a set from storage computer:alu stack[-1].curB
data modify storage computer:alu b set value 2
function computer:alu/int/hw_div
data modify storage computer:alu stack[-1].qB set from storage computer:alu result

# int bitB = hwSub(curB, hwMul(qB, 2));
data modify storage computer:alu a set from storage computer:alu stack[-1].qB
data modify storage computer:alu b set value 2
function computer:alu/int/hw_mul
data modify storage computer:alu b set from storage computer:alu result
data modify storage computer:alu a set from storage computer:alu stack[-1].curB
function computer:alu/int/hw_sub
data modify storage computer:alu stack[-1].bitB set from storage computer:alu result

# curB = qB;
data modify storage computer:alu stack[-1].curB set from storage computer:alu stack[-1].qB

# int bitRes;
# No need to init it, since it's an if/else it will be erase anyway
execute store result score _mode alu run data get storage computer:alu stack[-1].mode

# mode 0 (AND): bitRes = hwMul(bitA, bitB);
execute if score _mode alu matches 0 run data modify storage computer:alu a set from storage computer:alu stack[-1].bitA
execute if score _mode alu matches 0 run data modify storage computer:alu b set from storage computer:alu stack[-1].bitB
execute if score _mode alu matches 0 run function computer:alu/int/hw_mul
execute store result score _mode alu run data get storage computer:alu stack[-1].mode
execute if score _mode alu matches 0 run data modify storage computer:alu stack[-1].bitRes set from storage computer:alu result

# mode 1 (OR): bitRes = hwSub(hwAdd(bitA, bitB), hwMul(bitA, bitB));
execute if score _mode alu matches 1 run data modify storage computer:alu a set from storage computer:alu stack[-1].bitA
execute if score _mode alu matches 1 run data modify storage computer:alu b set from storage computer:alu stack[-1].bitB
execute if score _mode alu matches 1 run function computer:alu/int/hw_mul
execute store result score _mode alu run data get storage computer:alu stack[-1].mode
execute if score _mode alu matches 1 run data modify storage computer:alu stack[-1]._prod set from storage computer:alu result
execute if score _mode alu matches 1 run data modify storage computer:alu a set from storage computer:alu stack[-1].bitA
execute if score _mode alu matches 1 run data modify storage computer:alu b set from storage computer:alu stack[-1].bitB
execute if score _mode alu matches 1 run function computer:alu/int/hw_add
execute store result score _mode alu run data get storage computer:alu stack[-1].mode
execute if score _mode alu matches 1 run data modify storage computer:alu a set from storage computer:alu result
execute if score _mode alu matches 1 run data modify storage computer:alu b set from storage computer:alu stack[-1]._prod
execute if score _mode alu matches 1 run function computer:alu/int/hw_sub
execute store result score _mode alu run data get storage computer:alu stack[-1].mode
execute if score _mode alu matches 1 run data modify storage computer:alu stack[-1].bitRes set from storage computer:alu result

# mode 2 (XOR):
# int diff = hwSub(bitA, bitB);
# bitRes = hwMul(diff, diff);
execute if score _mode alu matches 2 run data modify storage computer:alu a set from storage computer:alu stack[-1].bitA
execute if score _mode alu matches 2 run data modify storage computer:alu b set from storage computer:alu stack[-1].bitB
execute if score _mode alu matches 2 run function computer:alu/int/hw_sub
execute store result score _mode alu run data get storage computer:alu stack[-1].mode
execute if score _mode alu matches 2 run data modify storage computer:alu a set from storage computer:alu result
execute if score _mode alu matches 2 run data modify storage computer:alu b set from storage computer:alu result
execute if score _mode alu matches 2 run function computer:alu/int/hw_mul
execute store result score _mode alu run data get storage computer:alu stack[-1].mode
execute if score _mode alu matches 2 run data modify storage computer:alu stack[-1].bitRes set from storage computer:alu result

# if (bitRes == 1) resLow = hwAdd(resLow, pow2(i));
execute store result score _br alu run data get storage computer:alu stack[-1].bitRes
execute if score _br alu matches 1 run data modify storage computer:alu n set from storage computer:alu stack[-1].i
execute if score _br alu matches 1 run function computer:alu/int/pow2
execute store result score _br alu run data get storage computer:alu stack[-1].bitRes
execute if score _br alu matches 1 run data modify storage computer:alu b set from storage computer:alu result
execute if score _br alu matches 1 run data modify storage computer:alu a set from storage computer:alu stack[-1].resLow
execute if score _br alu matches 1 run function computer:alu/int/hw_add
execute store result score _br alu run data get storage computer:alu stack[-1].bitRes
execute if score _br alu matches 1 run data modify storage computer:alu stack[-1].resLow set from storage computer:alu result

# i = hwAdd(i, 1);
data modify storage computer:alu a set from storage computer:alu stack[-1].i
data modify storage computer:alu b set value 1
function computer:alu/int/hw_add
data modify storage computer:alu stack[-1].i set from storage computer:alu result

# recurse
function computer:alu/int/bitwise_op_loop
