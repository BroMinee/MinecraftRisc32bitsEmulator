# case 0x50: feq/flt/fle -> x[rd]
# Input: computer:cpu rs1, rs2, rd, funct3

function computer:cycle/load_frs1 with storage computer:cpu
function computer:cycle/load_frs2 with storage computer:cpu

function computer:cpu/execute/op_fp_fcmp_dispatch

data modify storage computer:cpu rd_val set from storage computer:alu result
function computer:cycle/write_rd with storage computer:cpu
