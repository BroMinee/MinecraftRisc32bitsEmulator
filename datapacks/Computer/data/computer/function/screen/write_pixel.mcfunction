# input rs2_[0-31] Computer (for pixel color)
# input rs1_[0-11] Computer (for pixel position)
# Selector as = @e[tag=screen]

tellraw @a[tag=DEBUG] {"text":"Writing a pixel screen!","color":"gold"}

scoreboard players operation input_0 A2 = rs2_0 Computer
scoreboard players operation input_1 A2 = rs2_1 Computer
scoreboard players operation input_2 A2 = rs2_2 Computer
scoreboard players operation input_3 A2 = rs2_3 Computer
scoreboard players operation input_4 A2 = rs2_4 Computer
scoreboard players operation input_5 A2 = rs2_5 Computer
scoreboard players operation input_6 A2 = rs2_6 Computer
scoreboard players operation input_7 A2 = rs2_7 Computer
scoreboard players operation input_8 A2 = rs2_8 Computer
scoreboard players operation input_9 A2 = rs2_9 Computer
scoreboard players operation input_10 A2 = rs2_10 Computer
scoreboard players operation input_11 A2 = rs2_11 Computer
scoreboard players operation input_12 A2 = rs2_12 Computer
scoreboard players operation input_13 A2 = rs2_13 Computer
scoreboard players operation input_14 A2 = rs2_14 Computer
scoreboard players operation input_15 A2 = rs2_15 Computer
scoreboard players operation input_16 A2 = rs2_16 Computer
scoreboard players operation input_17 A2 = rs2_17 Computer
scoreboard players operation input_18 A2 = rs2_18 Computer
scoreboard players operation input_19 A2 = rs2_19 Computer
scoreboard players operation input_20 A2 = rs2_20 Computer
scoreboard players operation input_21 A2 = rs2_21 Computer
scoreboard players operation input_22 A2 = rs2_22 Computer
scoreboard players operation input_23 A2 = rs2_23 Computer
scoreboard players set input_24 A2 1
scoreboard players set input_25 A2 1
scoreboard players set input_26 A2 1
scoreboard players set input_27 A2 1
scoreboard players set input_28 A2 1
scoreboard players set input_29 A2 1
scoreboard players set input_30 A2 1
scoreboard players set input_31 A2 1

function computer:alu/a2_32bits

scoreboard players set background Computer 0
execute if score input_0 A2 matches 1 run scoreboard players remove background Computer 1
execute if score input_1 A2 matches 1 run scoreboard players remove background Computer 2
execute if score input_2 A2 matches 1 run scoreboard players remove background Computer 4
execute if score input_3 A2 matches 1 run scoreboard players remove background Computer 8
execute if score input_4 A2 matches 1 run scoreboard players remove background Computer 16
execute if score input_5 A2 matches 1 run scoreboard players remove background Computer 32
execute if score input_6 A2 matches 1 run scoreboard players remove background Computer 64
execute if score input_7 A2 matches 1 run scoreboard players remove background Computer 128
execute if score input_8 A2 matches 1 run scoreboard players remove background Computer 256
execute if score input_9 A2 matches 1 run scoreboard players remove background Computer 512
execute if score input_10 A2 matches 1 run scoreboard players remove background Computer 1024
execute if score input_11 A2 matches 1 run scoreboard players remove background Computer 2048
execute if score input_12 A2 matches 1 run scoreboard players remove background Computer 4096
execute if score input_13 A2 matches 1 run scoreboard players remove background Computer 8192
execute if score input_14 A2 matches 1 run scoreboard players remove background Computer 16384
execute if score input_15 A2 matches 1 run scoreboard players remove background Computer 32768
execute if score input_16 A2 matches 1 run scoreboard players remove background Computer 65536
execute if score input_17 A2 matches 1 run scoreboard players remove background Computer 131072
execute if score input_18 A2 matches 1 run scoreboard players remove background Computer 262144
execute if score input_19 A2 matches 1 run scoreboard players remove background Computer 524288
execute if score input_20 A2 matches 1 run scoreboard players remove background Computer 1048576
execute if score input_21 A2 matches 1 run scoreboard players remove background Computer 2097152
execute if score input_22 A2 matches 1 run scoreboard players remove background Computer 4194304
execute if score input_23 A2 matches 1 run scoreboard players remove background Computer 8388608
# case of black pixel (0xff000000 -> 0x01000000 so 24nt bit is used)
execute if score input_24 A2 matches 1 run scoreboard players remove background Computer 16777216
# above 24 bit are not used in this case still compute since a2_32bits is a generic function


execute if score input_25 A2 matches 1 run tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"[ERROR] - ","bold":true,"color":"blue"},{"text":"Error input_25 should not be set when writing a pixel","bold":true,"color":"dark_red"}]
execute if score input_25 A2 matches 1 run scoreboard players set error Computer 1
execute if score input_26 A2 matches 1 run tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"[ERROR] - ","bold":true,"color":"blue"},{"text":"Error input_26 should not be set when writing a pixel","bold":true,"color":"dark_red"}]
execute if score input_26 A2 matches 1 run scoreboard players set error Computer 1
execute if score input_27 A2 matches 1 run tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"[ERROR] - ","bold":true,"color":"blue"},{"text":"Error input_27 should not be set when writing a pixel","bold":true,"color":"dark_red"}]
execute if score input_27 A2 matches 1 run scoreboard players set error Computer 1
execute if score input_28 A2 matches 1 run tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"[ERROR] - ","bold":true,"color":"blue"},{"text":"Error input_28 should not be set when writing a pixel","bold":true,"color":"dark_red"}]
execute if score input_28 A2 matches 1 run scoreboard players set error Computer 1
execute if score input_29 A2 matches 1 run tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"[ERROR] - ","bold":true,"color":"blue"},{"text":"Error input_29 should not be set when writing a pixel","bold":true,"color":"dark_red"}]
execute if score input_29 A2 matches 1 run scoreboard players set error Computer 1
execute if score input_30 A2 matches 1 run tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"[ERROR] - ","bold":true,"color":"blue"},{"text":"Error input_30 should not be set when writing a pixel","bold":true,"color":"dark_red"}]
execute if score input_30 A2 matches 1 run scoreboard players set error Computer 1
execute if score input_31 A2 matches 1 run tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"[ERROR] - ","bold":true,"color":"blue"},{"text":"Error input_31 should not be set when writing a pixel","bold":true,"color":"dark_red"}]
execute if score input_31 A2 matches 1 run scoreboard players set error Computer 1

tp @s 1.0 32.5 3

execute if score rs1_0 Computer matches 1 run tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"[ERROR] - ","bold":true,"color":"blue"},{"text":"Pixel write rs1_0 must be 0 (align by 4)","bold":true,"color":"dark_red"}] 
execute if score rs1_0 Computer matches 1 run scoreboard players set error Computer 1 
execute if score rs1_1 Computer matches 1 run tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"[ERROR] - ","bold":true,"color":"blue"},{"text":"Pixel write rs1_1 must be 0 (align by 4)","bold":true,"color":"dark_red"}]
execute if score rs1_1 Computer matches 1 run scoreboard players set error Computer 1 


scoreboard players operation input_0 scoretp_x_screen = rs1_2 Computer
scoreboard players operation input_1 scoretp_x_screen = rs1_3 Computer
scoreboard players operation input_2 scoretp_x_screen = rs1_4 Computer
scoreboard players operation input_3 scoretp_x_screen = rs1_5 Computer
scoreboard players operation input_4 scoretp_x_screen = rs1_6 Computer
scoreboard players operation input_5 scoretp_x_screen = rs1_7 Computer

scoreboard players operation input_6 scoretp_y_screen = rs1_8 Computer
scoreboard players operation input_7 scoretp_y_screen = rs1_9 Computer
scoreboard players operation input_8 scoretp_y_screen = rs1_10 Computer
scoreboard players operation input_9 scoretp_y_screen = rs1_11 Computer
scoreboard players operation input_10 scoretp_y_screen = rs1_12 Computer
scoreboard players operation input_11 scoretp_y_screen = rs1_13 Computer

function tp:scoretp/x_screen
function tp:scoretp/y_screen
execute at @s run execute store result entity @e[limit=1, type=minecraft:text_display,sort=nearest] background long 1 run scoreboard players get background Computer