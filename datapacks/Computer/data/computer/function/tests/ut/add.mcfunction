# auto-generated
# Unit test for computer:alu/int/add
scoreboard players set _ut_pass tests 0
scoreboard players set _ut_fail tests 0

data modify storage computer:alu a set value 0
data modify storage computer:alu b set value 0
scoreboard players set error stats 0
function computer:alu/int/add
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/add(0,0) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu b set value 2
scoreboard players set error stats 0
function computer:alu/int/add
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 3 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 3 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 3 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/add(1,2) ","color":"gold"},{"text":"result: expected 3 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu b set value 1
scoreboard players set error stats 0
function computer:alu/int/add
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/add(-1,1) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu b set value -1
scoreboard players set error stats 0
function computer:alu/int/add
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/add(-1,-1) ","color":"gold"},{"text":"result: expected -2 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu b set value 0
scoreboard players set error stats 0
function computer:alu/int/add
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2147483647 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2147483647 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2147483647 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/add(2147483647,0) ","color":"gold"},{"text":"result: expected 2147483647 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu b set value 0
scoreboard players set error stats 0
function computer:alu/int/add
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2147483648 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2147483648 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2147483648 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/add(-2147483648,0) ","color":"gold"},{"text":"result: expected -2147483648 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu b set value 1
scoreboard players set error stats 0
function computer:alu/int/add
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2147483648 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2147483648 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2147483648 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/add(2147483647,1) ","color":"gold"},{"text":"result: expected -2147483648 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu b set value -1
scoreboard players set error stats 0
function computer:alu/int/add
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2147483647 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2147483647 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2147483647 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/add(-2147483648,-1) ","color":"gold"},{"text":"result: expected 2147483647 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu b set value 2147483647
scoreboard players set error stats 0
function computer:alu/int/add
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/add(2147483647,2147483647) ","color":"gold"},{"text":"result: expected -2 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu b set value -2147483648
scoreboard players set error stats 0
function computer:alu/int/add
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/add(-2147483648,-2147483648) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu a set value -100
data modify storage computer:alu b set value 50
scoreboard players set error stats 0
function computer:alu/int/add
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -50 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -50 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -50 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/add(-100,50) ","color":"gold"},{"text":"result: expected -50 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu a set value 100
data modify storage computer:alu b set value -50
scoreboard players set error stats 0
function computer:alu/int/add
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 50 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 50 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 50 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/add(100,-50) ","color":"gold"},{"text":"result: expected 50 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

data modify storage computer:alu a set value 305419896
data modify storage computer:alu b set value 1985229328
scoreboard players set error stats 0
function computer:alu/int/add
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2004318072 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2004318072 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2004318072 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/add(305419896,1985229328) ","color":"gold"},{"text":"result: expected -2004318072 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]

# Report results
execute if score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"PASS add ","bold":true,"color":"green"},{"text":"(","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" checks)","color":"gold"}]
execute unless score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL add ","bold":true,"color":"red"},{"text":"(","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" failures out of ","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" + ","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" checks)","color":"gold"}]
scoreboard players add _ut_total_pass tests 1
execute unless score _ut_fail tests matches 0 run scoreboard players add _ut_total_fail tests 1
execute unless score _ut_fail tests matches 0 run data modify storage computer:test ut_failed append value "add"
