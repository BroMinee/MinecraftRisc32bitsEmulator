# f[rd] = instruction(f[r1], f[r2]) for fadd/fsub/fmul/fdiv
# Input: computer:cpu rs1, rs2, rd, funct7

function computer:cycle/load_frs1 with storage computer:cpu
function computer:cycle/load_frs2 with storage computer:cpu

execute if data storage computer:cpu {funct7: 0} run function computer:instruction/fadd.s
execute if data storage computer:cpu {funct7: 4} run function computer:instruction/fsub.s
execute if data storage computer:cpu {funct7: 8} run function computer:instruction/fmul.s
execute if data storage computer:cpu {funct7: 12} run function computer:instruction/fdiv.s

data modify storage computer:cpu rd_val set from storage computer:alu result
function computer:cycle/write_frd with storage computer:cpu
