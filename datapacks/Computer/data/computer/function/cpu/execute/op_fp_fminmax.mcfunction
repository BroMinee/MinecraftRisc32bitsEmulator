# case 0x14: fmin/fmax -> f[rd]
# Input: computer:cpu rs1, rs2, rd, funct3

function computer:cycle/load_frs1 with storage computer:cpu
function computer:cycle/load_frs2 with storage computer:cpu

execute if data storage computer:cpu {funct3: 0} run function computer:instruction/fmin.s
execute if data storage computer:cpu {funct3: 1} run function computer:instruction/fmax.s

data modify storage computer:cpu rd_val set from storage computer:alu result
function computer:cycle/write_frd with storage computer:cpu
