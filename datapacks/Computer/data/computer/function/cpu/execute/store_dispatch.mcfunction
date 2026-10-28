# switch (funct3) for STORE
# Input:  computer:cpu _mem_addr, rs2_val, funct3
# Output: None

# case 0: Instructions.sb(mem, addr, val);
execute if data storage computer:cpu {funct3: 0} run return run function computer:instruction/sb

# case 1: Instructions.sh(mem, addr, val);
execute if data storage computer:cpu {funct3: 1} run return run function computer:instruction/sh

# case 2: Instructions.sw(mem, addr, val);
execute if data storage computer:cpu {funct3: 2} run return run function computer:instruction/sw

# default:
function computer:debug/print_error {"message": [{"text":"Unknown store funct3: "},{"nbt":"funct3","storage":"computer:cpu"},{"text": " at PC="},{"nbt":"pc","storage":"computer:cpu"}]}
