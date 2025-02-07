scoreboard players set #hexa Computer 0
execute if score #tmp0 Computer matches 1 run scoreboard players add #hexa Computer 1
execute if score #tmp1 Computer matches 1 run scoreboard players add #hexa Computer 2
execute if score #tmp2 Computer matches 1 run scoreboard players add #hexa Computer 4
execute if score #tmp3 Computer matches 1 run scoreboard players add #hexa Computer 8

execute if score #hexa Computer matches ..9 run execute store result storage computer:memory hex_tmp int 1 run scoreboard players get #hexa Computer
execute if score #hexa Computer matches 10 run data modify storage computer:memory hex_tmp set value "A"
execute if score #hexa Computer matches 11 run data modify storage computer:memory hex_tmp set value "B"
execute if score #hexa Computer matches 12 run data modify storage computer:memory hex_tmp set value "C"
execute if score #hexa Computer matches 13 run data modify storage computer:memory hex_tmp set value "D"
execute if score #hexa Computer matches 14 run data modify storage computer:memory hex_tmp set value "E"
execute if score #hexa Computer matches 15 run data modify storage computer:memory hex_tmp set value "F"