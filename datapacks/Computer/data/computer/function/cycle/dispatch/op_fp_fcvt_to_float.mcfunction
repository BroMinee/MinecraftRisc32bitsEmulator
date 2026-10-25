# FCVT.S.W / FCVT.S.WU dispatch on rs2
execute store result score _rs2 tests run data get storage computer:cpu rs2

# rs2=0 = FCVT.S.W
execute if score _rs2 tests matches 0 run return run function computer:instruction/fcvt.s.w

# rs2=1 = FCVT.S.WU
execute if score _rs2 tests matches 1 run return run function computer:instruction/fcvt.s.wu

# Unknown rs2
function computer:debug/print_error {"message": [{"text":"Unknown FCVT to float rs2: "},{"score":{"name":"_rs2","objective":"tests"}}]}
