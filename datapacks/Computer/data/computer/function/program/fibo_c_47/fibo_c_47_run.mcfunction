# load
function computer:program/fibo_c_47/fibo_c_47_load
# run
function computer:program/fibo_c_47/fibo_c_47_run_until_end
# end
execute if score error stats matches 1 run function computer:debug/print_error {"message": '{"text":"Program has been stopped","color":"red"}'}
execute if score done stats matches 1 run function computer:debug/print_log {"message": '{"text":"Program has been completed","bold":true,"color":"green"}'}
data modify storage computer:debug reg set value "x10"
function computer:debug/register/print_int with storage computer:debug
