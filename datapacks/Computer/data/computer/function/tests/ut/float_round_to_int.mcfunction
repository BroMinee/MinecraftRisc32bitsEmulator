# auto-generated
# Unit test for computer:alu/float/float_round_to_int
scoreboard players set _ut_pass tests 0
scoreboard players set _ut_fail tests 0

data modify storage computer:alu a set value 0.5f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(0.5) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(0.5) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1.5f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(1.5) ","color":"gold"},{"text":"result: expected 2 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(1.5) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2.5f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(2.5) ","color":"gold"},{"text":"result: expected 2 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(2.5) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 3.5f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 4 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 4 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 4 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(3.5) ","color":"gold"},{"text":"result: expected 4 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(3.5) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -0.5f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-0.5) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-0.5) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1.5f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-1.5) ","color":"gold"},{"text":"result: expected -2 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-1.5) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2.5f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-2.5) ","color":"gold"},{"text":"result: expected -2 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-2.5) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1.2999999523162842f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(1.2999999523162842) ","color":"gold"},{"text":"result: expected 1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(1.2999999523162842) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1.7000000476837158f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(1.7000000476837158) ","color":"gold"},{"text":"result: expected 2 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(1.7000000476837158) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1.2999999523162842f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-1.2999999523162842) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-1.2999999523162842) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1.7000000476837158f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-1.7000000476837158) ","color":"gold"},{"text":"result: expected -2 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-1.7000000476837158) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0.0f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(0.0) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(0.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 100.0f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 100 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 100 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 100 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(100.0) ","color":"gold"},{"text":"result: expected 100 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(100.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -100.0f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -100 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -100 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -100 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-100.0) ","color":"gold"},{"text":"result: expected -100 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-100.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -10.0f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -10 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -10 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -10 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-10.0) ","color":"gold"},{"text":"result: expected -10 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-10.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -9.75f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -10 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -10 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -10 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-9.75) ","color":"gold"},{"text":"result: expected -10 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-9.75) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -9.5f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -10 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -10 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -10 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-9.5) ","color":"gold"},{"text":"result: expected -10 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-9.5) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -9.25f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -9 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -9 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -9 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-9.25) ","color":"gold"},{"text":"result: expected -9 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-9.25) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -9.0f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -9 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -9 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -9 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-9.0) ","color":"gold"},{"text":"result: expected -9 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-9.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -8.75f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -9 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -9 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -9 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-8.75) ","color":"gold"},{"text":"result: expected -9 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-8.75) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -8.5f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -8 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -8 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -8 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-8.5) ","color":"gold"},{"text":"result: expected -8 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-8.5) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -8.25f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -8 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -8 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -8 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-8.25) ","color":"gold"},{"text":"result: expected -8 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-8.25) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -8.0f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -8 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -8 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -8 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-8.0) ","color":"gold"},{"text":"result: expected -8 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-8.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -7.75f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -8 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -8 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -8 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-7.75) ","color":"gold"},{"text":"result: expected -8 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-7.75) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -7.5f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -8 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -8 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -8 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-7.5) ","color":"gold"},{"text":"result: expected -8 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-7.5) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -7.25f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -7 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -7 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -7 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-7.25) ","color":"gold"},{"text":"result: expected -7 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-7.25) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -7.0f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -7 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -7 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -7 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-7.0) ","color":"gold"},{"text":"result: expected -7 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-7.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -6.75f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -7 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -7 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -7 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-6.75) ","color":"gold"},{"text":"result: expected -7 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-6.75) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -6.5f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -6 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -6 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -6 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-6.5) ","color":"gold"},{"text":"result: expected -6 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-6.5) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -6.25f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -6 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -6 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -6 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-6.25) ","color":"gold"},{"text":"result: expected -6 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-6.25) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -6.0f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -6 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -6 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -6 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-6.0) ","color":"gold"},{"text":"result: expected -6 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-6.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -5.75f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -6 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -6 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -6 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-5.75) ","color":"gold"},{"text":"result: expected -6 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-5.75) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -5.5f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -6 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -6 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -6 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-5.5) ","color":"gold"},{"text":"result: expected -6 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-5.5) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -5.25f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -5 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -5 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -5 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-5.25) ","color":"gold"},{"text":"result: expected -5 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-5.25) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -5.0f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -5 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -5 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -5 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-5.0) ","color":"gold"},{"text":"result: expected -5 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-5.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -4.75f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -5 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -5 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -5 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-4.75) ","color":"gold"},{"text":"result: expected -5 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-4.75) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -4.5f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -4 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -4 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -4 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-4.5) ","color":"gold"},{"text":"result: expected -4 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-4.5) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -4.25f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -4 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -4 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -4 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-4.25) ","color":"gold"},{"text":"result: expected -4 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-4.25) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -4.0f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -4 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -4 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -4 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-4.0) ","color":"gold"},{"text":"result: expected -4 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-4.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -3.75f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -4 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -4 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -4 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-3.75) ","color":"gold"},{"text":"result: expected -4 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-3.75) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -3.5f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -4 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -4 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -4 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-3.5) ","color":"gold"},{"text":"result: expected -4 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-3.5) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -3.25f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -3 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -3 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -3 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-3.25) ","color":"gold"},{"text":"result: expected -3 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-3.25) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -3.0f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -3 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -3 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -3 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-3.0) ","color":"gold"},{"text":"result: expected -3 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-3.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2.75f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -3 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -3 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -3 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-2.75) ","color":"gold"},{"text":"result: expected -3 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-2.75) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2.25f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-2.25) ","color":"gold"},{"text":"result: expected -2 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-2.25) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2.0f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-2.0) ","color":"gold"},{"text":"result: expected -2 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-2.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1.75f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-1.75) ","color":"gold"},{"text":"result: expected -2 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-1.75) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1.25f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-1.25) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-1.25) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1.0f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-1.0) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-1.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -0.75f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-0.75) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-0.75) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -0.25f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-0.25) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(-0.25) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0.25f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(0.25) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(0.25) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0.75f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(0.75) ","color":"gold"},{"text":"result: expected 1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(0.75) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1.0f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(1.0) ","color":"gold"},{"text":"result: expected 1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(1.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1.25f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(1.25) ","color":"gold"},{"text":"result: expected 1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(1.25) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1.75f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(1.75) ","color":"gold"},{"text":"result: expected 2 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(1.75) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2.0f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(2.0) ","color":"gold"},{"text":"result: expected 2 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(2.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2.25f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(2.25) ","color":"gold"},{"text":"result: expected 2 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(2.25) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2.75f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 3 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 3 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 3 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(2.75) ","color":"gold"},{"text":"result: expected 3 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(2.75) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 3.0f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 3 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 3 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 3 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(3.0) ","color":"gold"},{"text":"result: expected 3 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(3.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 3.25f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 3 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 3 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 3 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(3.25) ","color":"gold"},{"text":"result: expected 3 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(3.25) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 3.75f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 4 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 4 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 4 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(3.75) ","color":"gold"},{"text":"result: expected 4 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(3.75) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 4.0f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 4 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 4 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 4 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(4.0) ","color":"gold"},{"text":"result: expected 4 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(4.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 4.25f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 4 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 4 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 4 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(4.25) ","color":"gold"},{"text":"result: expected 4 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(4.25) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 4.5f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 4 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 4 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 4 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(4.5) ","color":"gold"},{"text":"result: expected 4 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(4.5) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 4.75f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 5 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 5 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 5 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(4.75) ","color":"gold"},{"text":"result: expected 5 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(4.75) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 5.0f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 5 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 5 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 5 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(5.0) ","color":"gold"},{"text":"result: expected 5 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(5.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 5.25f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 5 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 5 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 5 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(5.25) ","color":"gold"},{"text":"result: expected 5 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(5.25) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 5.5f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 6 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 6 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 6 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(5.5) ","color":"gold"},{"text":"result: expected 6 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(5.5) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 5.75f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 6 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 6 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 6 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(5.75) ","color":"gold"},{"text":"result: expected 6 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(5.75) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 6.0f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 6 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 6 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 6 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(6.0) ","color":"gold"},{"text":"result: expected 6 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(6.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 6.25f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 6 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 6 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 6 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(6.25) ","color":"gold"},{"text":"result: expected 6 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(6.25) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 6.5f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 6 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 6 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 6 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(6.5) ","color":"gold"},{"text":"result: expected 6 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(6.5) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 6.75f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 7 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 7 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 7 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(6.75) ","color":"gold"},{"text":"result: expected 7 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(6.75) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 7.0f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 7 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 7 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 7 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(7.0) ","color":"gold"},{"text":"result: expected 7 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(7.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 7.25f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 7 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 7 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 7 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(7.25) ","color":"gold"},{"text":"result: expected 7 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(7.25) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 7.5f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 8 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 8 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 8 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(7.5) ","color":"gold"},{"text":"result: expected 8 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(7.5) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 7.75f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 8 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 8 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 8 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(7.75) ","color":"gold"},{"text":"result: expected 8 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(7.75) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 8.0f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 8 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 8 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 8 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(8.0) ","color":"gold"},{"text":"result: expected 8 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(8.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 8.25f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 8 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 8 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 8 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(8.25) ","color":"gold"},{"text":"result: expected 8 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(8.25) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 8.5f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 8 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 8 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 8 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(8.5) ","color":"gold"},{"text":"result: expected 8 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(8.5) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 8.75f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 9 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 9 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 9 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(8.75) ","color":"gold"},{"text":"result: expected 9 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(8.75) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 9.0f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 9 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 9 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 9 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(9.0) ","color":"gold"},{"text":"result: expected 9 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(9.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 9.25f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 9 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 9 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 9 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(9.25) ","color":"gold"},{"text":"result: expected 9 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(9.25) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 9.5f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 10 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 10 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 10 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(9.5) ","color":"gold"},{"text":"result: expected 10 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(9.5) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 9.75f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 10 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 10 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 10 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(9.75) ","color":"gold"},{"text":"result: expected 10 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(9.75) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 10.0f
scoreboard players set error stats 0
function computer:alu/float/float_round_to_int
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 10 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 10 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 10 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(10.0) ","color":"gold"},{"text":"result: expected 10 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_round_to_int(10.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

# Report results
execute if score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"PASS float_round_to_int ","bold":true,"color":"green"},{"text":"(","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" checks)","color":"gold"}]
execute unless score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL float_round_to_int ","bold":true,"color":"red"},{"text":"(","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" failures out of ","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" + ","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" checks)","color":"gold"}]
scoreboard players operation _ut_total_checks_pass tests += _ut_pass tests
scoreboard players operation _ut_total_checks_fail tests += _ut_fail tests
scoreboard players add _ut_total_pass tests 1
execute unless score _ut_fail tests matches 0 run scoreboard players add _ut_total_fail tests 1
execute unless score _ut_fail tests matches 0 run data modify storage computer:test ut_failed append value "float_round_to_int"
