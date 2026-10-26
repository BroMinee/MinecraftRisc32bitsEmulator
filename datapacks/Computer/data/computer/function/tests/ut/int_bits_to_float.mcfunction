# auto-generated
# Unit test for computer:alu/float/int_bits_to_float
scoreboard players set _ut_pass tests 0
scoreboard players set _ut_fail tests 0

data modify storage computer:alu a set value 0
scoreboard players set error stats 0
function computer:alu/float/int_bits_to_float
execute if data storage computer:alu {result: 0.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 0.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 0.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_bits_to_float(0) ","color":"gold"},{"text":"result: expected 0.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_bits_to_float(0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2147483648
scoreboard players set error stats 0
function computer:alu/float/int_bits_to_float
execute if data storage computer:alu {result: -0.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: -0.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: -0.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_bits_to_float(-2147483648) ","color":"gold"},{"text":"result: expected -0.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_bits_to_float(-2147483648) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1065353216
scoreboard players set error stats 0
function computer:alu/float/int_bits_to_float
execute if data storage computer:alu {result: 1.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 1.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 1.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_bits_to_float(1065353216) ","color":"gold"},{"text":"result: expected 1.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_bits_to_float(1065353216) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1082130432
scoreboard players set error stats 0
function computer:alu/float/int_bits_to_float
execute if data storage computer:alu {result: -1.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: -1.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: -1.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_bits_to_float(-1082130432) ","color":"gold"},{"text":"result: expected -1.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_bits_to_float(-1082130432) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1073741824
scoreboard players set error stats 0
function computer:alu/float/int_bits_to_float
execute if data storage computer:alu {result: 2.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 2.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 2.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_bits_to_float(1073741824) ","color":"gold"},{"text":"result: expected 2.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_bits_to_float(1073741824) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1056964608
scoreboard players set error stats 0
function computer:alu/float/int_bits_to_float
execute if data storage computer:alu {result: 0.5f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 0.5f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 0.5f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_bits_to_float(1056964608) ","color":"gold"},{"text":"result: expected 0.5 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_bits_to_float(1056964608) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1082130432
scoreboard players set error stats 0
function computer:alu/float/int_bits_to_float
execute if data storage computer:alu {result: 4.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 4.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 4.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_bits_to_float(1082130432) ","color":"gold"},{"text":"result: expected 4.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_bits_to_float(1082130432) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1048576000
scoreboard players set error stats 0
function computer:alu/float/int_bits_to_float
execute if data storage computer:alu {result: 0.25f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 0.25f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 0.25f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_bits_to_float(1048576000) ","color":"gold"},{"text":"result: expected 0.25 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_bits_to_float(1048576000) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1078523331
scoreboard players set error stats 0
function computer:alu/float/int_bits_to_float
execute if data storage computer:alu {result: 3.140000104904175f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 3.140000104904175f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 3.140000104904175f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_bits_to_float(1078523331) ","color":"gold"},{"text":"result: expected 3.140000104904175 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_bits_to_float(1078523331) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1068960317
scoreboard players set error stats 0
function computer:alu/float/int_bits_to_float
execute if data storage computer:alu {result: -3.140000104904175f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: -3.140000104904175f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: -3.140000104904175f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_bits_to_float(-1068960317) ","color":"gold"},{"text":"result: expected -3.140000104904175 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_bits_to_float(-1068960317) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1069547520
scoreboard players set error stats 0
function computer:alu/float/int_bits_to_float
execute if data storage computer:alu {result: 1.5f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 1.5f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 1.5f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_bits_to_float(1069547520) ","color":"gold"},{"text":"result: expected 1.5 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_bits_to_float(1069547520) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1148846080
scoreboard players set error stats 0
function computer:alu/float/int_bits_to_float
execute if data storage computer:alu {result: 1000.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 1000.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 1000.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_bits_to_float(1148846080) ","color":"gold"},{"text":"result: expected 1000.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_bits_to_float(1148846080) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1073741824
scoreboard players set error stats 0
function computer:alu/float/int_bits_to_float
execute if data storage computer:alu {result: -2.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: -2.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: -2.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_bits_to_float(-1073741824) ","color":"gold"},{"text":"result: expected -2.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_bits_to_float(-1073741824) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1090519040
scoreboard players set error stats 0
function computer:alu/float/int_bits_to_float
execute if data storage computer:alu {result: -0.5f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: -0.5f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: -0.5f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_bits_to_float(-1090519040) ","color":"gold"},{"text":"result: expected -0.5 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_bits_to_float(-1090519040) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -998637568
scoreboard players set error stats 0
function computer:alu/float/int_bits_to_float
execute if data storage computer:alu {result: -1000.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: -1000.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: -1000.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_bits_to_float(-998637568) ","color":"gold"},{"text":"result: expected -1000.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/int_bits_to_float(-998637568) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

# Report results
execute if score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"PASS int_bits_to_float ","bold":true,"color":"green"},{"text":"(","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" checks)","color":"gold"}]
execute unless score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL int_bits_to_float ","bold":true,"color":"red"},{"text":"(","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" failures out of ","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" + ","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" checks)","color":"gold"}]
scoreboard players operation _ut_total_checks_pass tests += _ut_pass tests
scoreboard players operation _ut_total_checks_fail tests += _ut_fail tests
scoreboard players add _ut_total_pass tests 1
execute unless score _ut_fail tests matches 0 run scoreboard players add _ut_total_fail tests 1
execute unless score _ut_fail tests matches 0 run data modify storage computer:test ut_failed append value "int_bits_to_float"
