# load
function computer:program_load

# run
function computer:program_run_until_end

# end
execute if score error stats matches 1 run function computer:debug/print_error {"message": '{"text":"Program has been stopped","color":"red"}'}
execute if score done stats matches 1 run function computer:debug/print_log {"message": '{"text":"Program has been completed","bold":true,"color":"green"}'}
