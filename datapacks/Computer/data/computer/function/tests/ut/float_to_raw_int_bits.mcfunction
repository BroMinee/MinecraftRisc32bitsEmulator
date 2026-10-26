# auto-generated
# Unit test for computer:alu/float/float_to_raw_int_bits
scoreboard players set _ut_pass tests 0
scoreboard players set _ut_fail tests 0

data modify storage computer:alu a set value 0.0f
scoreboard players set error stats 0
function computer:alu/float/float_to_raw_int_bits
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 0 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 0 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(0.0) ","color":"gold"},{"text":"result: expected 0 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(0.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1.0f
scoreboard players set error stats 0
function computer:alu/float/float_to_raw_int_bits
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1065353216 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1065353216 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1065353216 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(1.0) ","color":"gold"},{"text":"result: expected 1065353216 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(1.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1.0f
scoreboard players set error stats 0
function computer:alu/float/float_to_raw_int_bits
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1082130432 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1082130432 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1082130432 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(-1.0) ","color":"gold"},{"text":"result: expected -1082130432 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(-1.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2.0f
scoreboard players set error stats 0
function computer:alu/float/float_to_raw_int_bits
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1073741824 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1073741824 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1073741824 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(2.0) ","color":"gold"},{"text":"result: expected 1073741824 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(2.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0.5f
scoreboard players set error stats 0
function computer:alu/float/float_to_raw_int_bits
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1056964608 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1056964608 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1056964608 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(0.5) ","color":"gold"},{"text":"result: expected 1056964608 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(0.5) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 4.0f
scoreboard players set error stats 0
function computer:alu/float/float_to_raw_int_bits
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1082130432 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1082130432 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1082130432 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(4.0) ","color":"gold"},{"text":"result: expected 1082130432 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(4.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0.25f
scoreboard players set error stats 0
function computer:alu/float/float_to_raw_int_bits
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1048576000 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1048576000 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1048576000 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(0.25) ","color":"gold"},{"text":"result: expected 1048576000 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(0.25) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 8.0f
scoreboard players set error stats 0
function computer:alu/float/float_to_raw_int_bits
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1090519040 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1090519040 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1090519040 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(8.0) ","color":"gold"},{"text":"result: expected 1090519040 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(8.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 16.0f
scoreboard players set error stats 0
function computer:alu/float/float_to_raw_int_bits
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1098907648 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1098907648 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1098907648 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(16.0) ","color":"gold"},{"text":"result: expected 1098907648 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(16.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 3.140000104904175f
scoreboard players set error stats 0
function computer:alu/float/float_to_raw_int_bits
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1078523331 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1078523331 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1078523331 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(3.140000104904175) ","color":"gold"},{"text":"result: expected 1078523331 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(3.140000104904175) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -3.140000104904175f
scoreboard players set error stats 0
function computer:alu/float/float_to_raw_int_bits
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1068960317 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1068960317 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1068960317 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(-3.140000104904175) ","color":"gold"},{"text":"result: expected -1068960317 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(-3.140000104904175) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1.5f
scoreboard players set error stats 0
function computer:alu/float/float_to_raw_int_bits
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1069547520 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1069547520 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1069547520 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(1.5) ","color":"gold"},{"text":"result: expected 1069547520 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(1.5) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1.75f
scoreboard players set error stats 0
function computer:alu/float/float_to_raw_int_bits
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1071644672 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1071644672 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1071644672 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(1.75) ","color":"gold"},{"text":"result: expected 1071644672 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(1.75) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1.25f
scoreboard players set error stats 0
function computer:alu/float/float_to_raw_int_bits
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1067450368 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1067450368 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1067450368 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(1.25) ","color":"gold"},{"text":"result: expected 1067450368 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(1.25) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0.10000000149011612f
scoreboard players set error stats 0
function computer:alu/float/float_to_raw_int_bits
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1036831949 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1036831949 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1036831949 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(0.10000000149011612) ","color":"gold"},{"text":"result: expected 1036831949 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(0.10000000149011612) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0.30000001192092896f
scoreboard players set error stats 0
function computer:alu/float/float_to_raw_int_bits
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1050253722 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1050253722 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1050253722 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(0.30000001192092896) ","color":"gold"},{"text":"result: expected 1050253722 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(0.30000001192092896) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1000.0f
scoreboard players set error stats 0
function computer:alu/float/float_to_raw_int_bits
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches 1148846080 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches 1148846080 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches 1148846080 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(1000.0) ","color":"gold"},{"text":"result: expected 1148846080 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(1000.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -2.0f
scoreboard players set error stats 0
function computer:alu/float/float_to_raw_int_bits
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1073741824 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1073741824 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1073741824 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(-2.0) ","color":"gold"},{"text":"result: expected -1073741824 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(-2.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -0.5f
scoreboard players set error stats 0
function computer:alu/float/float_to_raw_int_bits
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -1090519040 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -1090519040 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -1090519040 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(-0.5) ","color":"gold"},{"text":"result: expected -1090519040 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(-0.5) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value -1000.0f
scoreboard players set error stats 0
function computer:alu/float/float_to_raw_int_bits
execute store result score _ut_got tests run data get storage computer:alu result
execute if score _ut_got tests matches -998637568 run scoreboard players add _ut_pass tests 1
execute unless score _ut_got tests matches -998637568 run scoreboard players add _ut_fail tests 1
execute unless score _ut_got tests matches -998637568 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(-1000.0) ","color":"gold"},{"text":"result: expected -998637568 got ","color":"white"},{"score":{"name":"_ut_got","objective":"tests"},"color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/float_to_raw_int_bits(-1000.0) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

# Report results
execute if score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"PASS float_to_raw_int_bits ","bold":true,"color":"green"},{"text":"(","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" checks)","color":"gold"}]
execute unless score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL float_to_raw_int_bits ","bold":true,"color":"red"},{"text":"(","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" failures out of ","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" + ","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" checks)","color":"gold"}]
scoreboard players operation _ut_total_checks_pass tests += _ut_pass tests
scoreboard players operation _ut_total_checks_fail tests += _ut_fail tests
scoreboard players add _ut_total_pass tests 1
execute unless score _ut_fail tests matches 0 run scoreboard players add _ut_total_fail tests 1
execute unless score _ut_fail tests matches 0 run data modify storage computer:test ut_failed append value "float_to_raw_int_bits"
