# Input:  computer:cpu instr
# Output: computer:alu result
# private static int immJ(int instr) {
#     int b20    = maskLowBits(shrU(instr, 31), 1);
#     int b19_12 = maskLowBits(shrU(instr, 12), 8);
#     int b11    = maskLowBits(shrU(instr, 20), 1);
#     int b10_1  = maskLowBits(shrU(instr, 21), 10);
#     int imm = add(add(shl(b20, 20), shl(b19_12, 12)), add(shl(b11, 11), shl(b10_1, 1)));
#     if (b20 != 0) imm = sub(imm, 2097152);
#     return imm;
# }

function computer:alu/stack/push

# int b20 = maskLowBits(shrU(instr, 31), 1)
data modify storage computer:alu a set from storage computer:cpu instr
data modify storage computer:alu shift set value 31
function computer:alu/int/shr_u
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu bits set value 1
function computer:alu/int/mask_low_bits
data modify storage computer:alu stack[-1].b20 set from storage computer:alu result

# int b19_12 = maskLowBits(shrU(instr, 12), 8)
data modify storage computer:alu a set from storage computer:cpu instr
data modify storage computer:alu shift set value 12
function computer:alu/int/shr_u
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu bits set value 8
function computer:alu/int/mask_low_bits
data modify storage computer:alu stack[-1].b19_12 set from storage computer:alu result

# int b11 = maskLowBits(shrU(instr, 20), 1)
data modify storage computer:alu a set from storage computer:cpu instr
data modify storage computer:alu shift set value 20
function computer:alu/int/shr_u
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu bits set value 1
function computer:alu/int/mask_low_bits
data modify storage computer:alu stack[-1].b11 set from storage computer:alu result

# int b10_1 = maskLowBits(shrU(instr, 21), 10)
data modify storage computer:alu a set from storage computer:cpu instr
data modify storage computer:alu shift set value 21
function computer:alu/int/shr_u
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu bits set value 10
function computer:alu/int/mask_low_bits
data modify storage computer:alu stack[-1].b10_1 set from storage computer:alu result

# SafeAdderInt.shl(b20, 20)
data modify storage computer:alu a set from storage computer:alu stack[-1].b20
data modify storage computer:alu shift set value 20
function computer:alu/int/shl
data modify storage computer:alu stack[-1].t1 set from storage computer:alu result

# SafeAdderInt.shl(b19_12, 12)),
data modify storage computer:alu a set from storage computer:alu stack[-1].b19_12
data modify storage computer:alu shift set value 12
function computer:alu/int/shl

# SafeAdderInt.add(SafeAdderInt.shl(b20, 20), SafeAdderInt.shl(b19_12, 12))
data modify storage computer:alu a set from storage computer:alu stack[-1].t1
data modify storage computer:alu b set from storage computer:alu result
function computer:alu/int/add
data modify storage computer:alu stack[-1].left set from storage computer:alu result

# SafeAdderInt.shl(b11, 11)
data modify storage computer:alu a set from storage computer:alu stack[-1].b11
data modify storage computer:alu shift set value 11
function computer:alu/int/shl
data modify storage computer:alu stack[-1].t2 set from storage computer:alu result

# SafeAdderInt.shl(b10_1, 1)
data modify storage computer:alu a set from storage computer:alu stack[-1].b10_1
data modify storage computer:alu shift set value 1
function computer:alu/int/shl

# SafeAdderInt.add(SafeAdderInt.shl(b11, 11), SafeAdderInt.shl(b10_1, 1))
data modify storage computer:alu a set from storage computer:alu stack[-1].t2
data modify storage computer:alu b set from storage computer:alu result
function computer:alu/int/add

# imm = SafeAdderInt.add(
#            SafeAdderInt.add(SafeAdderInt.shl(b20, 20), SafeAdderInt.shl(b19_12, 12)),
#            SafeAdderInt.add(SafeAdderInt.shl(b11, 11), SafeAdderInt.shl(b10_1, 1))
#        );
data modify storage computer:alu a set from storage computer:alu stack[-1].left
data modify storage computer:alu b set from storage computer:alu result
function computer:alu/int/add
data modify storage computer:alu stack[-1].imm set from storage computer:alu result

# if (b20 != 0) imm = sub(imm, 2097152)
execute store result score _b20 alu run data get storage computer:alu stack[-1].b20
execute unless score _b20 alu matches 0 run data modify storage computer:alu a set from storage computer:alu stack[-1].imm
execute unless score _b20 alu matches 0 run data modify storage computer:alu b set value 2097152
execute unless score _b20 alu matches 0 run function computer:alu/int/sub
execute if score _b20 alu matches 0 run data modify storage computer:alu result set from storage computer:alu stack[-1].imm

function computer:alu/stack/pop
