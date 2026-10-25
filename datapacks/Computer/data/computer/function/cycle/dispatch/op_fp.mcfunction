# OP-FP dispatch on funct7
execute store result score _funct7 tests run data get storage computer:cpu funct7
execute store result score _funct3 tests run data get storage computer:cpu funct3

# 0x00 = 0 = FADD.S
execute if score _funct7 tests matches 0 run return run function computer:instruction/fadd.s

# 0x04 = 4 = FSUB.S
execute if score _funct7 tests matches 4 run return run function computer:instruction/fsub.s

# 0x08 = 8 = FMUL.S
execute if score _funct7 tests matches 8 run return run function computer:instruction/fmul.s

# 0x0C = 12 = FDIV.S
execute if score _funct7 tests matches 12 run return run function computer:instruction/fdiv.s

# 0x10 = 16 = FSGNJ (funct3: 0=FSGNJ.S, 1=FSGNJN.S, 2=FSGNJX.S)
execute if score _funct7 tests matches 16 run return run function computer:cycle/dispatch/op_fp_sgnj

# 0x14 = 20 = FMIN/FMAX (funct3: 0=FMIN.S, 1=FMAX.S)
execute if score _funct7 tests matches 20 if score _funct3 tests matches 0 run return run function computer:instruction/fmin.s
execute if score _funct7 tests matches 20 if score _funct3 tests matches 1 run return run function computer:instruction/fmax.s

# 0x50 = 80 = FCMP (funct3: 0=FLE.S, 1=FLT.S, 2=FEQ.S)
execute if score _funct7 tests matches 80 if score _funct3 tests matches 0 run return run function computer:instruction/fle.s
execute if score _funct7 tests matches 80 if score _funct3 tests matches 1 run return run function computer:instruction/flt.s
execute if score _funct7 tests matches 80 if score _funct3 tests matches 2 run return run function computer:instruction/feq.s

# 0x60 = 96 = FCVT.W.S / FCVT.WU.S (rs2: 0=FCVT.W.S, 1=FCVT.WU.S)
execute if score _funct7 tests matches 96 run return run function computer:cycle/dispatch/op_fp_fcvt_from_float

# 0x68 = 104 = FCVT.S.W / FCVT.S.WU (rs2: 0=FCVT.S.W, 1=FCVT.S.WU)
execute if score _funct7 tests matches 104 run return run function computer:cycle/dispatch/op_fp_fcvt_to_float

# 0x70 = 112 = FMV.X.W (funct3=0) / FCLASS.S (funct3=1)
execute if score _funct7 tests matches 112 if score _funct3 tests matches 0 run return run function computer:instruction/fmv.x.w
execute if score _funct7 tests matches 112 if score _funct3 tests matches 1 run return run function computer:instruction/fclass.s

# 0x78 = 120 = FMV.W.X
execute if score _funct7 tests matches 120 run return run function computer:instruction/fmv.w.x

# Unknown funct7
function computer:debug/print_error {"message": [{"text":"Unknown OP-FP funct7: "},{"score":{"name":"_funct7","objective":"tests"}}]}
