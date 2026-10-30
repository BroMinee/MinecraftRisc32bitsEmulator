#!jvmtimer start alu_int_shr_s
# Inputs: computer:alu a, computer:alu shift
# Outputs: computer:alu result
# public static int shrS(int a, int shift) {

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

# if (s == 31) return a < 0 ? -1 : 0;
# execute store result score _s alu run data get storage computer:alu stack[-1].s
execute if score _s alu matches 31 run data modify storage computer:alu result set value 0
execute if score _s alu matches 31 run execute store result score _a alu run data get storage computer:alu stack[-1].a
execute if score _s alu matches 31 if score _a alu matches ..-1 run data modify storage computer:alu result set value -1
execute if score _s alu matches 31 run return run function computer:alu/stack/pop

# if (a >= 0) return hwDiv(a, pow(2, s));
execute store result score _a alu run data get storage computer:alu stack[-1].a
data modify storage computer:alu stack[-1]._pos set value 0
execute if score _a alu matches 0.. run data modify storage computer:alu stack[-1]._pos set value 1
execute store result score _pos alu run data get storage computer:alu stack[-1]._pos
execute if score _pos alu matches 1 run data modify storage computer:alu n set from storage computer:alu stack[-1].s
execute if score _pos alu matches 1 run function computer:alu/int/pow2
execute store result score _pos alu run data get storage computer:alu stack[-1]._pos
execute if score _pos alu matches 1 run data modify storage computer:alu b set from storage computer:alu result
execute if score _pos alu matches 1 run data modify storage computer:alu a set from storage computer:alu stack[-1].a
execute if score _pos alu matches 1 run function computer:alu/int/hw_div
execute store result score _pos alu run data get storage computer:alu stack[-1]._pos
execute if score _pos alu matches 1 run return run function computer:alu/stack/pop

# int inv = not(a);
data modify storage computer:alu a set from storage computer:alu stack[-1].a
function computer:alu/int/not
data modify storage computer:alu stack[-1].inv set from storage computer:alu result

# int shiftedInv = hwDiv(inv, pow(2, s));
data modify storage computer:alu n set from storage computer:alu stack[-1].s
function computer:alu/int/pow2
data modify storage computer:alu b set from storage computer:alu result
data modify storage computer:alu a set from storage computer:alu stack[-1].inv
function computer:alu/int/hw_div

# return not(shiftedInv);
data modify storage computer:alu a set from storage computer:alu result
function computer:alu/int/not

# pop frame
function computer:alu/stack/pop
#!jvmtimer end alu_int_shr_s
