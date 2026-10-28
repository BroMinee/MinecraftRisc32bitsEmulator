# case 0x60: fcvt.w.s / fcvt.wu.s -> x[rd]
# Input: computer:cpu rs1, rs2, rd

function computer:cycle/load_frs1 with storage computer:cpu

execute if data storage computer:cpu {rs2: 0} run function computer:instruction/fcvt.w.s
execute unless data storage computer:cpu {rs2: 0} run function computer:instruction/fcvt.wu.s

data modify storage computer:cpu rd_val set from storage computer:alu result
function computer:cycle/write_rd with storage computer:cpu
