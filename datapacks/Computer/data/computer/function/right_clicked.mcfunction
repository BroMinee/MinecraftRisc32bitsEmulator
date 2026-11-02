scoreboard players set _right_click alu 1
advancement revoke @s only computer:right_click
function computer:debug/print_log {message: {"text":"Right-Clicked","color":"red"}}