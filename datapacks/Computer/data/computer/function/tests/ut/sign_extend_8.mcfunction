# auto-generated
# Unit test for computer:alu/int/sign_extend_8
scoreboard players set _ut_pass tests 0
scoreboard players set _ut_fail tests 0

data modify storage computer:alu a set value 0
scoreboard players set error stats 0
function computer:alu/int/sign_extend_8
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/sign_extend_8(0) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/sign_extend_8(0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 127
scoreboard players set error stats 0
function computer:alu/int/sign_extend_8
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 127 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 127 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 127 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/sign_extend_8(127) ","color":"gold"},{"text":"result: expected 127 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/sign_extend_8(127) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 128
scoreboard players set error stats 0
function computer:alu/int/sign_extend_8
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -128 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -128 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -128 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/sign_extend_8(128) ","color":"gold"},{"text":"result: expected -128 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/sign_extend_8(128) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 255
scoreboard players set error stats 0
function computer:alu/int/sign_extend_8
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/sign_extend_8(255) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/sign_extend_8(255) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 256
scoreboard players set error stats 0
function computer:alu/int/sign_extend_8
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/sign_extend_8(256) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/sign_extend_8(256) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 65408
scoreboard players set error stats 0
function computer:alu/int/sign_extend_8
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -128 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -128 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -128 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/sign_extend_8(65408) ","color":"gold"},{"text":"result: expected -128 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/sign_extend_8(65408) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
scoreboard players set error stats 0
function computer:alu/int/sign_extend_8
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/sign_extend_8(-1) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/sign_extend_8(-1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
scoreboard players set error stats 0
function computer:alu/int/sign_extend_8
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/sign_extend_8(1) ","color":"gold"},{"text":"result: expected 1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/sign_extend_8(1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 50
scoreboard players set error stats 0
function computer:alu/int/sign_extend_8
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 50 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 50 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 50 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/sign_extend_8(50) ","color":"gold"},{"text":"result: expected 50 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/sign_extend_8(50) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 200
scoreboard players set error stats 0
function computer:alu/int/sign_extend_8
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -56 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -56 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -56 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/sign_extend_8(200) ","color":"gold"},{"text":"result: expected -56 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/sign_extend_8(200) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1000
scoreboard players set error stats 0
function computer:alu/int/sign_extend_8
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -24 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -24 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -24 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/sign_extend_8(1000) ","color":"gold"},{"text":"result: expected -24 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/sign_extend_8(1000) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -128
scoreboard players set error stats 0
function computer:alu/int/sign_extend_8
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -128 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -128 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -128 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/sign_extend_8(-128) ","color":"gold"},{"text":"result: expected -128 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/sign_extend_8(-128) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
scoreboard players set error stats 0
function computer:alu/int/sign_extend_8
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/sign_extend_8(-2147483648) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/sign_extend_8(-2147483648) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
scoreboard players set error stats 0
function computer:alu/int/sign_extend_8
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/sign_extend_8(2147483647) ","color":"gold"},{"text":"result: expected -1 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/sign_extend_8(2147483647) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

# Report results
execute if score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"PASS sign_extend_8 ","bold":true,"color":"green"},{"text":"(","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" checks)","color":"gold"}]
execute unless score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL sign_extend_8 ","bold":true,"color":"red"},{"text":"(","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" failures out of ","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" + ","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" checks)","color":"gold"}]
scoreboard players operation _ut_total_checks_pass tests += _ut_pass tests
scoreboard players operation _ut_total_checks_fail tests += _ut_fail tests
scoreboard players add _ut_total_pass tests 1
execute unless score _ut_fail tests matches 0 run scoreboard players add _ut_total_fail tests 1
execute unless score _ut_fail tests matches 0 run data modify storage computer:test ut_failed append value "sign_extend_8"
