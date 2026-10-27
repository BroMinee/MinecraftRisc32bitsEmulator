# case 0: (f7 == 0x20) ? Instructions.sub(rs1v, rs2v) : Instructions.add(rs1v, rs2v)
# Input:  computer:cpu rs1_val, rs2_val, funct7
# Output: computer:alu result

execute if data storage computer:cpu {funct7: 32} run return run function computer:instruction/sub
function computer:instruction/add
