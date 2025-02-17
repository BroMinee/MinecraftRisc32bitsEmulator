# should be runned as pc armor stand
# read pc_[0-31] Computer

tp @s 0 0 -1

execute if score pc_0 Computer matches 1.. run tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"[ERROR] - ","bold":true,"color":"blue"},{"text":"Error pc_0 must be 0 (align by 4)","bold":true,"color":"dark_red"}] 
execute if score pc_1 Computer matches 1.. run tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"[ERROR] - ","bold":true,"color":"blue"},{"text":"Error pc_1 must be 0 (align by 4)","bold":true,"color":"dark_red"}]

scoreboard players operation input_0 scoretp_x = pc_0 Computer
scoreboard players operation input_1 scoretp_x = pc_1 Computer
scoreboard players operation input_2 scoretp_x = pc_2 Computer
scoreboard players operation input_3 scoretp_x = pc_3 Computer
scoreboard players operation input_4 scoretp_x = pc_4 Computer
scoreboard players operation input_5 scoretp_x = pc_5 Computer
scoreboard players operation input_6 scoretp_x = pc_6 Computer
scoreboard players operation input_7 scoretp_x = pc_7 Computer
scoreboard players operation input_8 scoretp_x = pc_8 Computer
scoreboard players operation input_9 scoretp_x = pc_9 Computer
scoreboard players operation input_10 scoretp_x = pc_10 Computer
scoreboard players operation input_11 scoretp_x = pc_11 Computer

scoreboard players operation input_0 scoretp_z = pc_12 Computer
scoreboard players operation input_1 scoretp_z = pc_13 Computer
scoreboard players operation input_2 scoretp_z = pc_14 Computer
scoreboard players operation input_3 scoretp_z = pc_15 Computer
scoreboard players operation input_4 scoretp_z = pc_16 Computer
scoreboard players operation input_5 scoretp_z = pc_17 Computer
scoreboard players operation input_6 scoretp_z = pc_18 Computer
scoreboard players operation input_7 scoretp_z = pc_19 Computer
scoreboard players operation input_8 scoretp_z = pc_20 Computer
scoreboard players operation input_9 scoretp_z = pc_21 Computer
scoreboard players operation input_10 scoretp_z = pc_22 Computer
scoreboard players operation input_11 scoretp_z = pc_23 Computer

scoreboard players operation input_0 scoretp_y = pc_24 Computer
scoreboard players operation input_1 scoretp_y = pc_25 Computer
scoreboard players operation input_2 scoretp_y = pc_26 Computer
scoreboard players operation input_3 scoretp_y = pc_27 Computer
scoreboard players operation input_4 scoretp_y = pc_28 Computer
scoreboard players operation input_5 scoretp_y = pc_29 Computer
scoreboard players operation input_6 scoretp_y = pc_30 Computer
scoreboard players operation input_7 scoretp_y = pc_31 Computer

function tp:scoretp/x
function tp:scoretp/y
function tp:scoretp/z