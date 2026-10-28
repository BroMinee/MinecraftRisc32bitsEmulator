# switch (funct3) for BRANCH
# Input:  computer:cpu rs1_val, rs2_val, funct3
# Output: computer:alu result (1 = taken, 0 = not taken)

# case 0: return beq(rs1v, rs2v);
execute if data storage computer:cpu {funct3: 0} run return run function computer:instruction/beq

# case 1: return bne(rs1v, rs2v);
execute if data storage computer:cpu {funct3: 1} run return run function computer:instruction/bne

# case 4: return blt(rs1v, rs2v);
execute if data storage computer:cpu {funct3: 4} run return run function computer:instruction/blt

# case 5: return bge(rs1v, rs2v);
execute if data storage computer:cpu {funct3: 5} run return run function computer:instruction/bge

# case 6: return bltu(rs1v, rs2v);
execute if data storage computer:cpu {funct3: 6} run return run function computer:instruction/bltu

# case 7: return bgeu(rs1v, rs2v);
execute if data storage computer:cpu {funct3: 7} run return run function computer:instruction/bgeu

# default:
function computer:debug/print_error {"message": [{"text":"Unknown branch funct3: "},{"nbt":"funct3","storage":"computer:cpu"},{"text": " at PC="},{"nbt":"pc","storage":"computer:cpu"}]}
