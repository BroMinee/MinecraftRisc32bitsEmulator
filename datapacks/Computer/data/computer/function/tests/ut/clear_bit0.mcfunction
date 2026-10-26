# auto-generated
# Unit test for computer:alu/int/clear_bit0
scoreboard players set _ut_pass tests 0
scoreboard players set _ut_fail tests 0

data modify storage computer:alu a set value 0
scoreboard players set error stats 0
function computer:alu/int/clear_bit0
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/clear_bit0(0) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/clear_bit0(0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
scoreboard players set error stats 0
function computer:alu/int/clear_bit0
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/clear_bit0(1) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/clear_bit0(1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2
scoreboard players set error stats 0
function computer:alu/int/clear_bit0
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/clear_bit0(2) ","color":"gold"},{"text":"result: expected 2 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/clear_bit0(2) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 3
scoreboard players set error stats 0
function computer:alu/int/clear_bit0
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/clear_bit0(3) ","color":"gold"},{"text":"result: expected 2 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/clear_bit0(3) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
scoreboard players set error stats 0
function computer:alu/int/clear_bit0
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/clear_bit0(-1) ","color":"gold"},{"text":"result: expected -2 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/clear_bit0(-1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2
scoreboard players set error stats 0
function computer:alu/int/clear_bit0
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/clear_bit0(-2) ","color":"gold"},{"text":"result: expected -2 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/clear_bit0(-2) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
scoreboard players set error stats 0
function computer:alu/int/clear_bit0
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 2147483646 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 2147483646 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 2147483646 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/clear_bit0(2147483647) ","color":"gold"},{"text":"result: expected 2147483646 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/clear_bit0(2147483647) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
scoreboard players set error stats 0
function computer:alu/int/clear_bit0
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2147483648 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2147483648 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2147483648 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/clear_bit0(-2147483648) ","color":"gold"},{"text":"result: expected -2147483648 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/clear_bit0(-2147483648) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483647
scoreboard players set error stats 0
function computer:alu/int/clear_bit0
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -2147483648 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -2147483648 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -2147483648 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/clear_bit0(-2147483647) ","color":"gold"},{"text":"result: expected -2147483648 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/clear_bit0(-2147483647) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -559038737
scoreboard players set error stats 0
function computer:alu/int/clear_bit0
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -559038738 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -559038738 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -559038738 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/clear_bit0(-559038737) ","color":"gold"},{"text":"result: expected -559038738 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/clear_bit0(-559038737) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 305419897
scoreboard players set error stats 0
function computer:alu/int/clear_bit0
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 305419896 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 305419896 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 305419896 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/clear_bit0(305419897) ","color":"gold"},{"text":"result: expected 305419896 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/int/clear_bit0(305419897) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

# Report results
execute if score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"PASS clear_bit0 ","bold":true,"color":"green"},{"text":"(","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" checks)","color":"gold"}]
execute unless score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL clear_bit0 ","bold":true,"color":"red"},{"text":"(","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" failures out of ","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" + ","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" checks)","color":"gold"}]
scoreboard players operation _ut_total_checks_pass tests += _ut_pass tests
scoreboard players operation _ut_total_checks_fail tests += _ut_fail tests
scoreboard players add _ut_total_pass tests 1
execute unless score _ut_fail tests matches 0 run scoreboard players add _ut_total_fail tests 1
execute unless score _ut_fail tests matches 0 run data modify storage computer:test ut_failed append value "clear_bit0"
