# Input:  computer:cpu instr
# Output: computer:result

# case 5: SRLI vs SRAI
# if (SafeAdderInt.maskLowBits(SafeAdderInt.shrU(funct7(instr), 5), 1) != 0)
#     x[rd] = SafeAdderInt.shrS(rs1v, shamt);
# else
#     x[rd] = SafeAdderInt.shrU(rs1v, shamt);

function computer:cpu/funct7

# SafeAdderInt.shrU(funct7(instr), 5)
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu shift set value 5
function computer:alu/int/shr_u

# SafeAdderInt.maskLowBits(SafeAdderInt.shrU(funct7(instr), 5), 1)
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu bits set value 1
function computer:alu/int/mask_low_bits

# if SafeAdderInt.maskLowBits(SafeAdderInt.shrU(funct7(instr), 5), 1) != 0 -> SRAI, else -> SRLI
execute unless data storage computer:alu {result: 0} run function computer:instruction/srai
execute if data storage computer:alu {result: 0} run function copmuter:instruction/srli
