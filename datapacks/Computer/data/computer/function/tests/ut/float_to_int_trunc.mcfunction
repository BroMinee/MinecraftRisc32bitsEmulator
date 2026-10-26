# auto-generated
# Unit test for computer:alu/float/float_to_int_trunc
scoreboard players set _ut_pass tests 0
scoreboard players set _ut_fail tests 0

data modify storage computer:alu a set value 1.899999976158142f
scoreboard players set error stats 0
function computer:alu/float/float_to_int_trunc
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_int_trunc(1.899999976158142) ","color":"gold"},{"text":"result: expected 1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_int_trunc(1.899999976158142) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1.899999976158142f
scoreboard players set error stats 0
function computer:alu/float/float_to_int_trunc
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_int_trunc(-1.899999976158142) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_int_trunc(-1.899999976158142) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0.0f
scoreboard players set error stats 0
function computer:alu/float/float_to_int_trunc
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_int_trunc(0.0) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_int_trunc(0.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0.5f
scoreboard players set error stats 0
function computer:alu/float/float_to_int_trunc
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_int_trunc(0.5) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_int_trunc(0.5) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -0.5f
scoreboard players set error stats 0
function computer:alu/float/float_to_int_trunc
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_int_trunc(-0.5) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_int_trunc(-0.5) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1.0f
scoreboard players set error stats 0
function computer:alu/float/float_to_int_trunc
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_int_trunc(1.0) ","color":"gold"},{"text":"result: expected 1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_int_trunc(1.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1.0f
scoreboard players set error stats 0
function computer:alu/float/float_to_int_trunc
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_int_trunc(-1.0) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_int_trunc(-1.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 100.69999694824219f
scoreboard players set error stats 0
function computer:alu/float/float_to_int_trunc
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 100 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 100 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 100 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_int_trunc(100.69999694824219) ","color":"gold"},{"text":"result: expected 100 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_int_trunc(100.69999694824219) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -100.69999694824219f
scoreboard players set error stats 0
function computer:alu/float/float_to_int_trunc
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -100 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -100 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -100 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_int_trunc(-100.69999694824219) ","color":"gold"},{"text":"result: expected -100 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_int_trunc(-100.69999694824219) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0.9900000095367432f
scoreboard players set error stats 0
function computer:alu/float/float_to_int_trunc
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_int_trunc(0.9900000095367432) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_int_trunc(0.9900000095367432) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -0.9900000095367432f
scoreboard players set error stats 0
function computer:alu/float/float_to_int_trunc
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_int_trunc(-0.9900000095367432) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_int_trunc(-0.9900000095367432) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 42.0f
scoreboard players set error stats 0
function computer:alu/float/float_to_int_trunc
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 42 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 42 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 42 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_int_trunc(42.0) ","color":"gold"},{"text":"result: expected 42 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_int_trunc(42.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -42.0f
scoreboard players set error stats 0
function computer:alu/float/float_to_int_trunc
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -42 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -42 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -42 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_int_trunc(-42.0) ","color":"gold"},{"text":"result: expected -42 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_int_trunc(-42.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 3.140000104904175f
scoreboard players set error stats 0
function computer:alu/float/float_to_int_trunc
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 3 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 3 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 3 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_int_trunc(3.140000104904175) ","color":"gold"},{"text":"result: expected 3 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_int_trunc(3.140000104904175) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -3.140000104904175f
scoreboard players set error stats 0
function computer:alu/float/float_to_int_trunc
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -3 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -3 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -3 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_int_trunc(-3.140000104904175) ","color":"gold"},{"text":"result: expected -3 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_int_trunc(-3.140000104904175) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

# Report results
execute if score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"PASS float_to_int_trunc ","bold":true,"color":"green"},{"text":"(","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" checks)","color":"gold"}]
execute unless score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL float_to_int_trunc ","bold":true,"color":"red"},{"text":"(","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" failures out of ","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" + ","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" checks)","color":"gold"}]
scoreboard players operation _ut_total_checks_pass tests += _ut_pass tests
scoreboard players operation _ut_total_checks_fail tests += _ut_fail tests
scoreboard players add _ut_total_pass tests 1
execute unless score _ut_fail tests matches 0 run scoreboard players add _ut_total_fail tests 1
execute unless score _ut_fail tests matches 0 run data modify storage computer:test ut_failed append value "float_to_int_trunc"
