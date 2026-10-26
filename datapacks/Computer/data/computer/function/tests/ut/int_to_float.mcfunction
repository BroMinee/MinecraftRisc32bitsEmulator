# auto-generated
# Unit test for computer:alu/float/int_to_float
scoreboard players set _ut_pass tests 0
scoreboard players set _ut_fail tests 0

data modify storage computer:alu a set value 0
scoreboard players set error stats 0
function computer:alu/float/int_to_float
execute if data storage computer:alu {result: 0.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 0.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 0.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_to_float(0) ","color":"gold"},{"text":"result: expected 0.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_to_float(0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
scoreboard players set error stats 0
function computer:alu/float/int_to_float
execute if data storage computer:alu {result: 1.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 1.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 1.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_to_float(1) ","color":"gold"},{"text":"result: expected 1.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_to_float(1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1
scoreboard players set error stats 0
function computer:alu/float/int_to_float
execute if data storage computer:alu {result: -1.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: -1.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: -1.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_to_float(-1) ","color":"gold"},{"text":"result: expected -1.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_to_float(-1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2147483647
scoreboard players set error stats 0
function computer:alu/float/int_to_float
execute if data storage computer:alu {result: 2147483648.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 2147483648.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 2147483648.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_to_float(2147483647) ","color":"gold"},{"text":"result: expected 2147483648.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_to_float(2147483647) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
scoreboard players set error stats 0
function computer:alu/float/int_to_float
execute if data storage computer:alu {result: -2147483648.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: -2147483648.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: -2147483648.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_to_float(-2147483648) ","color":"gold"},{"text":"result: expected -2147483648.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_to_float(-2147483648) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 16777216
scoreboard players set error stats 0
function computer:alu/float/int_to_float
execute if data storage computer:alu {result: 16777216.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 16777216.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 16777216.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_to_float(16777216) ","color":"gold"},{"text":"result: expected 16777216.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_to_float(16777216) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 16777217
scoreboard players set error stats 0
function computer:alu/float/int_to_float
execute if data storage computer:alu {result: 16777216.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 16777216.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 16777216.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_to_float(16777217) ","color":"gold"},{"text":"result: expected 16777216.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_to_float(16777217) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 100
scoreboard players set error stats 0
function computer:alu/float/int_to_float
execute if data storage computer:alu {result: 100.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 100.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 100.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_to_float(100) ","color":"gold"},{"text":"result: expected 100.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_to_float(100) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -100
scoreboard players set error stats 0
function computer:alu/float/int_to_float
execute if data storage computer:alu {result: -100.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: -100.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: -100.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_to_float(-100) ","color":"gold"},{"text":"result: expected -100.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_to_float(-100) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1000
scoreboard players set error stats 0
function computer:alu/float/int_to_float
execute if data storage computer:alu {result: 1000.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 1000.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 1000.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_to_float(1000) ","color":"gold"},{"text":"result: expected 1000.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_to_float(1000) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1000000
scoreboard players set error stats 0
function computer:alu/float/int_to_float
execute if data storage computer:alu {result: 1000000.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 1000000.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 1000000.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_to_float(1000000) ","color":"gold"},{"text":"result: expected 1000000.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_to_float(1000000) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 42
scoreboard players set error stats 0
function computer:alu/float/int_to_float
execute if data storage computer:alu {result: 42.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 42.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 42.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_to_float(42) ","color":"gold"},{"text":"result: expected 42.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_to_float(42) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -42
scoreboard players set error stats 0
function computer:alu/float/int_to_float
execute if data storage computer:alu {result: -42.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: -42.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: -42.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_to_float(-42) ","color":"gold"},{"text":"result: expected -42.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_to_float(-42) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

# Report results
execute if score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"PASS int_to_float ","bold":true,"color":"green"},{"text":"(","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" checks)","color":"gold"}]
execute unless score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL int_to_float ","bold":true,"color":"red"},{"text":"(","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" failures out of ","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" + ","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" checks)","color":"gold"}]
scoreboard players operation _ut_total_checks_pass tests += _ut_pass tests
scoreboard players operation _ut_total_checks_fail tests += _ut_fail tests
scoreboard players add _ut_total_pass tests 1
execute unless score _ut_fail tests matches 0 run scoreboard players add _ut_total_fail tests 1
execute unless score _ut_fail tests matches 0 run data modify storage computer:test ut_failed append value "int_to_float"
