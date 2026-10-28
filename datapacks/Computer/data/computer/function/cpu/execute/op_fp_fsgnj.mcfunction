# case 0x10: fsgnj variants -> f[rd]
# Input: computer:cpu rs1, rs2, rd, funct3

function computer:cycle/load_frs1 with storage computer:cpu
function computer:cycle/load_frs2 with storage computer:cpu

function computer:cpu/execute/op_fp_fsgnj_dispatch

data modify storage computer:cpu rd_val set from storage computer:alu result
function computer:cycle/write_frd with storage computer:cpu
