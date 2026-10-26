# auto-generated
# Unit test for computer:alu/int/or
scoreboard players set _ut_pass tests 0
scoreboard players set _ut_fail tests 0

data modify storage computer:alu a set value 0
data modify storage computer:alu b set value 0
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(0,0) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(0,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu b set value 1
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(0,1) ","color":"gold"},{"text":"result: expected 1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(0,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu b set value -1
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(0,-1) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(0,-1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu b set value 2147483647
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2147483647 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2147483647 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2147483647 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(0,2147483647) ","color":"gold"},{"text":"result: expected 2147483647 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(0,2147483647) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu b set value -2147483648
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2147483648 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2147483648 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2147483648 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(0,-2147483648) ","color":"gold"},{"text":"result: expected -2147483648 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(0,-2147483648) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu b set value 1431655765
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1431655765 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1431655765 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1431655765 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(0,1431655765) ","color":"gold"},{"text":"result: expected 1431655765 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(0,1431655765) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu b set value -1431655766
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1431655766 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1431655766 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1431655766 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(0,-1431655766) ","color":"gold"},{"text":"result: expected -1431655766 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(0,-1431655766) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu b set value -16711936
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -16711936 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -16711936 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -16711936 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(0,-16711936) ","color":"gold"},{"text":"result: expected -16711936 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(0,-16711936) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu b set value 305419896
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 305419896 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 305419896 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 305419896 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(0,305419896) ","color":"gold"},{"text":"result: expected 305419896 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(0,305419896) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu b set value -559038737
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -559038737 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -559038737 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -559038737 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(0,-559038737) ","color":"gold"},{"text":"result: expected -559038737 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(0,-559038737) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu b set value 0
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1,0) ","color":"gold"},{"text":"result: expected 1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu b set value 1
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1,1) ","color":"gold"},{"text":"result: expected 1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu b set value -1
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1,-1) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1,-1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu b set value 2147483647
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2147483647 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2147483647 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2147483647 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1,2147483647) ","color":"gold"},{"text":"result: expected 2147483647 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1,2147483647) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu b set value -2147483648
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2147483647 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2147483647 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2147483647 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1,-2147483648) ","color":"gold"},{"text":"result: expected -2147483647 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1,-2147483648) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu b set value 1431655765
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1431655765 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1431655765 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1431655765 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1,1431655765) ","color":"gold"},{"text":"result: expected 1431655765 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1,1431655765) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu b set value -1431655766
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1431655765 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1431655765 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1431655765 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1,-1431655766) ","color":"gold"},{"text":"result: expected -1431655765 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1,-1431655766) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu b set value -16711936
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -16711935 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -16711935 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -16711935 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1,-16711936) ","color":"gold"},{"text":"result: expected -16711935 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1,-16711936) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu b set value 305419896
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 305419897 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 305419897 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 305419897 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1,305419896) ","color":"gold"},{"text":"result: expected 305419897 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1,305419896) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu b set value -559038737
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -559038737 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -559038737 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -559038737 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1,-559038737) ","color":"gold"},{"text":"result: expected -559038737 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1,-559038737) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu b set value 0
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1,0) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu b set value 1
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1,1) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu b set value -1
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1,-1) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1,-1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu b set value 2147483647
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1,2147483647) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1,2147483647) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu b set value -2147483648
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1,-2147483648) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1,-2147483648) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu b set value 1431655765
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1,1431655765) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1,1431655765) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu b set value -1431655766
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1,-1431655766) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1,-1431655766) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu b set value -16711936
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1,-16711936) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1,-16711936) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu b set value 305419896
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1,305419896) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1,305419896) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
data modify storage computer:alu b set value -559038737
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1,-559038737) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1,-559038737) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu b set value 0
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2147483647 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2147483647 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2147483647 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(2147483647,0) ","color":"gold"},{"text":"result: expected 2147483647 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(2147483647,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu b set value 1
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2147483647 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2147483647 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2147483647 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(2147483647,1) ","color":"gold"},{"text":"result: expected 2147483647 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(2147483647,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu b set value -1
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(2147483647,-1) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(2147483647,-1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu b set value 2147483647
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2147483647 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2147483647 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2147483647 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(2147483647,2147483647) ","color":"gold"},{"text":"result: expected 2147483647 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(2147483647,2147483647) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu b set value -2147483648
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(2147483647,-2147483648) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(2147483647,-2147483648) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu b set value 1431655765
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2147483647 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2147483647 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2147483647 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(2147483647,1431655765) ","color":"gold"},{"text":"result: expected 2147483647 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(2147483647,1431655765) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu b set value -1431655766
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(2147483647,-1431655766) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(2147483647,-1431655766) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu b set value -16711936
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(2147483647,-16711936) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(2147483647,-16711936) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu b set value 305419896
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2147483647 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2147483647 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2147483647 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(2147483647,305419896) ","color":"gold"},{"text":"result: expected 2147483647 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(2147483647,305419896) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
data modify storage computer:alu b set value -559038737
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(2147483647,-559038737) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(2147483647,-559038737) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu b set value 0
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2147483648 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2147483648 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2147483648 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-2147483648,0) ","color":"gold"},{"text":"result: expected -2147483648 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-2147483648,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu b set value 1
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2147483647 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2147483647 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2147483647 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-2147483648,1) ","color":"gold"},{"text":"result: expected -2147483647 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-2147483648,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu b set value -1
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-2147483648,-1) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-2147483648,-1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu b set value 2147483647
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-2147483648,2147483647) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-2147483648,2147483647) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu b set value -2147483648
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2147483648 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2147483648 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2147483648 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-2147483648,-2147483648) ","color":"gold"},{"text":"result: expected -2147483648 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-2147483648,-2147483648) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu b set value 1431655765
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -715827883 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -715827883 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -715827883 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-2147483648,1431655765) ","color":"gold"},{"text":"result: expected -715827883 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-2147483648,1431655765) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu b set value -1431655766
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1431655766 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1431655766 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1431655766 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-2147483648,-1431655766) ","color":"gold"},{"text":"result: expected -1431655766 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-2147483648,-1431655766) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu b set value -16711936
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -16711936 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -16711936 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -16711936 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-2147483648,-16711936) ","color":"gold"},{"text":"result: expected -16711936 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-2147483648,-16711936) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu b set value 305419896
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1842063752 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1842063752 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1842063752 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-2147483648,305419896) ","color":"gold"},{"text":"result: expected -1842063752 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-2147483648,305419896) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
data modify storage computer:alu b set value -559038737
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -559038737 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -559038737 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -559038737 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-2147483648,-559038737) ","color":"gold"},{"text":"result: expected -559038737 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-2147483648,-559038737) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1431655765
data modify storage computer:alu b set value 0
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1431655765 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1431655765 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1431655765 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1431655765,0) ","color":"gold"},{"text":"result: expected 1431655765 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1431655765,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1431655765
data modify storage computer:alu b set value 1
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1431655765 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1431655765 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1431655765 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1431655765,1) ","color":"gold"},{"text":"result: expected 1431655765 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1431655765,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1431655765
data modify storage computer:alu b set value -1
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1431655765,-1) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1431655765,-1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1431655765
data modify storage computer:alu b set value 2147483647
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2147483647 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2147483647 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2147483647 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1431655765,2147483647) ","color":"gold"},{"text":"result: expected 2147483647 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1431655765,2147483647) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1431655765
data modify storage computer:alu b set value -2147483648
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -715827883 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -715827883 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -715827883 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1431655765,-2147483648) ","color":"gold"},{"text":"result: expected -715827883 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1431655765,-2147483648) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1431655765
data modify storage computer:alu b set value 1431655765
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1431655765 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1431655765 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1431655765 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1431655765,1431655765) ","color":"gold"},{"text":"result: expected 1431655765 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1431655765,1431655765) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1431655765
data modify storage computer:alu b set value -1431655766
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1431655765,-1431655766) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1431655765,-1431655766) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1431655765
data modify storage computer:alu b set value -16711936
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -11141291 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -11141291 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -11141291 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1431655765,-16711936) ","color":"gold"},{"text":"result: expected -11141291 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1431655765,-16711936) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1431655765
data modify storage computer:alu b set value 305419896
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1467307901 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1467307901 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1467307901 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1431655765,305419896) ","color":"gold"},{"text":"result: expected 1467307901 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1431655765,305419896) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1431655765
data modify storage computer:alu b set value -559038737
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -537001985 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -537001985 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -537001985 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1431655765,-559038737) ","color":"gold"},{"text":"result: expected -537001985 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(1431655765,-559038737) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1431655766
data modify storage computer:alu b set value 0
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1431655766 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1431655766 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1431655766 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1431655766,0) ","color":"gold"},{"text":"result: expected -1431655766 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1431655766,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1431655766
data modify storage computer:alu b set value 1
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1431655765 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1431655765 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1431655765 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1431655766,1) ","color":"gold"},{"text":"result: expected -1431655765 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1431655766,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1431655766
data modify storage computer:alu b set value -1
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1431655766,-1) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1431655766,-1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1431655766
data modify storage computer:alu b set value 2147483647
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1431655766,2147483647) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1431655766,2147483647) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1431655766
data modify storage computer:alu b set value -2147483648
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1431655766 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1431655766 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1431655766 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1431655766,-2147483648) ","color":"gold"},{"text":"result: expected -1431655766 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1431655766,-2147483648) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1431655766
data modify storage computer:alu b set value 1431655765
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1431655766,1431655765) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1431655766,1431655765) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1431655766
data modify storage computer:alu b set value -1431655766
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1431655766 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1431655766 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1431655766 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1431655766,-1431655766) ","color":"gold"},{"text":"result: expected -1431655766 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1431655766,-1431655766) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1431655766
data modify storage computer:alu b set value -16711936
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -5570646 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -5570646 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -5570646 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1431655766,-16711936) ","color":"gold"},{"text":"result: expected -5570646 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1431655766,-16711936) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1431655766
data modify storage computer:alu b set value 305419896
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1161888006 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1161888006 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1161888006 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1431655766,305419896) ","color":"gold"},{"text":"result: expected -1161888006 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1431655766,305419896) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1431655766
data modify storage computer:alu b set value -559038737
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -22036753 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -22036753 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -22036753 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1431655766,-559038737) ","color":"gold"},{"text":"result: expected -22036753 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-1431655766,-559038737) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -16711936
data modify storage computer:alu b set value 0
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -16711936 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -16711936 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -16711936 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-16711936,0) ","color":"gold"},{"text":"result: expected -16711936 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-16711936,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -16711936
data modify storage computer:alu b set value 1
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -16711935 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -16711935 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -16711935 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-16711936,1) ","color":"gold"},{"text":"result: expected -16711935 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-16711936,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -16711936
data modify storage computer:alu b set value -1
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-16711936,-1) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-16711936,-1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -16711936
data modify storage computer:alu b set value 2147483647
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-16711936,2147483647) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-16711936,2147483647) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -16711936
data modify storage computer:alu b set value -2147483648
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -16711936 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -16711936 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -16711936 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-16711936,-2147483648) ","color":"gold"},{"text":"result: expected -16711936 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-16711936,-2147483648) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -16711936
data modify storage computer:alu b set value 1431655765
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -11141291 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -11141291 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -11141291 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-16711936,1431655765) ","color":"gold"},{"text":"result: expected -11141291 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-16711936,1431655765) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -16711936
data modify storage computer:alu b set value -1431655766
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -5570646 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -5570646 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -5570646 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-16711936,-1431655766) ","color":"gold"},{"text":"result: expected -5570646 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-16711936,-1431655766) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -16711936
data modify storage computer:alu b set value -16711936
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -16711936 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -16711936 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -16711936 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-16711936,-16711936) ","color":"gold"},{"text":"result: expected -16711936 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-16711936,-16711936) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -16711936
data modify storage computer:alu b set value 305419896
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -13303944 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -13303944 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -13303944 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-16711936,305419896) ","color":"gold"},{"text":"result: expected -13303944 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-16711936,305419896) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -16711936
data modify storage computer:alu b set value -559038737
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -5373969 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -5373969 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -5373969 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-16711936,-559038737) ","color":"gold"},{"text":"result: expected -5373969 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-16711936,-559038737) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 305419896
data modify storage computer:alu b set value 0
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 305419896 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 305419896 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 305419896 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(305419896,0) ","color":"gold"},{"text":"result: expected 305419896 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(305419896,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 305419896
data modify storage computer:alu b set value 1
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 305419897 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 305419897 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 305419897 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(305419896,1) ","color":"gold"},{"text":"result: expected 305419897 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(305419896,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 305419896
data modify storage computer:alu b set value -1
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(305419896,-1) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(305419896,-1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 305419896
data modify storage computer:alu b set value 2147483647
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2147483647 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2147483647 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2147483647 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(305419896,2147483647) ","color":"gold"},{"text":"result: expected 2147483647 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(305419896,2147483647) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 305419896
data modify storage computer:alu b set value -2147483648
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1842063752 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1842063752 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1842063752 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(305419896,-2147483648) ","color":"gold"},{"text":"result: expected -1842063752 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(305419896,-2147483648) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 305419896
data modify storage computer:alu b set value 1431655765
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1467307901 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1467307901 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1467307901 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(305419896,1431655765) ","color":"gold"},{"text":"result: expected 1467307901 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(305419896,1431655765) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 305419896
data modify storage computer:alu b set value -1431655766
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1161888006 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1161888006 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1161888006 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(305419896,-1431655766) ","color":"gold"},{"text":"result: expected -1161888006 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(305419896,-1431655766) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 305419896
data modify storage computer:alu b set value -16711936
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -13303944 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -13303944 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -13303944 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(305419896,-16711936) ","color":"gold"},{"text":"result: expected -13303944 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(305419896,-16711936) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 305419896
data modify storage computer:alu b set value 305419896
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 305419896 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 305419896 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 305419896 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(305419896,305419896) ","color":"gold"},{"text":"result: expected 305419896 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(305419896,305419896) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 305419896
data modify storage computer:alu b set value -559038737
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -557973761 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -557973761 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -557973761 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(305419896,-559038737) ","color":"gold"},{"text":"result: expected -557973761 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(305419896,-559038737) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -559038737
data modify storage computer:alu b set value 0
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -559038737 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -559038737 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -559038737 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-559038737,0) ","color":"gold"},{"text":"result: expected -559038737 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-559038737,0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -559038737
data modify storage computer:alu b set value 1
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -559038737 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -559038737 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -559038737 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-559038737,1) ","color":"gold"},{"text":"result: expected -559038737 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-559038737,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -559038737
data modify storage computer:alu b set value -1
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-559038737,-1) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-559038737,-1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -559038737
data modify storage computer:alu b set value 2147483647
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-559038737,2147483647) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-559038737,2147483647) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -559038737
data modify storage computer:alu b set value -2147483648
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -559038737 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -559038737 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -559038737 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-559038737,-2147483648) ","color":"gold"},{"text":"result: expected -559038737 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-559038737,-2147483648) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -559038737
data modify storage computer:alu b set value 1431655765
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -537001985 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -537001985 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -537001985 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-559038737,1431655765) ","color":"gold"},{"text":"result: expected -537001985 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-559038737,1431655765) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -559038737
data modify storage computer:alu b set value -1431655766
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -22036753 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -22036753 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -22036753 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-559038737,-1431655766) ","color":"gold"},{"text":"result: expected -22036753 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-559038737,-1431655766) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -559038737
data modify storage computer:alu b set value -16711936
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -5373969 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -5373969 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -5373969 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-559038737,-16711936) ","color":"gold"},{"text":"result: expected -5373969 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-559038737,-16711936) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -559038737
data modify storage computer:alu b set value 305419896
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -557973761 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -557973761 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -557973761 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-559038737,305419896) ","color":"gold"},{"text":"result: expected -557973761 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-559038737,305419896) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -559038737
data modify storage computer:alu b set value -559038737
scoreboard players set error stats 0
function computer:alu/int/or
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -559038737 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -559038737 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -559038737 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-559038737,-559038737) ","color":"gold"},{"text":"result: expected -559038737 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/or(-559038737,-559038737) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

# Report results
execute if score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"PASS or ","bold":true,"color":"green"},{"text":"(","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" checks)","color":"gold"}]
execute unless score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL or ","bold":true,"color":"red"},{"text":"(","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" failures out of ","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" + ","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" checks)","color":"gold"}]
scoreboard players operation _ut_total_checks_pass tests += _ut_pass tests
scoreboard players operation _ut_total_checks_fail tests += _ut_fail tests
scoreboard players add _ut_total_pass tests 1
execute unless score _ut_fail tests matches 0 run scoreboard players add _ut_total_fail tests 1
execute unless score _ut_fail tests matches 0 run data modify storage computer:test ut_failed append value "or"
