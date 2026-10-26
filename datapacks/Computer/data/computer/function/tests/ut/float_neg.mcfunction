# auto-generated
# Unit test for computer:alu/float/float_neg
scoreboard players set _ut_pass tests 0
scoreboard players set _ut_fail tests 0

data modify storage computer:alu a set value 1.0f
scoreboard players set error stats 0
function computer:alu/float/float_neg
execute if data storage computer:alu {result: -1.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: -1.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: -1.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_neg(1.0) ","color":"gold"},{"text":"result: expected -1.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_neg(1.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1.0f
scoreboard players set error stats 0
function computer:alu/float/float_neg
execute if data storage computer:alu {result: 1.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 1.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 1.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_neg(-1.0) ","color":"gold"},{"text":"result: expected 1.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_neg(-1.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0.5f
scoreboard players set error stats 0
function computer:alu/float/float_neg
execute if data storage computer:alu {result: -0.5f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: -0.5f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: -0.5f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_neg(0.5) ","color":"gold"},{"text":"result: expected -0.5 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_neg(0.5) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -0.5f
scoreboard players set error stats 0
function computer:alu/float/float_neg
execute if data storage computer:alu {result: 0.5f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 0.5f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 0.5f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_neg(-0.5) ","color":"gold"},{"text":"result: expected 0.5 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_neg(-0.5) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 42.0f
scoreboard players set error stats 0
function computer:alu/float/float_neg
execute if data storage computer:alu {result: -42.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: -42.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: -42.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_neg(42.0) ","color":"gold"},{"text":"result: expected -42.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_neg(42.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -42.0f
scoreboard players set error stats 0
function computer:alu/float/float_neg
execute if data storage computer:alu {result: 42.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 42.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 42.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_neg(-42.0) ","color":"gold"},{"text":"result: expected 42.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_neg(-42.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 3.140000104904175f
scoreboard players set error stats 0
function computer:alu/float/float_neg
execute if data storage computer:alu {result: -3.140000104904175f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: -3.140000104904175f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: -3.140000104904175f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_neg(3.140000104904175) ","color":"gold"},{"text":"result: expected -3.140000104904175 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_neg(3.140000104904175) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 100.0f
scoreboard players set error stats 0
function computer:alu/float/float_neg
execute if data storage computer:alu {result: -100.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: -100.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: -100.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_neg(100.0) ","color":"gold"},{"text":"result: expected -100.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_neg(100.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1000.0f
scoreboard players set error stats 0
function computer:alu/float/float_neg
execute if data storage computer:alu {result: -1000.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: -1000.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: -1000.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_neg(1000.0) ","color":"gold"},{"text":"result: expected -1000.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_neg(1000.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

# Report results
execute if score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"PASS float_neg ","bold":true,"color":"green"},{"text":"(","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" checks)","color":"gold"}]
execute unless score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL float_neg ","bold":true,"color":"red"},{"text":"(","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" failures out of ","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" + ","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" checks)","color":"gold"}]
scoreboard players operation _ut_total_checks_pass tests += _ut_pass tests
scoreboard players operation _ut_total_checks_fail tests += _ut_fail tests
scoreboard players add _ut_total_pass tests 1
execute unless score _ut_fail tests matches 0 run scoreboard players add _ut_total_fail tests 1
execute unless score _ut_fail tests matches 0 run data modify storage computer:test ut_failed append value "float_neg"
