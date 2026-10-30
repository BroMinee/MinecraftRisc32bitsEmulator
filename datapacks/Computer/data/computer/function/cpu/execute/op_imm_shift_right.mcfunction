# Input:  computer:cpu instr
# Output: computer:result

# case 5: SRLI vs SRAI
# if (SafeAdderInt.maskLowBits(SafeAdderInt.shrU(funct7(instr), 5), 1) != 0)
#     x[rd] = SafeAdderInt.shrS(rs1v, shamt);
# else
#     x[rd] = SafeAdderInt.shrU(rs1v, shamt);

# funct7 bit 5 = 0x20 -> SRAI, else -> SRLI
# check if >= 32 (bit 5 set)
data modify storage computer:cpu funct7 set compute default integer computer:cpu/funct7
execute store result score _f7 alu run data get storage computer:cpu funct7
execute if score _f7 alu matches 32.. run return run function computer:instruction/srai
function computer:instruction/srli
