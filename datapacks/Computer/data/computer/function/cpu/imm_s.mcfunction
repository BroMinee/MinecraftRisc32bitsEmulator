# Input:  computer:cpu instr
# Output: computer:alu result
# private static int immS(int instr) {
#     int hi = SafeAdderInt.shl(SafeAdderInt.shrS(instr, 25), 5);
#     int lo = SafeAdderInt.maskLowBits(SafeAdderInt.shrU(instr, 7), 5);
#     return SafeAdderInt.add(hi, lo);
# }

function computer:alu/stack/push

# int hi = shl(shrS(instr, 25), 5)
data modify storage computer:alu a set from storage computer:cpu instr
data modify storage computer:alu shift set value 25
function computer:alu/int/shr_s
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu shift set value 5
function computer:alu/int/shl
data modify storage computer:alu stack[-1].hi set from storage computer:alu result

# int lo = maskLowBits(shrU(instr, 7), 5)
data modify storage computer:alu a set from storage computer:cpu instr
data modify storage computer:alu shift set value 7
function computer:alu/int/shr_u
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu bits set value 5
function computer:alu/int/mask_low_bits

# return add(hi, lo)
data modify storage computer:alu a set from storage computer:alu stack[-1].hi
data modify storage computer:alu b set from storage computer:alu result
function computer:alu/int/add

function computer:alu/stack/pop
