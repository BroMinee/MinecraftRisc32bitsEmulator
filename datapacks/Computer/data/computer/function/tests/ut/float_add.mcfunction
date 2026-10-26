# auto-generated
# Unit test for computer:alu/float/float_add
scoreboard players set _ut_pass tests 0
scoreboard players set _ut_fail tests 0

data modify storage computer:alu a set value 1.0f
data modify storage computer:alu b set value 2.0f
scoreboard players set error stats 0
function computer:alu/float/float_add
execute if data storage computer:alu {result: 3.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 3.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 3.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_add(1.0,2.0) ","color":"gold"},{"text":"result: expected 3.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_add(1.0,2.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1.0f
data modify storage computer:alu b set value 1.0f
scoreboard players set error stats 0
function computer:alu/float/float_add
execute if data storage computer:alu {result: 0.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 0.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 0.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_add(-1.0,1.0) ","color":"gold"},{"text":"result: expected 0.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_add(-1.0,1.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0.0f
data modify storage computer:alu b set value 0.0f
scoreboard players set error stats 0
function computer:alu/float/float_add
execute if data storage computer:alu {result: 0.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 0.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 0.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_add(0.0,0.0) ","color":"gold"},{"text":"result: expected 0.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_add(0.0,0.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0.5f
data modify storage computer:alu b set value 0.25f
scoreboard players set error stats 0
function computer:alu/float/float_add
execute if data storage computer:alu {result: 0.75f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 0.75f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 0.75f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_add(0.5,0.25) ","color":"gold"},{"text":"result: expected 0.75 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_add(0.5,0.25) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -0.5f
data modify storage computer:alu b set value -0.5f
scoreboard players set error stats 0
function computer:alu/float/float_add
execute if data storage computer:alu {result: -1.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: -1.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: -1.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_add(-0.5,-0.5) ","color":"gold"},{"text":"result: expected -1.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_add(-0.5,-0.5) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 100.0f
data modify storage computer:alu b set value 200.0f
scoreboard players set error stats 0
function computer:alu/float/float_add
execute if data storage computer:alu {result: 300.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 300.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 300.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_add(100.0,200.0) ","color":"gold"},{"text":"result: expected 300.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_add(100.0,200.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1.5f
data modify storage computer:alu b set value 2.5f
scoreboard players set error stats 0
function computer:alu/float/float_add
execute if data storage computer:alu {result: 4.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 4.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 4.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_add(1.5,2.5) ","color":"gold"},{"text":"result: expected 4.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_add(1.5,2.5) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0.10000000149011612f
data modify storage computer:alu b set value 0.20000000298023224f
scoreboard players set error stats 0
function computer:alu/float/float_add
execute if data storage computer:alu {result: 0.30000001192092896f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 0.30000001192092896f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 0.30000001192092896f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_add(0.10000000149011612,0.20000000298023224) ","color":"gold"},{"text":"result: expected 0.30000001192092896 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_add(0.10000000149011612,0.20000000298023224) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -3.140000104904175f
data modify storage computer:alu b set value 3.140000104904175f
scoreboard players set error stats 0
function computer:alu/float/float_add
execute if data storage computer:alu {result: 0.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 0.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 0.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_add(-3.140000104904175,3.140000104904175) ","color":"gold"},{"text":"result: expected 0.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_add(-3.140000104904175,3.140000104904175) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1000.0f
data modify storage computer:alu b set value 0.0010000000474974513f
scoreboard players set error stats 0
function computer:alu/float/float_add
execute if data storage computer:alu {result: 1000.0009765625f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 1000.0009765625f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 1000.0009765625f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_add(1000.0,0.0010000000474974513) ","color":"gold"},{"text":"result: expected 1000.0009765625 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_add(1000.0,0.0010000000474974513) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 3.4028234663852886e+38f
data modify storage computer:alu b set value 3.4028234663852886e+38f
scoreboard players set error stats 0
function computer:alu/float/float_add
execute if score error stats matches 1 run scoreboard players add _ut_pass tests 1
execute unless score error stats matches 1 run scoreboard players add _ut_fail tests 1
execute unless score error stats matches 1 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_add(3.4028234663852886e+38,3.4028234663852886e+38) ","color":"gold"},{"text":"expected ERROR but no error","color":"white"}]
scoreboard players set error stats 0
data modify storage computer:alu stack set value []

# Report results
execute if score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"PASS float_add ","bold":true,"color":"green"},{"text":"(","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" checks)","color":"gold"}]
execute unless score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL float_add ","bold":true,"color":"red"},{"text":"(","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" failures out of ","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" + ","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" checks)","color":"gold"}]
scoreboard players operation _ut_total_checks_pass tests += _ut_pass tests
scoreboard players operation _ut_total_checks_fail tests += _ut_fail tests
scoreboard players add _ut_total_pass tests 1
execute unless score _ut_fail tests matches 0 run scoreboard players add _ut_total_fail tests 1
execute unless score _ut_fail tests matches 0 run data modify storage computer:test ut_failed append value "float_add"
