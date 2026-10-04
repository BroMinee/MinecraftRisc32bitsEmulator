# Shift rd right by 1 and decrement count, loop until count = 0
function computer:alu/shift_rd_right_1
scoreboard players remove count Computer 1
execute if score count Computer matches 1.. run function computer:alu/shift_rd_right_loop
