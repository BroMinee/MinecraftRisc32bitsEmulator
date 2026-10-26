# auto-generated
# Unit test for computer:alu/int/shr_u
scoreboard players set _ut_pass tests 0
scoreboard players set _ut_fail tests 0

data modify storage computer:alu a set value 0
data modify storage computer:alu shift set value 0
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(0,0) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(0,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu shift set value 1
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(0,1) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(0,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu shift set value 4
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(0,4) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(0,4) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu shift set value 7
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(0,7) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(0,7) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu shift set value 8
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(0,8) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(0,8) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu shift set value 15
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(0,15) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(0,15) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu shift set value 16
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(0,16) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(0,16) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu shift set value 24
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(0,24) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(0,24) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu shift set value 30
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(0,30) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(0,30) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu shift set value 31
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(0,31) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(0,31) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu shift set value 0
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(1,0) ","color":"gold"},{"text":"result: expected 1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(1,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu shift set value 1
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(1,1) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(1,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu shift set value 4
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(1,4) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(1,4) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu shift set value 7
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(1,7) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(1,7) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu shift set value 8
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(1,8) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(1,8) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu shift set value 15
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(1,15) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(1,15) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu shift set value 16
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(1,16) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(1,16) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu shift set value 24
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(1,24) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(1,24) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu shift set value 30
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(1,30) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(1,30) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu shift set value 31
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(1,31) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(1,31) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu shift set value 0
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-1,0) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-1,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu shift set value 1
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2147483647 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2147483647 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2147483647 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-1,1) ","color":"gold"},{"text":"result: expected 2147483647 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-1,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu shift set value 4
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 268435455 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 268435455 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 268435455 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-1,4) ","color":"gold"},{"text":"result: expected 268435455 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-1,4) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu shift set value 7
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 33554431 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 33554431 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 33554431 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-1,7) ","color":"gold"},{"text":"result: expected 33554431 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-1,7) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu shift set value 8
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 16777215 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 16777215 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 16777215 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-1,8) ","color":"gold"},{"text":"result: expected 16777215 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-1,8) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu shift set value 15
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 131071 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 131071 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 131071 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-1,15) ","color":"gold"},{"text":"result: expected 131071 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-1,15) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu shift set value 16
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 65535 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 65535 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 65535 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-1,16) ","color":"gold"},{"text":"result: expected 65535 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-1,16) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu shift set value 24
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 255 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 255 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 255 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-1,24) ","color":"gold"},{"text":"result: expected 255 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-1,24) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu shift set value 30
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 3 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 3 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 3 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-1,30) ","color":"gold"},{"text":"result: expected 3 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-1,30) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu shift set value 31
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-1,31) ","color":"gold"},{"text":"result: expected 1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-1,31) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu shift set value 0
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2147483647 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2147483647 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2147483647 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(2147483647,0) ","color":"gold"},{"text":"result: expected 2147483647 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(2147483647,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu shift set value 1
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1073741823 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1073741823 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1073741823 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(2147483647,1) ","color":"gold"},{"text":"result: expected 1073741823 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(2147483647,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu shift set value 4
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 134217727 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 134217727 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 134217727 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(2147483647,4) ","color":"gold"},{"text":"result: expected 134217727 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(2147483647,4) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu shift set value 7
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 16777215 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 16777215 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 16777215 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(2147483647,7) ","color":"gold"},{"text":"result: expected 16777215 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(2147483647,7) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu shift set value 8
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 8388607 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 8388607 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 8388607 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(2147483647,8) ","color":"gold"},{"text":"result: expected 8388607 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(2147483647,8) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu shift set value 15
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 65535 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 65535 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 65535 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(2147483647,15) ","color":"gold"},{"text":"result: expected 65535 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(2147483647,15) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu shift set value 16
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 32767 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 32767 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 32767 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(2147483647,16) ","color":"gold"},{"text":"result: expected 32767 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(2147483647,16) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu shift set value 24
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 127 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 127 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 127 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(2147483647,24) ","color":"gold"},{"text":"result: expected 127 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(2147483647,24) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu shift set value 30
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(2147483647,30) ","color":"gold"},{"text":"result: expected 1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(2147483647,30) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu shift set value 31
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(2147483647,31) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(2147483647,31) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu shift set value 0
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2147483648 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2147483648 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2147483648 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-2147483648,0) ","color":"gold"},{"text":"result: expected -2147483648 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-2147483648,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu shift set value 1
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1073741824 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1073741824 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1073741824 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-2147483648,1) ","color":"gold"},{"text":"result: expected 1073741824 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-2147483648,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu shift set value 4
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 134217728 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 134217728 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 134217728 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-2147483648,4) ","color":"gold"},{"text":"result: expected 134217728 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-2147483648,4) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu shift set value 7
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 16777216 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 16777216 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 16777216 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-2147483648,7) ","color":"gold"},{"text":"result: expected 16777216 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-2147483648,7) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu shift set value 8
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 8388608 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 8388608 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 8388608 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-2147483648,8) ","color":"gold"},{"text":"result: expected 8388608 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-2147483648,8) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu shift set value 15
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 65536 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 65536 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 65536 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-2147483648,15) ","color":"gold"},{"text":"result: expected 65536 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-2147483648,15) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu shift set value 16
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 32768 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 32768 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 32768 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-2147483648,16) ","color":"gold"},{"text":"result: expected 32768 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-2147483648,16) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu shift set value 24
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 128 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 128 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 128 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-2147483648,24) ","color":"gold"},{"text":"result: expected 128 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-2147483648,24) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu shift set value 30
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-2147483648,30) ","color":"gold"},{"text":"result: expected 2 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-2147483648,30) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu shift set value 31
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-2147483648,31) ","color":"gold"},{"text":"result: expected 1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-2147483648,31) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 305419896
data modify storage computer:alu shift set value 0
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 305419896 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 305419896 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 305419896 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(305419896,0) ","color":"gold"},{"text":"result: expected 305419896 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(305419896,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 305419896
data modify storage computer:alu shift set value 1
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 152709948 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 152709948 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 152709948 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(305419896,1) ","color":"gold"},{"text":"result: expected 152709948 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(305419896,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 305419896
data modify storage computer:alu shift set value 4
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 19088743 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 19088743 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 19088743 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(305419896,4) ","color":"gold"},{"text":"result: expected 19088743 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(305419896,4) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 305419896
data modify storage computer:alu shift set value 7
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2386092 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2386092 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2386092 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(305419896,7) ","color":"gold"},{"text":"result: expected 2386092 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(305419896,7) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 305419896
data modify storage computer:alu shift set value 8
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1193046 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1193046 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1193046 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(305419896,8) ","color":"gold"},{"text":"result: expected 1193046 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(305419896,8) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 305419896
data modify storage computer:alu shift set value 15
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 9320 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 9320 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 9320 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(305419896,15) ","color":"gold"},{"text":"result: expected 9320 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(305419896,15) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 305419896
data modify storage computer:alu shift set value 16
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 4660 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 4660 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 4660 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(305419896,16) ","color":"gold"},{"text":"result: expected 4660 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(305419896,16) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 305419896
data modify storage computer:alu shift set value 24
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 18 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 18 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 18 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(305419896,24) ","color":"gold"},{"text":"result: expected 18 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(305419896,24) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 305419896
data modify storage computer:alu shift set value 30
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(305419896,30) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(305419896,30) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 305419896
data modify storage computer:alu shift set value 31
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(305419896,31) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(305419896,31) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -559038737
data modify storage computer:alu shift set value 0
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -559038737 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -559038737 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -559038737 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-559038737,0) ","color":"gold"},{"text":"result: expected -559038737 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-559038737,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -559038737
data modify storage computer:alu shift set value 1
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1867964279 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1867964279 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1867964279 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-559038737,1) ","color":"gold"},{"text":"result: expected 1867964279 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-559038737,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -559038737
data modify storage computer:alu shift set value 4
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 233495534 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 233495534 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 233495534 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-559038737,4) ","color":"gold"},{"text":"result: expected 233495534 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-559038737,4) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -559038737
data modify storage computer:alu shift set value 7
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 29186941 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 29186941 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 29186941 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-559038737,7) ","color":"gold"},{"text":"result: expected 29186941 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-559038737,7) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -559038737
data modify storage computer:alu shift set value 8
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 14593470 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 14593470 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 14593470 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-559038737,8) ","color":"gold"},{"text":"result: expected 14593470 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-559038737,8) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -559038737
data modify storage computer:alu shift set value 15
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 114011 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 114011 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 114011 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-559038737,15) ","color":"gold"},{"text":"result: expected 114011 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-559038737,15) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -559038737
data modify storage computer:alu shift set value 16
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 57005 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 57005 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 57005 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-559038737,16) ","color":"gold"},{"text":"result: expected 57005 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-559038737,16) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -559038737
data modify storage computer:alu shift set value 24
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 222 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 222 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 222 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-559038737,24) ","color":"gold"},{"text":"result: expected 222 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-559038737,24) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -559038737
data modify storage computer:alu shift set value 30
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 3 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 3 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 3 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-559038737,30) ","color":"gold"},{"text":"result: expected 3 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-559038737,30) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -559038737
data modify storage computer:alu shift set value 31
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-559038737,31) ","color":"gold"},{"text":"result: expected 1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-559038737,31) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 42
data modify storage computer:alu shift set value 0
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 42 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 42 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 42 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(42,0) ","color":"gold"},{"text":"result: expected 42 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(42,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 42
data modify storage computer:alu shift set value 1
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 21 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 21 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 21 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(42,1) ","color":"gold"},{"text":"result: expected 21 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(42,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 42
data modify storage computer:alu shift set value 4
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(42,4) ","color":"gold"},{"text":"result: expected 2 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(42,4) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 42
data modify storage computer:alu shift set value 7
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(42,7) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(42,7) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 42
data modify storage computer:alu shift set value 8
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(42,8) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(42,8) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 42
data modify storage computer:alu shift set value 15
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(42,15) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(42,15) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 42
data modify storage computer:alu shift set value 16
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(42,16) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(42,16) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 42
data modify storage computer:alu shift set value 24
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(42,24) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(42,24) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 42
data modify storage computer:alu shift set value 30
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(42,30) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(42,30) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 42
data modify storage computer:alu shift set value 31
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(42,31) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(42,31) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -42
data modify storage computer:alu shift set value 0
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -42 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -42 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -42 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-42,0) ","color":"gold"},{"text":"result: expected -42 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-42,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -42
data modify storage computer:alu shift set value 1
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2147483627 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2147483627 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2147483627 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-42,1) ","color":"gold"},{"text":"result: expected 2147483627 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-42,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -42
data modify storage computer:alu shift set value 4
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 268435453 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 268435453 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 268435453 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-42,4) ","color":"gold"},{"text":"result: expected 268435453 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-42,4) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -42
data modify storage computer:alu shift set value 7
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 33554431 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 33554431 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 33554431 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-42,7) ","color":"gold"},{"text":"result: expected 33554431 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-42,7) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -42
data modify storage computer:alu shift set value 8
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 16777215 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 16777215 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 16777215 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-42,8) ","color":"gold"},{"text":"result: expected 16777215 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-42,8) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -42
data modify storage computer:alu shift set value 15
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 131071 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 131071 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 131071 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-42,15) ","color":"gold"},{"text":"result: expected 131071 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-42,15) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -42
data modify storage computer:alu shift set value 16
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 65535 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 65535 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 65535 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-42,16) ","color":"gold"},{"text":"result: expected 65535 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-42,16) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -42
data modify storage computer:alu shift set value 24
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 255 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 255 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 255 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-42,24) ","color":"gold"},{"text":"result: expected 255 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-42,24) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -42
data modify storage computer:alu shift set value 30
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 3 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 3 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 3 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-42,30) ","color":"gold"},{"text":"result: expected 3 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-42,30) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -42
data modify storage computer:alu shift set value 31
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-42,31) ","color":"gold"},{"text":"result: expected 1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-42,31) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -16711936
data modify storage computer:alu shift set value 0
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -16711936 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -16711936 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -16711936 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-16711936,0) ","color":"gold"},{"text":"result: expected -16711936 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-16711936,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -16711936
data modify storage computer:alu shift set value 1
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2139127680 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2139127680 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2139127680 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-16711936,1) ","color":"gold"},{"text":"result: expected 2139127680 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-16711936,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -16711936
data modify storage computer:alu shift set value 4
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 267390960 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 267390960 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 267390960 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-16711936,4) ","color":"gold"},{"text":"result: expected 267390960 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-16711936,4) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -16711936
data modify storage computer:alu shift set value 7
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 33423870 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 33423870 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 33423870 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-16711936,7) ","color":"gold"},{"text":"result: expected 33423870 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-16711936,7) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -16711936
data modify storage computer:alu shift set value 8
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 16711935 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 16711935 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 16711935 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-16711936,8) ","color":"gold"},{"text":"result: expected 16711935 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-16711936,8) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -16711936
data modify storage computer:alu shift set value 15
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 130561 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 130561 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 130561 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-16711936,15) ","color":"gold"},{"text":"result: expected 130561 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-16711936,15) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -16711936
data modify storage computer:alu shift set value 16
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 65280 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 65280 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 65280 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-16711936,16) ","color":"gold"},{"text":"result: expected 65280 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-16711936,16) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -16711936
data modify storage computer:alu shift set value 24
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 255 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 255 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 255 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-16711936,24) ","color":"gold"},{"text":"result: expected 255 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-16711936,24) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -16711936
data modify storage computer:alu shift set value 30
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 3 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 3 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 3 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-16711936,30) ","color":"gold"},{"text":"result: expected 3 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-16711936,30) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -16711936
data modify storage computer:alu shift set value 31
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-16711936,31) ","color":"gold"},{"text":"result: expected 1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(-16711936,31) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 255
data modify storage computer:alu shift set value 32
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 255 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 255 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 255 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(255,32) ","color":"gold"},{"text":"result: expected 255 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(255,32) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 255
data modify storage computer:alu shift set value 33
scoreboard players set error stats 0
function computer:alu/int/shr_u
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 127 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 127 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 127 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(255,33) ","color":"gold"},{"text":"result: expected 127 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shr_u(255,33) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

# Report results
execute if score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"PASS shr_u ","bold":true,"color":"green"},{"text":"(","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" checks)","color":"gold"}]
execute unless score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL shr_u ","bold":true,"color":"red"},{"text":"(","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" failures out of ","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" + ","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" checks)","color":"gold"}]
scoreboard players operation _ut_total_checks_pass tests += _ut_pass tests
scoreboard players operation _ut_total_checks_fail tests += _ut_fail tests
scoreboard players add _ut_total_pass tests 1
execute unless score _ut_fail tests matches 0 run scoreboard players add _ut_total_fail tests 1
execute unless score _ut_fail tests matches 0 run data modify storage computer:test ut_failed append value "shr_u"
