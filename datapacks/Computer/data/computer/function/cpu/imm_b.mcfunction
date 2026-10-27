# Input:  computer:cpu instr
# Output: computer:alu result
# private static int immB(int instr) {
#     int b12   = maskLowBits(shrU(instr, 31), 1);
#     int b11   = maskLowBits(shrU(instr, 7), 1);
#     int b10_5 = maskLowBits(shrU(instr, 25), 6);
#     int b4_1  = maskLowBits(shrU(instr, 8), 4);
#     int imm = add(add(shl(b12, 12), shl(b11, 11)), add(shl(b10_5, 5), shl(b4_1, 1)));
#     if (b12 != 0) imm = sub(imm, 8192);
#     return imm;
# }

function computer:alu/stack/push

# int b12 = maskLowBits(shrU(instr, 31), 1)
data modify storage computer:alu a set from storage computer:cpu instr
data modify storage computer:alu shift set value 31
function computer:alu/int/shr_u
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu bits set value 1
function computer:alu/int/mask_low_bits
data modify storage computer:alu stack[-1].b12 set from storage computer:alu result

# int b11 = maskLowBits(shrU(instr, 7), 1)
data modify storage computer:alu a set from storage computer:cpu instr
data modify storage computer:alu shift set value 7
function computer:alu/int/shr_u
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu bits set value 1
function computer:alu/int/mask_low_bits
data modify storage computer:alu stack[-1].b11 set from storage computer:alu result

# int b10_5 = maskLowBits(shrU(instr, 25), 6)
data modify storage computer:alu a set from storage computer:cpu instr
data modify storage computer:alu shift set value 25
function computer:alu/int/shr_u
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu bits set value 6
function computer:alu/int/mask_low_bits
data modify storage computer:alu stack[-1].b10_5 set from storage computer:alu result

# int b4_1 = maskLowBits(shrU(instr, 8), 4)
data modify storage computer:alu a set from storage computer:cpu instr
data modify storage computer:alu shift set value 8
function computer:alu/int/shr_u
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu bits set value 4
function computer:alu/int/mask_low_bits
data modify storage computer:alu stack[-1].b4_1 set from storage computer:alu result

# SafeAdderInt.shl(b12, 12)
data modify storage computer:alu a set from storage computer:alu stack[-1].b12
data modify storage computer:alu shift set value 12
function computer:alu/int/shl
data modify storage computer:alu stack[-1].t1 set from storage computer:alu result

# SafeAdderInt.shl(b11, 11)
data modify storage computer:alu a set from storage computer:alu stack[-1].b11
data modify storage computer:alu shift set value 11
function computer:alu/int/shl

# SafeAdderInt.add(SafeAdderInt.shl(b12, 12), SafeAdderInt.shl(b11, 11)),
data modify storage computer:alu a set from storage computer:alu stack[-1].t1
data modify storage computer:alu b set from storage computer:alu result
function computer:alu/int/add
data modify storage computer:alu stack[-1].left set from storage computer:alu result

# SafeAdderInt.shl(b10_5, 5)
data modify storage computer:alu a set from storage computer:alu stack[-1].b10_5
data modify storage computer:alu shift set value 5
function computer:alu/int/shl
data modify storage computer:alu stack[-1].t2 set from storage computer:alu result

# SafeAdderInt.shl(b4_1, 1))
data modify storage computer:alu a set from storage computer:alu stack[-1].b4_1
data modify storage computer:alu shift set value 1
function computer:alu/int/shl

# SafeAdderInt.add(SafeAdderInt.shl(b10_5, 5), SafeAdderInt.shl(b4_1, 1))
data modify storage computer:alu a set from storage computer:alu stack[-1].t2
data modify storage computer:alu b set from storage computer:alu result
function computer:alu/int/add

# imm = SafeAdderInt.add(
#            SafeAdderInt.add(SafeAdderInt.shl(b12, 12), SafeAdderInt.shl(b11, 11)),
#            SafeAdderInt.add(SafeAdderInt.shl(b10_5, 5), SafeAdderInt.shl(b4_1, 1))
#        );
data modify storage computer:alu a set from storage computer:alu stack[-1].left
data modify storage computer:alu b set from storage computer:alu result
function computer:alu/int/add
data modify storage computer:alu stack[-1].imm set from storage computer:alu result

# if (b12 != 0) imm = sub(imm, 8192)
execute store result score _b12 alu run data get storage computer:alu stack[-1].b12
execute unless score _b12 alu matches 0 run data modify storage computer:alu a set from storage computer:alu stack[-1].imm
execute unless score _b12 alu matches 0 run data modify storage computer:alu b set value 8192
execute unless score _b12 alu matches 0 run function computer:alu/int/sub
execute if score _b12 alu matches 0 run data modify storage computer:alu result set from storage computer:alu stack[-1].imm

function computer:alu/stack/pop
