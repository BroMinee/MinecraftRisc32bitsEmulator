# case 0x70: fmv.x.w / fclass.s -> x[rd]
# Input: computer:cpu rs1, rd, funct3

function computer:cycle/load_frs1 with storage computer:cpu

function computer:cpu/execute/op_fp_f70_dispatch

data modify storage computer:cpu rd_val set from storage computer:alu result
function computer:cycle/write_rd with storage computer:cpu
