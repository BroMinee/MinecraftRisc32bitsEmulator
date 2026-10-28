# case 0x78: f[rd] = fmv.w.x(x[r1])
# Input: computer:cpu rs1, rd

function computer:cycle/load_rs1 with storage computer:cpu
function computer:instruction/fmv.w.x

data modify storage computer:cpu rd_val set from storage computer:alu result
function computer:cycle/write_frd with storage computer:cpu
