# FCVT.W.S / FCVT.WU.S dispatch on rs2
execute store result score _rs2 tests run data get storage computer:cpu rs2

# rs2=0 = FCVT.W.S
execute if score _rs2 tests matches 0 run return run function computer:instruction/fcvt.w.s

# rs2=1 = FCVT.WU.S
execute if score _rs2 tests matches 1 run return run function computer:instruction/fcvt.wu.s

# Unknown rs2
function computer:debug/print_error {"message": [{"text":"Unknown FCVT from float rs2: "},{"score":{"name":"_rs2","objective":"tests"}}]}
