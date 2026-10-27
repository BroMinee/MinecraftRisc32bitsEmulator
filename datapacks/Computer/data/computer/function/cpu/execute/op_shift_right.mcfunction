# case 5: (f7 == 0x20) ? Instructions.sra(rs1v, rs2v) : Instructions.srl(rs1v, rs2v)
# Input:  computer:cpu rs1_val, rs2_val, funct7
# Output: computer:alu result

execute if data storage computer:cpu {funct7: 32} run return run function computer:instruction/sra
function computer:instruction/srl
