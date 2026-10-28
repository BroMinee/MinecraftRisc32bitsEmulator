# case 0x68: fcvt.s.w / fcvt.s.wu -> f[rd]
# Input: computer:cpu rs1, rs2, rd

function computer:cycle/load_rs1 with storage computer:cpu

execute if data storage computer:cpu {rs2: 0} run function computer:instruction/fcvt.s.w
execute unless data storage computer:cpu {rs2: 0} run function computer:instruction/fcvt.s.wu

data modify storage computer:cpu rd_val set from storage computer:alu result
function computer:cycle/write_frd with storage computer:cpu
