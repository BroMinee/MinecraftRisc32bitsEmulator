# auto-generated
# Unit test for computer:alu/float/bits_to_fraction
scoreboard players set _ut_pass tests 0
scoreboard players set _ut_fail tests 0

data modify storage computer:alu a set value 0
data modify storage computer:alu n set value 23
scoreboard players set error stats 0
function computer:alu/float/bits_to_fraction
execute if data storage computer:alu {result: 0.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 0.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 0.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/bits_to_fraction(0,23) ","color":"gold"},{"text":"result: expected 0.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/bits_to_fraction(0,23) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 4194304
data modify storage computer:alu n set value 23
scoreboard players set error stats 0
function computer:alu/float/bits_to_fraction
execute if data storage computer:alu {result: 0.5f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 0.5f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 0.5f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/bits_to_fraction(4194304,23) ","color":"gold"},{"text":"result: expected 0.5 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/bits_to_fraction(4194304,23) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2097152
data modify storage computer:alu n set value 23
scoreboard players set error stats 0
function computer:alu/float/bits_to_fraction
execute if data storage computer:alu {result: 0.25f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 0.25f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 0.25f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/bits_to_fraction(2097152,23) ","color":"gold"},{"text":"result: expected 0.25 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/bits_to_fraction(2097152,23) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 6291456
data modify storage computer:alu n set value 23
scoreboard players set error stats 0
function computer:alu/float/bits_to_fraction
execute if data storage computer:alu {result: 0.75f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 0.75f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 0.75f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/bits_to_fraction(6291456,23) ","color":"gold"},{"text":"result: expected 0.75 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/bits_to_fraction(6291456,23) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1048576
data modify storage computer:alu n set value 23
scoreboard players set error stats 0
function computer:alu/float/bits_to_fraction
execute if data storage computer:alu {result: 0.125f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 0.125f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 0.125f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/bits_to_fraction(1048576,23) ","color":"gold"},{"text":"result: expected 0.125 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/bits_to_fraction(1048576,23) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 7340032
data modify storage computer:alu n set value 23
scoreboard players set error stats 0
function computer:alu/float/bits_to_fraction
execute if data storage computer:alu {result: 0.875f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 0.875f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 0.875f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/bits_to_fraction(7340032,23) ","color":"gold"},{"text":"result: expected 0.875 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/bits_to_fraction(7340032,23) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 8388607
data modify storage computer:alu n set value 23
scoreboard players set error stats 0
function computer:alu/float/bits_to_fraction
execute if data storage computer:alu {result: 0.9999998807907104f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 0.9999998807907104f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 0.9999998807907104f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/bits_to_fraction(8388607,23) ","color":"gold"},{"text":"result: expected 0.9999998807907104 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/bits_to_fraction(8388607,23) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 1
data modify storage computer:alu n set value 1
scoreboard players set error stats 0
function computer:alu/float/bits_to_fraction
execute if data storage computer:alu {result: 0.5f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 0.5f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 0.5f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/bits_to_fraction(1,1) ","color":"gold"},{"text":"result: expected 0.5 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/bits_to_fraction(1,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 0
data modify storage computer:alu n set value 1
scoreboard players set error stats 0
function computer:alu/float/bits_to_fraction
execute if data storage computer:alu {result: 0.0f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 0.0f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 0.0f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/bits_to_fraction(0,1) ","color":"gold"},{"text":"result: expected 0.0 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/bits_to_fraction(0,1) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 8
data modify storage computer:alu n set value 4
scoreboard players set error stats 0
function computer:alu/float/bits_to_fraction
execute if data storage computer:alu {result: 0.5f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 0.5f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 0.5f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/bits_to_fraction(8,4) ","color":"gold"},{"text":"result: expected 0.5 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/bits_to_fraction(8,4) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 12
data modify storage computer:alu n set value 4
scoreboard players set error stats 0
function computer:alu/float/bits_to_fraction
execute if data storage computer:alu {result: 0.75f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 0.75f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 0.75f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/bits_to_fraction(12,4) ","color":"gold"},{"text":"result: expected 0.75 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/bits_to_fraction(12,4) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 15
data modify storage computer:alu n set value 4
scoreboard players set error stats 0
function computer:alu/float/bits_to_fraction
execute if data storage computer:alu {result: 0.9375f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 0.9375f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 0.9375f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/bits_to_fraction(15,4) ","color":"gold"},{"text":"result: expected 0.9375 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/bits_to_fraction(15,4) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 4781507
data modify storage computer:alu n set value 23
scoreboard players set error stats 0
function computer:alu/float/bits_to_fraction
execute if data storage computer:alu {result: 0.5700000524520874f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 0.5700000524520874f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 0.5700000524520874f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/bits_to_fraction(4781507,23) ","color":"gold"},{"text":"result: expected 0.5700000524520874 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/bits_to_fraction(4781507,23) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 838860
data modify storage computer:alu n set value 23
scoreboard players set error stats 0
function computer:alu/float/bits_to_fraction
execute if data storage computer:alu {result: 0.09999990463256836f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 0.09999990463256836f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 0.09999990463256836f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/bits_to_fraction(838860,23) ","color":"gold"},{"text":"result: expected 0.09999990463256836 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/bits_to_fraction(838860,23) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 2516582
data modify storage computer:alu n set value 23
scoreboard players set error stats 0
function computer:alu/float/bits_to_fraction
execute if data storage computer:alu {result: 0.2999999523162842f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 0.2999999523162842f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 0.2999999523162842f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/bits_to_fraction(2516582,23) ","color":"gold"},{"text":"result: expected 0.2999999523162842 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/bits_to_fraction(2516582,23) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

data modify storage computer:alu a set value 8387769
data modify storage computer:alu n set value 23
scoreboard players set error stats 0
function computer:alu/float/bits_to_fraction
execute if data storage computer:alu {result: 0.9998999834060669f} run scoreboard players add _ut_pass tests 1
execute unless data storage computer:alu {result: 0.9998999834060669f} run scoreboard players add _ut_fail tests 1
execute unless data storage computer:alu {result: 0.9998999834060669f} run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/bits_to_fraction(8387769,23) ","color":"gold"},{"text":"result: expected 0.9998999834060669 got ","color":"white"},{"storage":"computer:alu","nbt":"result","color":"red"}]
execute if data storage computer:alu stack[0] run scoreboard players add _ut_fail tests 1
execute if data storage computer:alu stack[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL ","bold":true,"color":"red"},{"text":"alu/float/bits_to_fraction(8387769,23) ","color":"gold"},{"text":"stack not empty after call","color":"red"}]

# Report results
execute if score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"PASS bits_to_fraction ","bold":true,"color":"green"},{"text":"(","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" checks)","color":"gold"}]
execute unless score _ut_fail tests matches 0 run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"FAIL bits_to_fraction ","bold":true,"color":"red"},{"text":"(","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" failures out of ","color":"gold"},{"score":{"name":"_ut_pass","objective":"tests"},"color":"green"},{"text":" + ","color":"gold"},{"score":{"name":"_ut_fail","objective":"tests"},"color":"red"},{"text":" checks)","color":"gold"}]
scoreboard players operation _ut_total_checks_pass tests += _ut_pass tests
scoreboard players operation _ut_total_checks_fail tests += _ut_fail tests
scoreboard players add _ut_total_pass tests 1
execute unless score _ut_fail tests matches 0 run scoreboard players add _ut_total_fail tests 1
execute unless score _ut_fail tests matches 0 run data modify storage computer:test ut_failed append value "bits_to_fraction"
