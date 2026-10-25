# auto-generated
# Unit test for computer:alu/int/hw_mul
scoreboard players set _ut_pass tests 0
scoreboard players set _ut_fail tests 0

data modify storage computer:alu a set value 0
data modify storage computer:alu b set value 0
scoreboard players set error stats 0
function computer:alu/int/hw_mul
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/hw_mul(0,0) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu b set value 2147483647
scoreboard players set error stats 0
function computer:alu/int/hw_mul
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/hw_mul(0,2147483647) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu b set value 2147483647
scoreboard players set error stats 0
function computer:alu/int/hw_mul
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2147483647 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2147483647 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2147483647 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/hw_mul(1,2147483647) ","color":"gold"},{"text":"result: expected 2147483647 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu b set value 1
scoreboard players set error stats 0
function computer:alu/int/hw_mul
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/hw_mul(-1,1) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu a set value 3
data modify storage computer:alu b set value 7
scoreboard players set error stats 0
function computer:alu/int/hw_mul
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 21 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 21 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 21 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/hw_mul(3,7) ","color":"gold"},{"text":"result: expected 21 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu a set value -3
data modify storage computer:alu b set value 7
scoreboard players set error stats 0
function computer:alu/int/hw_mul
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -21 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -21 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -21 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/hw_mul(-3,7) ","color":"gold"},{"text":"result: expected -21 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu a set value -3
data modify storage computer:alu b set value -7
scoreboard players set error stats 0
function computer:alu/int/hw_mul
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 21 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 21 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 21 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/hw_mul(-3,-7) ","color":"gold"},{"text":"result: expected 21 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu a set value 46340
data modify storage computer:alu b set value 46340
scoreboard players set error stats 0
function computer:alu/int/hw_mul
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2147395600 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2147395600 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2147395600 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/hw_mul(46340,46340) ","color":"gold"},{"text":"result: expected 2147395600 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

# Report results
execute if score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"PASS hw_mul ","bold":true,"color":"green"},{"text":"(","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" checks)","color":"gold"}]
execute unless score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL hw_mul ","bold":true,"color":"red"},{"text":"(","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" failures out of ","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" + ","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" checks)","color":"gold"}]
scoreboard players add _ut_total_pass tests 1
execute unless score _ut_fail tests matches 0 run scoreboard players add _ut_total_fail tests 1
execute unless score _ut_fail tests matches 0 run data modify storage computer:test ut_failed append value "hw_mul"
