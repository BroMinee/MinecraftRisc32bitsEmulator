# Inputs: computer:alu a, computer:alu shift
# Outputs: computer:alu result
# public static int shrU(int a, int shift) {

# push new frame context
function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a
data modify storage computer:alu stack[-1].shift set from storage computer:alu shift

# int s = maskLowBits(shift, 5);
data modify storage computer:alu a set from storage computer:alu stack[-1].shift
data modify storage computer:alu bits set value 5
function computer:alu/int/mask_low_bits
data modify storage computer:alu stack[-1].s set from storage computer:alu result

# if (s == 0) return a;
execute store result score _s alu run data get storage computer:alu stack[-1].s
execute if score _s alu matches 0 run data modify storage computer:alu result set from storage computer:alu stack[-1].a
execute if score _s alu matches 0 run return run function computer:alu/stack/pop

# if (s == 31) return a < 0 ? 1 : 0;
# execute store result score _s alu run data get storage computer:alu stack[-1].s
execute if score _s alu matches 31 run data modify storage computer:alu result set value 0
execute if score _s alu matches 31 run execute store result score _a alu run data get storage computer:alu stack[-1].a
execute if score _s alu matches 31 if score _a alu matches ..-1 run data modify storage computer:alu result set value 1
execute if score _s alu matches 31 run return run function computer:alu/stack/pop

# int low = low31(a);
data modify storage computer:alu a set from storage computer:alu stack[-1].a
function computer:alu/int/low31
data modify storage computer:alu stack[-1].low set from storage computer:alu result

# int shiftedLow = hwDiv(low, pow(2, s));
data modify storage computer:alu n set from storage computer:alu stack[-1].s
function computer:alu/int/pow2
data modify storage computer:alu stack[-1].p set from storage computer:alu result
data modify storage computer:alu a set from storage computer:alu stack[-1].low
data modify storage computer:alu b set from storage computer:alu stack[-1].p
function computer:alu/int/hw_div
data modify storage computer:alu stack[-1].shiftedLow set from storage computer:alu result

# if (a < 0) return hwAdd(shiftedLow, pow(2, hwSub(31, s)));
execute store result score _a alu run data get storage computer:alu stack[-1].a
data modify storage computer:alu stack[-1]._neg set value 0
execute if score _a alu matches ..-1 run data modify storage computer:alu stack[-1]._neg set value 1
execute store result score _neg alu run data get storage computer:alu stack[-1]._neg
execute if score _neg alu matches 1 run data modify storage computer:alu a set value 31
execute if score _neg alu matches 1 run data modify storage computer:alu b set from storage computer:alu stack[-1].s
execute if score _neg alu matches 1 run function computer:alu/int/hw_sub
execute store result score _neg alu run data get storage computer:alu stack[-1]._neg
execute if score _neg alu matches 1 run data modify storage computer:alu n set from storage computer:alu result
execute if score _neg alu matches 1 run function computer:alu/int/pow2
execute store result score _neg alu run data get storage computer:alu stack[-1]._neg
execute if score _neg alu matches 1 run data modify storage computer:alu b set from storage computer:alu result
execute if score _neg alu matches 1 run data modify storage computer:alu a set from storage computer:alu stack[-1].shiftedLow
execute if score _neg alu matches 1 run function computer:alu/int/hw_add
execute store result score _neg alu run data get storage computer:alu stack[-1]._neg
execute if score _neg alu matches 1 run return run function computer:alu/stack/pop

# return shiftedLow;
data modify storage computer:alu result set from storage computer:alu stack[-1].shiftedLow

# pop frame
function computer:alu/stack/pop
