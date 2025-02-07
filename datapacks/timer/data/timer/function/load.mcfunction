
scoreboard objectives add Time dummy
bossbar add bromine:timer {"text":"Cookies"}
bossbar set bromine:timer players @a

execute store result score week Time run scoreboard players get week Time
execute store result score day Time run scoreboard players get day Time
execute store result score heure Time run scoreboard players get heure Time
execute store result score minutes Time run scoreboard players get minutes Time
execute store result score seconds Time run scoreboard players get seconds Time
execute store result score tick Time run scoreboard players get tick Time

bossbar set bromine:timer name {"color":"green","bold":true,"text":"Loading... "}

tellraw @a {"text": "Hello World! (timer)"}
