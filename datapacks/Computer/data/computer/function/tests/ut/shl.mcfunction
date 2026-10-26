# auto-generated
# Unit test for computer:alu/int/shl
scoreboard players set _ut_pass tests 0
scoreboard players set _ut_fail tests 0

data modify storage computer:alu a set value 0
data modify storage computer:alu shift set value 0
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(0,0) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(0,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu shift set value 1
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(0,1) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(0,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu shift set value 4
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(0,4) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(0,4) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu shift set value 7
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(0,7) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(0,7) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu shift set value 8
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(0,8) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(0,8) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu shift set value 15
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(0,15) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(0,15) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu shift set value 16
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(0,16) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(0,16) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu shift set value 24
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(0,24) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(0,24) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu shift set value 30
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(0,30) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(0,30) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu shift set value 31
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(0,31) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(0,31) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu shift set value 0
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(1,0) ","color":"gold"},{"text":"result: expected 1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(1,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu shift set value 1
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(1,1) ","color":"gold"},{"text":"result: expected 2 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(1,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu shift set value 4
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 16 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 16 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 16 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(1,4) ","color":"gold"},{"text":"result: expected 16 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(1,4) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu shift set value 7
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 128 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 128 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 128 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(1,7) ","color":"gold"},{"text":"result: expected 128 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(1,7) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu shift set value 8
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 256 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 256 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 256 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(1,8) ","color":"gold"},{"text":"result: expected 256 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(1,8) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu shift set value 15
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 32768 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 32768 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 32768 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(1,15) ","color":"gold"},{"text":"result: expected 32768 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(1,15) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu shift set value 16
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 65536 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 65536 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 65536 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(1,16) ","color":"gold"},{"text":"result: expected 65536 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(1,16) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu shift set value 24
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 16777216 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 16777216 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 16777216 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(1,24) ","color":"gold"},{"text":"result: expected 16777216 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(1,24) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu shift set value 30
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1073741824 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1073741824 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1073741824 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(1,30) ","color":"gold"},{"text":"result: expected 1073741824 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(1,30) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu shift set value 31
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2147483648 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2147483648 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2147483648 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(1,31) ","color":"gold"},{"text":"result: expected -2147483648 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(1,31) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu shift set value 0
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-1,0) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-1,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu shift set value 1
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-1,1) ","color":"gold"},{"text":"result: expected -2 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-1,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu shift set value 4
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -16 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -16 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -16 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-1,4) ","color":"gold"},{"text":"result: expected -16 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-1,4) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu shift set value 7
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -128 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -128 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -128 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-1,7) ","color":"gold"},{"text":"result: expected -128 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-1,7) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu shift set value 8
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -256 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -256 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -256 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-1,8) ","color":"gold"},{"text":"result: expected -256 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-1,8) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu shift set value 15
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -32768 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -32768 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -32768 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-1,15) ","color":"gold"},{"text":"result: expected -32768 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-1,15) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu shift set value 16
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -65536 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -65536 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -65536 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-1,16) ","color":"gold"},{"text":"result: expected -65536 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-1,16) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu shift set value 24
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -16777216 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -16777216 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -16777216 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-1,24) ","color":"gold"},{"text":"result: expected -16777216 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-1,24) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu shift set value 30
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1073741824 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1073741824 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1073741824 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-1,30) ","color":"gold"},{"text":"result: expected -1073741824 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-1,30) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu shift set value 31
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2147483648 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2147483648 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2147483648 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-1,31) ","color":"gold"},{"text":"result: expected -2147483648 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-1,31) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu shift set value 0
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2147483647 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2147483647 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2147483647 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(2147483647,0) ","color":"gold"},{"text":"result: expected 2147483647 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(2147483647,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu shift set value 1
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(2147483647,1) ","color":"gold"},{"text":"result: expected -2 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(2147483647,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu shift set value 4
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -16 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -16 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -16 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(2147483647,4) ","color":"gold"},{"text":"result: expected -16 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(2147483647,4) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu shift set value 7
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -128 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -128 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -128 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(2147483647,7) ","color":"gold"},{"text":"result: expected -128 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(2147483647,7) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu shift set value 8
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -256 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -256 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -256 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(2147483647,8) ","color":"gold"},{"text":"result: expected -256 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(2147483647,8) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu shift set value 15
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -32768 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -32768 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -32768 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(2147483647,15) ","color":"gold"},{"text":"result: expected -32768 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(2147483647,15) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu shift set value 16
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -65536 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -65536 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -65536 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(2147483647,16) ","color":"gold"},{"text":"result: expected -65536 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(2147483647,16) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu shift set value 24
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -16777216 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -16777216 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -16777216 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(2147483647,24) ","color":"gold"},{"text":"result: expected -16777216 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(2147483647,24) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu shift set value 30
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1073741824 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1073741824 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1073741824 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(2147483647,30) ","color":"gold"},{"text":"result: expected -1073741824 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(2147483647,30) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu shift set value 31
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2147483648 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2147483648 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2147483648 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(2147483647,31) ","color":"gold"},{"text":"result: expected -2147483648 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(2147483647,31) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu shift set value 0
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2147483648 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2147483648 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2147483648 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-2147483648,0) ","color":"gold"},{"text":"result: expected -2147483648 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-2147483648,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu shift set value 1
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-2147483648,1) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-2147483648,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu shift set value 4
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-2147483648,4) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-2147483648,4) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu shift set value 7
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-2147483648,7) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-2147483648,7) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu shift set value 8
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-2147483648,8) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-2147483648,8) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu shift set value 15
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-2147483648,15) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-2147483648,15) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu shift set value 16
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-2147483648,16) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-2147483648,16) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu shift set value 24
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-2147483648,24) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-2147483648,24) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu shift set value 30
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-2147483648,30) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-2147483648,30) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu shift set value 31
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-2147483648,31) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-2147483648,31) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 305419896
data modify storage computer:alu shift set value 0
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 305419896 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 305419896 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 305419896 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(305419896,0) ","color":"gold"},{"text":"result: expected 305419896 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(305419896,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 305419896
data modify storage computer:alu shift set value 1
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 610839792 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 610839792 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 610839792 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(305419896,1) ","color":"gold"},{"text":"result: expected 610839792 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(305419896,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 305419896
data modify storage computer:alu shift set value 4
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 591751040 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 591751040 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 591751040 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(305419896,4) ","color":"gold"},{"text":"result: expected 591751040 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(305419896,4) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 305419896
data modify storage computer:alu shift set value 7
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 439041024 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 439041024 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 439041024 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(305419896,7) ","color":"gold"},{"text":"result: expected 439041024 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(305419896,7) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 305419896
data modify storage computer:alu shift set value 8
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 878082048 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 878082048 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 878082048 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(305419896,8) ","color":"gold"},{"text":"result: expected 878082048 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(305419896,8) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 305419896
data modify storage computer:alu shift set value 15
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 725352448 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 725352448 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 725352448 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(305419896,15) ","color":"gold"},{"text":"result: expected 725352448 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(305419896,15) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 305419896
data modify storage computer:alu shift set value 16
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1450704896 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1450704896 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1450704896 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(305419896,16) ","color":"gold"},{"text":"result: expected 1450704896 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(305419896,16) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 305419896
data modify storage computer:alu shift set value 24
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2013265920 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2013265920 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2013265920 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(305419896,24) ","color":"gold"},{"text":"result: expected 2013265920 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(305419896,24) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 305419896
data modify storage computer:alu shift set value 30
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(305419896,30) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(305419896,30) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 305419896
data modify storage computer:alu shift set value 31
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(305419896,31) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(305419896,31) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -559038737
data modify storage computer:alu shift set value 0
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -559038737 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -559038737 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -559038737 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-559038737,0) ","color":"gold"},{"text":"result: expected -559038737 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-559038737,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -559038737
data modify storage computer:alu shift set value 1
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1118077474 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1118077474 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1118077474 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-559038737,1) ","color":"gold"},{"text":"result: expected -1118077474 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-559038737,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -559038737
data modify storage computer:alu shift set value 4
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -354685200 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -354685200 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -354685200 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-559038737,4) ","color":"gold"},{"text":"result: expected -354685200 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-559038737,4) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -559038737
data modify storage computer:alu shift set value 7
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1457485696 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1457485696 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1457485696 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-559038737,7) ","color":"gold"},{"text":"result: expected 1457485696 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-559038737,7) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -559038737
data modify storage computer:alu shift set value 8
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1379995904 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1379995904 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1379995904 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-559038737,8) ","color":"gold"},{"text":"result: expected -1379995904 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-559038737,8) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -559038737
data modify storage computer:alu shift set value 15
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -545816576 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -545816576 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -545816576 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-559038737,15) ","color":"gold"},{"text":"result: expected -545816576 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-559038737,15) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -559038737
data modify storage computer:alu shift set value 16
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1091633152 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1091633152 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1091633152 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-559038737,16) ","color":"gold"},{"text":"result: expected -1091633152 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-559038737,16) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -559038737
data modify storage computer:alu shift set value 24
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -285212672 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -285212672 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -285212672 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-559038737,24) ","color":"gold"},{"text":"result: expected -285212672 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-559038737,24) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -559038737
data modify storage computer:alu shift set value 30
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1073741824 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1073741824 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1073741824 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-559038737,30) ","color":"gold"},{"text":"result: expected -1073741824 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-559038737,30) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -559038737
data modify storage computer:alu shift set value 31
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2147483648 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2147483648 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2147483648 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-559038737,31) ","color":"gold"},{"text":"result: expected -2147483648 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-559038737,31) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 42
data modify storage computer:alu shift set value 0
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 42 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 42 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 42 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(42,0) ","color":"gold"},{"text":"result: expected 42 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(42,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 42
data modify storage computer:alu shift set value 1
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 84 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 84 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 84 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(42,1) ","color":"gold"},{"text":"result: expected 84 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(42,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 42
data modify storage computer:alu shift set value 4
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 672 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 672 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 672 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(42,4) ","color":"gold"},{"text":"result: expected 672 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(42,4) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 42
data modify storage computer:alu shift set value 7
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 5376 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 5376 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 5376 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(42,7) ","color":"gold"},{"text":"result: expected 5376 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(42,7) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 42
data modify storage computer:alu shift set value 8
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 10752 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 10752 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 10752 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(42,8) ","color":"gold"},{"text":"result: expected 10752 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(42,8) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 42
data modify storage computer:alu shift set value 15
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1376256 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1376256 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1376256 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(42,15) ","color":"gold"},{"text":"result: expected 1376256 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(42,15) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 42
data modify storage computer:alu shift set value 16
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2752512 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2752512 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2752512 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(42,16) ","color":"gold"},{"text":"result: expected 2752512 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(42,16) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 42
data modify storage computer:alu shift set value 24
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 704643072 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 704643072 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 704643072 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(42,24) ","color":"gold"},{"text":"result: expected 704643072 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(42,24) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 42
data modify storage computer:alu shift set value 30
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2147483648 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2147483648 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2147483648 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(42,30) ","color":"gold"},{"text":"result: expected -2147483648 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(42,30) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 42
data modify storage computer:alu shift set value 31
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(42,31) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(42,31) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -42
data modify storage computer:alu shift set value 0
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -42 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -42 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -42 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-42,0) ","color":"gold"},{"text":"result: expected -42 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-42,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -42
data modify storage computer:alu shift set value 1
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -84 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -84 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -84 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-42,1) ","color":"gold"},{"text":"result: expected -84 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-42,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -42
data modify storage computer:alu shift set value 4
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -672 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -672 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -672 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-42,4) ","color":"gold"},{"text":"result: expected -672 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-42,4) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -42
data modify storage computer:alu shift set value 7
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -5376 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -5376 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -5376 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-42,7) ","color":"gold"},{"text":"result: expected -5376 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-42,7) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -42
data modify storage computer:alu shift set value 8
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -10752 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -10752 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -10752 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-42,8) ","color":"gold"},{"text":"result: expected -10752 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-42,8) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -42
data modify storage computer:alu shift set value 15
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1376256 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1376256 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1376256 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-42,15) ","color":"gold"},{"text":"result: expected -1376256 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-42,15) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -42
data modify storage computer:alu shift set value 16
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2752512 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2752512 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2752512 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-42,16) ","color":"gold"},{"text":"result: expected -2752512 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-42,16) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -42
data modify storage computer:alu shift set value 24
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -704643072 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -704643072 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -704643072 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-42,24) ","color":"gold"},{"text":"result: expected -704643072 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-42,24) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -42
data modify storage computer:alu shift set value 30
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2147483648 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2147483648 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2147483648 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-42,30) ","color":"gold"},{"text":"result: expected -2147483648 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-42,30) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -42
data modify storage computer:alu shift set value 31
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-42,31) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(-42,31) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 3
data modify storage computer:alu shift set value 0
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 3 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 3 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 3 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(3,0) ","color":"gold"},{"text":"result: expected 3 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(3,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 3
data modify storage computer:alu shift set value 1
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 6 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 6 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 6 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(3,1) ","color":"gold"},{"text":"result: expected 6 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(3,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 3
data modify storage computer:alu shift set value 4
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 48 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 48 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 48 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(3,4) ","color":"gold"},{"text":"result: expected 48 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(3,4) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 3
data modify storage computer:alu shift set value 7
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 384 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 384 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 384 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(3,7) ","color":"gold"},{"text":"result: expected 384 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(3,7) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 3
data modify storage computer:alu shift set value 8
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 768 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 768 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 768 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(3,8) ","color":"gold"},{"text":"result: expected 768 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(3,8) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 3
data modify storage computer:alu shift set value 15
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 98304 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 98304 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 98304 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(3,15) ","color":"gold"},{"text":"result: expected 98304 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(3,15) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 3
data modify storage computer:alu shift set value 16
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 196608 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 196608 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 196608 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(3,16) ","color":"gold"},{"text":"result: expected 196608 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(3,16) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 3
data modify storage computer:alu shift set value 24
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 50331648 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 50331648 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 50331648 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(3,24) ","color":"gold"},{"text":"result: expected 50331648 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(3,24) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 3
data modify storage computer:alu shift set value 30
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1073741824 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1073741824 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1073741824 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(3,30) ","color":"gold"},{"text":"result: expected -1073741824 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(3,30) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 3
data modify storage computer:alu shift set value 31
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2147483648 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2147483648 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2147483648 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(3,31) ","color":"gold"},{"text":"result: expected -2147483648 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(3,31) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 255
data modify storage computer:alu shift set value 0
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 255 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 255 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 255 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(255,0) ","color":"gold"},{"text":"result: expected 255 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(255,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 255
data modify storage computer:alu shift set value 1
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 510 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 510 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 510 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(255,1) ","color":"gold"},{"text":"result: expected 510 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(255,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 255
data modify storage computer:alu shift set value 4
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 4080 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 4080 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 4080 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(255,4) ","color":"gold"},{"text":"result: expected 4080 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(255,4) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 255
data modify storage computer:alu shift set value 7
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 32640 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 32640 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 32640 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(255,7) ","color":"gold"},{"text":"result: expected 32640 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(255,7) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 255
data modify storage computer:alu shift set value 8
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 65280 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 65280 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 65280 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(255,8) ","color":"gold"},{"text":"result: expected 65280 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(255,8) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 255
data modify storage computer:alu shift set value 15
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 8355840 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 8355840 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 8355840 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(255,15) ","color":"gold"},{"text":"result: expected 8355840 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(255,15) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 255
data modify storage computer:alu shift set value 16
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 16711680 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 16711680 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 16711680 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(255,16) ","color":"gold"},{"text":"result: expected 16711680 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(255,16) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 255
data modify storage computer:alu shift set value 24
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -16777216 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -16777216 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -16777216 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(255,24) ","color":"gold"},{"text":"result: expected -16777216 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(255,24) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 255
data modify storage computer:alu shift set value 30
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1073741824 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1073741824 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1073741824 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(255,30) ","color":"gold"},{"text":"result: expected -1073741824 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(255,30) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 255
data modify storage computer:alu shift set value 31
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2147483648 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2147483648 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2147483648 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(255,31) ","color":"gold"},{"text":"result: expected -2147483648 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(255,31) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu shift set value 32
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(1,32) ","color":"gold"},{"text":"result: expected 1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(1,32) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu shift set value 33
scoreboard players set error stats 0
function computer:alu/int/shl
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(1,33) ","color":"gold"},{"text":"result: expected 2 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/shl(1,33) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

# Report results
execute if score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"PASS shl ","bold":true,"color":"green"},{"text":"(","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" checks)","color":"gold"}]
execute unless score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL shl ","bold":true,"color":"red"},{"text":"(","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" failures out of ","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" + ","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" checks)","color":"gold"}]
scoreboard players operation _ut_total_checks_pass tests += _ut_pass tests
scoreboard players operation _ut_total_checks_fail tests += _ut_fail tests
scoreboard players add _ut_total_pass tests 1
execute unless score _ut_fail tests matches 0 run scoreboard players add _ut_total_fail tests 1
execute unless score _ut_fail tests matches 0 run data modify storage computer:test ut_failed append value "shl"
