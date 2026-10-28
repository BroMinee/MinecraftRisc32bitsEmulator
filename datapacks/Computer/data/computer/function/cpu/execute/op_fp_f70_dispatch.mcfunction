# switch (funct3) for f7=0x70
# Input: computer:cpu rs1_val, funct3
# Output: computer:alu result

execute if data storage computer:cpu {funct3: 0} run return run function computer:instruction/fmv.x.w
execute if data storage computer:cpu {funct3: 1} run return run function computer:instruction/fclass.s

function computer:debug/print_error {"message": [{"text":"Unknown FP f7=0x70 funct3: "},{"nbt":"funct3","storage":"computer:cpu"},{"text": " at PC="},{"nbt":"pc","storage":"computer:cpu"}]}
