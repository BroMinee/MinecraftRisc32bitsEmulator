#!objective scoretp_z

scoreboard players operation #scoretp__distance scoretp_z = @s scoretp_z

# Positive direction


execute if score #scoretp__distance scoretp_z matches 128.. at @s run tellraw BroMine__ "I am used"
execute if score #scoretp__distance scoretp_z matches 128.. run scoreboard players remove #scoretp__distance scoretp_z 128

execute if score #scoretp__distance scoretp_z matches 64.. at @s run tp @s ~ ~ ~64
execute if score #scoretp__distance scoretp_z matches 64.. run scoreboard players remove #scoretp__distance scoretp_z 64

execute if score #scoretp__distance scoretp_z matches 32.. at @s run tp @s ~ ~ ~32
execute if score #scoretp__distance scoretp_z matches 32.. run scoreboard players remove #scoretp__distance scoretp_z 32

execute if score #scoretp__distance scoretp_z matches 16.. at @s run tp @s ~ ~ ~16
execute if score #scoretp__distance scoretp_z matches 16.. run scoreboard players remove #scoretp__distance scoretp_z 16

execute if score #scoretp__distance scoretp_z matches 8.. at @s run tp @s ~ ~ ~8
execute if score #scoretp__distance scoretp_z matches 8.. run scoreboard players remove #scoretp__distance scoretp_z 8

execute if score #scoretp__distance scoretp_z matches 4.. at @s run tp @s ~ ~ ~4
execute if score #scoretp__distance scoretp_z matches 4.. run scoreboard players remove #scoretp__distance scoretp_z 4

execute if score #scoretp__distance scoretp_z matches 2.. at @s run tp @s ~ ~ ~2
execute if score #scoretp__distance scoretp_z matches 2.. run scoreboard players remove #scoretp__distance scoretp_z 2

execute if score #scoretp__distance scoretp_z matches 1.. at @s run tp @s ~ ~ ~1
