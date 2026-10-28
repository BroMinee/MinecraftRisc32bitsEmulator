# switch (funct7) for OP-FP
# Input:  computer:cpu rs1, rs2, rd, funct3, funct7
# Output: writes to f<rd> or x<rd>

# case 0x00: f[rd] = fadd.s(f[r1], f[r2])
execute if data storage computer:cpu {funct7: 0} run return run function computer:cpu/execute/op_fp_f2f

# case 0x04: f[rd] = fsub.s(f[r1], f[r2])
execute if data storage computer:cpu {funct7: 4} run return run function computer:cpu/execute/op_fp_f2f

# case 0x08: f[rd] = fmul.s(f[r1], f[r2])
execute if data storage computer:cpu {funct7: 8} run return run function computer:cpu/execute/op_fp_f2f

# case 0x0C: f[rd] = fdiv.s(f[r1], f[r2])
execute if data storage computer:cpu {funct7: 12} run return run function computer:cpu/execute/op_fp_f2f

# case 0x10: fsgnj (switch on funct3)
execute if data storage computer:cpu {funct7: 16} run return run function computer:cpu/execute/op_fp_fsgnj

# case 0x14: fmin/fmax (switch on funct3)
execute if data storage computer:cpu {funct7: 20} run return run function computer:cpu/execute/op_fp_fminmax

# case 0x50: feq/flt/fle (switch on funct3) -> writes x[rd]
execute if data storage computer:cpu {funct7: 80} run return run function computer:cpu/execute/op_fp_fcmp

# case 0x60: fcvt.w.s / fcvt.wu.s -> writes x[rd]
execute if data storage computer:cpu {funct7: 96} run return run function computer:cpu/execute/op_fp_fcvt_w

# case 0x68: fcvt.s.w / fcvt.s.wu -> writes f[rd]
execute if data storage computer:cpu {funct7: 104} run return run function computer:cpu/execute/op_fp_fcvt_s

# case 0x70: fmv.x.w / fclass.s -> writes x[rd]
execute if data storage computer:cpu {funct7: 112} run return run function computer:cpu/execute/op_fp_f70

# case 0x78: f[rd] = fmv.w.x(x[r1])
execute if data storage computer:cpu {funct7: 120} run return run function computer:cpu/execute/op_fp_fmv_w_x

# default:
function computer:debug/print_error {"message": [{"text":"Unknown FP funct7: "},{"nbt":"funct7","storage":"computer:cpu"},{"text": " at PC="},{"nbt":"pc","storage":"computer:cpu"}]}
