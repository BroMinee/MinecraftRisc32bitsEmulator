#!objective scoretp_y

scoreboard players operation #scoretp__distance scoretp_y = @s scoretp_y

# Positive direction

execute if score #scoretp__distance scoretp_y matches 128.. at @s run tellraw BroMine__ "I am used"
execute if score #scoretp__distance scoretp_y matches 128.. run scoreboard players remove #scoretp__distance scoretp_y 128

execute if score #scoretp__distance scoretp_y matches 64.. at @s run tp @s ~ ~64 ~
execute if score #scoretp__distance scoretp_y matches 64.. run scoreboard players remove #scoretp__distance scoretp_y 64

execute if score #scoretp__distance scoretp_y matches 32.. at @s run tp @s ~ ~32 ~
execute if score #scoretp__distance scoretp_y matches 32.. run scoreboard players remove #scoretp__distance scoretp_y 32

execute if score #scoretp__distance scoretp_y matches 16.. at @s run tp @s ~ ~16 ~
execute if score #scoretp__distance scoretp_y matches 16.. run scoreboard players remove #scoretp__distance scoretp_y 16

execute if score #scoretp__distance scoretp_y matches 8.. at @s run tp @s ~ ~8 ~
execute if score #scoretp__distance scoretp_y matches 8.. run scoreboard players remove #scoretp__distance scoretp_y 8

execute if score #scoretp__distance scoretp_y matches 4.. at @s run tp @s ~ ~4 ~
execute if score #scoretp__distance scoretp_y matches 4.. run scoreboard players remove #scoretp__distance scoretp_y 4

execute if score #scoretp__distance scoretp_y matches 2.. at @s run tp @s ~ ~2 ~
execute if score #scoretp__distance scoretp_y matches 2.. run scoreboard players remove #scoretp__distance scoretp_y 2

execute if score #scoretp__distance scoretp_y matches 1.. at @s run tp @s ~ ~1 ~
