# switch (funct3) for fsgnj
# Input: computer:cpu rs1_val, rs2_val, funct3
# Output: computer:alu result

execute if data storage computer:cpu {funct3: 0} run return run function computer:instruction/fsgnj.s
execute if data storage computer:cpu {funct3: 1} run return run function computer:instruction/fsgnjn.s
execute if data storage computer:cpu {funct3: 2} run return run function computer:instruction/fsgnjx.s

function computer:debug/print_error {"message": [{"text":"Unknown FSGNJ funct3: "},{"nbt":"funct3","storage":"computer:cpu"},{"text": " at PC="},{"nbt":"pc","storage":"computer:cpu"}]}
