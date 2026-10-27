# switch (f3) for OP, with f7 == 0x01 for MUL/DIV
# Input:  computer:cpu rs1_val, rs2_val, funct3, funct7
# Output: computer:alu result

# if (f7 == 0x01) { execMulDiv(rd, rs1v, rs2v, f3); return; }
execute if data storage computer:cpu {funct7: 1} run return run function computer:cpu/execute/mul_div

# case 0: add/sub (distinguished by funct7)
execute if data storage computer:cpu {funct3: 0} run return run function computer:cpu/execute/op_add_sub

# case 1: return SafeAdderInt.shl(rs1v, SafeAdderInt.maskLowBits(rs2v, 5));
execute if data storage computer:cpu {funct3: 1} run return run function computer:instruction/sll

# case 2: return (rs1v < rs2v) ? 1 : 0;
execute if data storage computer:cpu {funct3: 2} run return run function computer:instruction/slt

# case 3: return (SafeAdderInt.compareUnsigned(rs1v, rs2v) < 0) ? 1 : 0;
execute if data storage computer:cpu {funct3: 3} run return run function computer:instruction/sltu

# case 4: return SafeAdderInt.xor(rs1v, rs2v);
execute if data storage computer:cpu {funct3: 4} run return run function computer:instruction/xor

# case 5: srl/sra (distinguished by funct7)
execute if data storage computer:cpu {funct3: 5} run return run function computer:cpu/execute/op_shift_right

# case 6: return SafeAdderInt.or(rs1v, rs2v);
execute if data storage computer:cpu {funct3: 6} run return run function computer:instruction/or

# case 7: return SafeAdderInt.and(rs1v, rs2v);
execute if data storage computer:cpu {funct3: 7} run return run function computer:instruction/and

# default:
function computer:debug/print_error {"message": [{"text":"Unknown OP funct3: "},{"nbt":"funct3","storage":"computer:cpu"},{"text": " at PC="},{"nbt":"pc","storage":"computer:cpu"}]}
