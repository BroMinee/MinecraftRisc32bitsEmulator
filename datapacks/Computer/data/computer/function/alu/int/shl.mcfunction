# Inputs: computer:alu a, computer:alu shift
# Outputs: computer:alu result
# public static int shl(int a, int shift) {

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

# if (s == 31) {
#   int bit0 = modPow2(low31(a), 1);
#   return bit0 == 1 ? MIN_INT : 0;
execute if score _s alu matches 31 run data modify storage computer:alu a set from storage computer:alu stack[-1].a
execute if score _s alu matches 31 run function computer:alu/int/low31
execute store result score _s alu run data get storage computer:alu stack[-1].s
execute if score _s alu matches 31 run data modify storage computer:alu a set from storage computer:alu result
execute if score _s alu matches 31 run data modify storage computer:alu bits set value 1
execute if score _s alu matches 31 run function computer:alu/int/mod_pow2
execute store result score _s alu run data get storage computer:alu stack[-1].s
execute if score _s alu matches 31 run data modify storage computer:alu stack[-1]._bit0 set from storage computer:alu result
execute if score _s alu matches 31 run data modify storage computer:alu result set value 0
execute if score _s alu matches 31 run execute store result score _bit0 alu run data get storage computer:alu stack[-1]._bit0
execute if score _s alu matches 31 if score _bit0 alu matches 1 run data modify storage computer:alu result set value -2147483648
execute if score _s alu matches 31 run return run function computer:alu/stack/pop

# int low = low31(a);
data modify storage computer:alu a set from storage computer:alu stack[-1].a
function computer:alu/int/low31
data modify storage computer:alu stack[-1].low set from storage computer:alu result

# int keepBits = hwSub(31, s);
data modify storage computer:alu a set value 31
data modify storage computer:alu b set from storage computer:alu stack[-1].s
function computer:alu/int/hw_sub
data modify storage computer:alu stack[-1].keepBits set from storage computer:alu result

# int kept = modPow2(low, keepBits);
data modify storage computer:alu a set from storage computer:alu stack[-1].low
data modify storage computer:alu bits set from storage computer:alu stack[-1].keepBits
function computer:alu/int/mod_pow2
data modify storage computer:alu stack[-1].kept set from storage computer:alu result

# int shifted = hwMul(kept, pow(2, s));
data modify storage computer:alu n set from storage computer:alu stack[-1].s
function computer:alu/int/pow2
data modify storage computer:alu b set from storage computer:alu result
data modify storage computer:alu a set from storage computer:alu stack[-1].kept
function computer:alu/int/hw_mul
data modify storage computer:alu stack[-1].shifted set from storage computer:alu result

# int newSignBit = modPow2(hwDiv(low, pow(2, keepBits)), 1);
data modify storage computer:alu n set from storage computer:alu stack[-1].keepBits
function computer:alu/int/pow2
data modify storage computer:alu b set from storage computer:alu result
data modify storage computer:alu a set from storage computer:alu stack[-1].low
function computer:alu/int/hw_div
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu bits set value 1
function computer:alu/int/mod_pow2
data modify storage computer:alu stack[-1].newSignBit set from storage computer:alu result

# return newSignBit == 1 ? flipSignBit(shifted) : shifted;
execute store result score _nsb alu run data get storage computer:alu stack[-1].newSignBit
execute if score _nsb alu matches 1 run data modify storage computer:alu a set from storage computer:alu stack[-1].shifted
execute if score _nsb alu matches 1 run function computer:alu/int/flip_sign_bit
execute store result score _nsb alu run data get storage computer:alu stack[-1].newSignBit
execute if score _nsb alu matches 1 run return run function computer:alu/stack/pop

# newSignBit != 1: return shifted;
data modify storage computer:alu result set from storage computer:alu stack[-1].shifted

# pop frame
function computer:alu/stack/pop
