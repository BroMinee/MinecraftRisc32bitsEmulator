# switch (funct3) for MUL/DIV (f7 == 0x01)
# Input:  computer:cpu rs1_val, rs2_val, funct3
# Output: computer:alu result

# case 0: return Instructions.mul(rs1v, rs2v);
execute if data storage computer:cpu {funct3: 0} run return run function computer:instruction/mul

# case 1: return Instructions.mulh(rs1v, rs2v);
execute if data storage computer:cpu {funct3: 1} run return run function computer:instruction/mulh

# case 2: return Instructions.mulhsu(rs1v, rs2v);
execute if data storage computer:cpu {funct3: 2} run return run function computer:instruction/mulhsu

# case 3: return Instructions.mulhu(rs1v, rs2v);
execute if data storage computer:cpu {funct3: 3} run return run function computer:instruction/mulhu

# case 4: return Instructions.div(rs1v, rs2v);
execute if data storage computer:cpu {funct3: 4} run return run function computer:instruction/div

# case 5: return Instructions.divu(rs1v, rs2v);
execute if data storage computer:cpu {funct3: 5} run return run function computer:instruction/divu

# case 6: return Instructions.rem(rs1v, rs2v);
execute if data storage computer:cpu {funct3: 6} run return run function computer:instruction/rem

# case 7: return Instructions.remu(rs1v, rs2v);
execute if data storage computer:cpu {funct3: 7} run return run function computer:instruction/remu
