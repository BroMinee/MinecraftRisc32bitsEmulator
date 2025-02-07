#!objective scoretp_x

say me

scoreboard players operation #scoretp__distance scoretp_x = @s scoretp_x

execute if score #scoretp__distance scoretp_x matches 128.. at @s run tellraw BroMine__ "I am used"
execute if score #scoretp__distance scoretp_x matches 128.. run scoreboard players remove #scoretp__distance scoretp_x 128

execute if score #scoretp__distance scoretp_x matches 64.. at @s run tp @s ~64 ~ ~
execute if score #scoretp__distance scoretp_x matches 64.. run scoreboard players remove #scoretp__distance scoretp_x 64

execute if score #scoretp__distance scoretp_x matches 32.. at @s run tp @s ~32 ~ ~
execute if score #scoretp__distance scoretp_x matches 32.. run scoreboard players remove #scoretp__distance scoretp_x 32

execute if score #scoretp__distance scoretp_x matches 16.. at @s run tp @s ~16 ~ ~
execute if score #scoretp__distance scoretp_x matches 16.. run scoreboard players remove #scoretp__distance scoretp_x 16

execute if score #scoretp__distance scoretp_x matches 8.. at @s run tp @s ~8 ~ ~
execute if score #scoretp__distance scoretp_x matches 8.. run scoreboard players remove #scoretp__distance scoretp_x 8

execute if score #scoretp__distance scoretp_x matches 4.. at @s run tp @s ~4 ~ ~
execute if score #scoretp__distance scoretp_x matches 4.. run scoreboard players remove #scoretp__distance scoretp_x 4

execute if score #scoretp__distance scoretp_x matches 2.. at @s run tp @s ~2 ~ ~
execute if score #scoretp__distance scoretp_x matches 2.. run scoreboard players remove #scoretp__distance scoretp_x 2

execute if score #scoretp__distance scoretp_x matches 1.. at @s run tp @s ~1 ~ ~
