# switch (funct3) for LOAD
# Input:  computer:cpu _mem_addr, funct3
# Output: computer:alu result

# case 0: return Instructions.lb(mem, addr);
execute if data storage computer:cpu {funct3: 0} run return run function computer:instruction/lb

# case 1: return Instructions.lh(mem, addr);
execute if data storage computer:cpu {funct3: 1} run return run function computer:instruction/lh

# case 2: return Instructions.lw(mem, addr);
execute if data storage computer:cpu {funct3: 2} run return run function computer:instruction/lw

# case 4: return Instructions.lbu(mem, addr);
execute if data storage computer:cpu {funct3: 4} run return run function computer:instruction/lbu

# case 5: return Instructions.lhu(mem, addr);
execute if data storage computer:cpu {funct3: 5} run return run function computer:instruction/lhu

# default:
function computer:debug/print_error {"message": [{"text":"Unknown load funct3: "},{"nbt":"funct3","storage":"computer:cpu"},{"text": " at PC="},{"nbt":"pc","storage":"computer:cpu"}]}
