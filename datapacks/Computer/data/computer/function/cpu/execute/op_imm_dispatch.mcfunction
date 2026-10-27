# switch (funct3) for OP-IMM
# Input:  computer:cpu rs1_val, imm, shamt, funct3
# Output: computer:alu result

# case 0: return SafeAdderInt.add(rs1v, imm);
execute if data storage computer:cpu {funct3: 0} run return run function computer:instruction/addi

# case 2: return (rs1v < imm) ? 1 : 0;
execute if data storage computer:cpu {funct3: 2} run return run function computer:instruction/slti

# case 3: return (SafeAdderInt.compareUnsigned(rs1v, imm) < 0) ? 1 : 0;
execute if data storage computer:cpu {funct3: 3} run return run function computer:instruction/sltiu

# case 4: return SafeAdderInt.xor(rs1v, imm);
execute if data storage computer:cpu {funct3: 4} run return run function computer:instruction/xori

# case 6: return SafeAdderInt.or(rs1v, imm);
execute if data storage computer:cpu {funct3: 6} run return run function computer:instruction/ori

# case 7: return SafeAdderInt.and(rs1v, imm);
execute if data storage computer:cpu {funct3: 7} run return run function computer:instruction/andi

# case 1: return SafeAdderInt.shl(rs1v, shamt);
execute if data storage computer:cpu {funct3: 1} run return run function computer:instruction/slli

# case 5: SRLI / SRAI (distinguished by funct7 bit 5)
execute if data storage computer:cpu {funct3: 5} run return run function computer:cpu/execute/op_imm_shift_right

# default:
function computer:debug/print_error {"message": [{"text":"Unknown OP-IMM funct3: "},{"nbt":"funct3","storage":"computer:cpu"},{"text": " at PC="},{"nbt":"pc","storage":"computer:cpu"}]}
