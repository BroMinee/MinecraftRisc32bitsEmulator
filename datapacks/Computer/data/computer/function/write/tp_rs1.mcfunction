# use rs1 as teleport destination
tp @s -512 0 -512

execute if score rs1_0 Computer matches 1 run tellraw @a[tag=WARNING] [{"text":""},{"text":""},{"text":"[WARNING] - ","bold":true,"color":"dark_purple"},{"text":"[TP rs1] rs1_0 must be 0 (align by 4)","bold":true,"color":"light_purple"}]
execute if score rs1_1 Computer matches 1 run tellraw @a[tag=WARNING] [{"text":""},{"text":""},{"text":"[WARNING] - ","bold":true,"color":"dark_purple"},{"text":"[TP rs1] rs1_1 must be 0 (align by 4)","bold":true,"color":"light_purple"}]
execute if score rs1_28 Computer matches 1 run tellraw @a[tag=WARNING] [{"text":""},{"text":""},{"text":"[WARNING] - ","bold":true,"color":"dark_purple"},{"text":"[TP rs1]: rs1_28 will by ignored","bold":true,"color":"light_purple"}]
execute if score rs1_29 Computer matches 1 run tellraw @a[tag=WARNING] [{"text":""},{"text":""},{"text":"[WARNING] - ","bold":true,"color":"dark_purple"},{"text":"[TP rs1]: rs1_29 will by ignored","bold":true,"color":"light_purple"}]
execute if score rs1_30 Computer matches 1 run tellraw @a[tag=WARNING] [{"text":""},{"text":""},{"text":"[WARNING] - ","bold":true,"color":"dark_purple"},{"text":"[TP rs1]: rs1_30 will by ignored","bold":true,"color":"light_purple"}]
execute if score rs1_31 Computer matches 1 run tellraw @a[tag=WARNING] [{"text":""},{"text":""},{"text":"[WARNING] - ","bold":true,"color":"dark_purple"},{"text":"[TP rs1]: rs1_31 will by ignored","bold":true,"color":"light_purple"}]


scoreboard players operation input_0 scoretp_x = rs1_0 Computer
scoreboard players operation input_1 scoretp_x = rs1_1 Computer
scoreboard players operation input_2 scoretp_x = rs1_2 Computer
scoreboard players operation input_3 scoretp_x = rs1_3 Computer
scoreboard players operation input_4 scoretp_x = rs1_4 Computer
scoreboard players operation input_5 scoretp_x = rs1_5 Computer
scoreboard players operation input_6 scoretp_x = rs1_6 Computer
scoreboard players operation input_7 scoretp_x = rs1_7 Computer
scoreboard players operation input_8 scoretp_x = rs1_8 Computer
scoreboard players operation input_9 scoretp_x = rs1_9 Computer
# scoreboard players operation input_10 scoretp_x = rs1_10 Computer
# scoreboard players operation input_11 scoretp_x = rs1_11 Computer

scoreboard players operation input_0 scoretp_z = rs1_10 Computer
scoreboard players operation input_1 scoretp_z = rs1_11 Computer
scoreboard players operation input_2 scoretp_z = rs1_12 Computer
scoreboard players operation input_3 scoretp_z = rs1_13 Computer
scoreboard players operation input_4 scoretp_z = rs1_14 Computer
scoreboard players operation input_5 scoretp_z = rs1_15 Computer
scoreboard players operation input_6 scoretp_z = rs1_16 Computer
scoreboard players operation input_7 scoretp_z = rs1_17 Computer
scoreboard players operation input_8 scoretp_z = rs1_18 Computer
scoreboard players operation input_9 scoretp_z = rs1_19 Computer
# scoreboard players operation input_10 scoretp_z = rs1_22 Computer
# scoreboard players operation input_11 scoretp_z = rs1_23 Computer

scoreboard players operation input_0 scoretp_y = rs1_20 Computer
scoreboard players operation input_1 scoretp_y = rs1_21 Computer
scoreboard players operation input_2 scoretp_y = rs1_22 Computer
scoreboard players operation input_3 scoretp_y = rs1_23 Computer
scoreboard players operation input_4 scoretp_y = rs1_24 Computer
scoreboard players operation input_5 scoretp_y = rs1_25 Computer
scoreboard players operation input_6 scoretp_y = rs1_26 Computer
scoreboard players operation input_7 scoretp_y = rs1_27 Computer

function tp:scoretp/x
function tp:scoretp/y
function tp:scoretp/z